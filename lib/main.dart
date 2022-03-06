import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/src/database.dart';
import 'package:infinite_pagination/src/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginatedListView(),
    );
  }
}

class PaginatedListView extends ConsumerWidget {
  PaginatedListView({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        ref.read(itemsProvider.notifier).fetchNextBatch();
      }
    });
    return Scaffold(
      floatingActionButton: ScrollToTopButton(
        scrollController: scrollController,
      ),
      body: CustomScrollView(
        controller: scrollController,
        restorationId: "items List",
        slivers: const [
          SliverAppBar(
            centerTitle: true,
            pinned: true,
            title: Text('Infinite Pagination'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          ItemsList(),
          NoMoreItems(),
          OnGoingBottomWidget(),
        ],
      ),
    );
  }
}

class ScrollToTopButton extends StatelessWidget {
  const ScrollToTopButton({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        double scrollOffset = scrollController.offset;
        return scrollOffset > MediaQuery.of(context).size.height * 0.5
            ? FloatingActionButton(
                tooltip: "Scroll to top",
                child: const Icon(
                  Icons.arrow_upward,
                ),
                onPressed: () async {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              )
            : const SizedBox.shrink();
      },
    );
  }
}

class NoMoreItems extends ConsumerWidget {
  const NoMoreItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(itemsProvider);

    return SliverToBoxAdapter(
      child: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (items) {
            final nomoreItems = ref.read(itemsProvider.notifier).noMoreItems;
            return nomoreItems
                ? const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "No More Items Found!",
                      textAlign: TextAlign.center,
                    ),
                  )
                : const SizedBox.shrink();
          }),
    );
  }
}

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(itemsProvider);
      return state.when(
        data: (items) {
          return items.isEmpty
              ? SliverToBoxAdapter(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(itemsProvider.notifier).fetchFirstBatch();
                        },
                        icon: const Icon(Icons.replay),
                      ),
                      const Chip(
                        label: Text("No items Found!"),
                      ),
                    ],
                  ),
                )
              : ItemsListBuilder(
                  items: items,
                );
        },
        loading: () => const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator())),
        error: (e, stk) => SliverToBoxAdapter(
          child: Center(
            child: Column(
              children: const [
                Icon(Icons.info),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Something Went Wrong!",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        onGoingLoading: (items) {
          return ItemsListBuilder(
            items: items,
          );
        },
        onGoingError: (items, e, stk) {
          return ItemsListBuilder(
            items: items,
          );
        },
      );
    });
  }
}

class ItemsListBuilder extends StatelessWidget {
  const ItemsListBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            title: Text("Item ${index + 1}"),
          );
        },
        childCount: items.length,
      ),
    );
  }
}

class OnGoingBottomWidget extends StatelessWidget {
  const OnGoingBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(40),
      sliver: SliverToBoxAdapter(
        child: Consumer(builder: (context, ref, child) {
          final state = ref.watch(itemsProvider);
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            onGoingLoading: (items) =>
                const Center(child: CircularProgressIndicator()),
            onGoingError: (items, e, stk) => Center(
              child: Column(
                children: const [
                  Icon(Icons.info),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Something Went Wrong!",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
