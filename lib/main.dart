import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/providers.dart';

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
        ref.read(postsPaginatedStreamProvider.notifier).fetchNextPage();
      }
    });
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        restorationId: "posts List",
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
          PostsList(),
          PostsListBottomWidget(),
        ],
      ),
    );
  }
}

class PostsList extends StatelessWidget {
  const PostsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(postsPaginatedStreamProvider);
      return state.maybeWhen(
        orElse: () => const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        ),
        data: (posts) {
          return posts.isEmpty
              ? SliverToBoxAdapter(
                  child: Column(
                    children: const [
                      // IconButton(
                      //   onPressed: () {
                      //     ref
                      //         .read(postsPaginatedStreamProvider.notifier)
                      //         .fetchFirstPage(true);
                      //   },
                      //   icon: const Icon(Icons.replay),
                      // ),
                      // const Chip(
                      //   label: Text("No posts Found!"),
                      // ),
                    ],
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListTile(
                        title: Text("Item ${index + 1}"),
                      );
                    },
                    childCount: posts.length,
                  ),
                );
        },
        loading: (posts) => const SliverToBoxAdapter(
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
        onGoingLoading: (posts) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text("Item ${index + 1}"),
                );
              },
              childCount: posts.length,
            ),
          );
        },
        onGoingError: (posts, e, stk) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text("Item ${index + 1}"),
                );
              },
              childCount: posts.length,
            ),
          );
        },
      );
    });
  }
}

class PostsListBottomWidget extends StatelessWidget {
  const PostsListBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Consumer(builder: (context, ref, child) {
          final state = ref.watch(postsPaginatedStreamProvider);
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
