(function(g){var window=this;'use strict';var F6=function(a){g.V.call(this,{D:"div",K:"ytp-miniplayer-ui"});this.oe=!1;this.player=a;this.S(a,"minimized",this.dg);this.S(a,"onStateChange",this.NH)},G6=function(a){g.mN.call(this,a);
this.i=new F6(this.player);this.i.hide();g.ZM(this.player,this.i.element,4);a.Te()&&(this.load(),g.N(a.getRootNode(),"ytp-player-minimized",!0))};
g.v(F6,g.V);g.k=F6.prototype;
g.k.DF=function(){this.tooltip=new g.eR(this.player,this);g.H(this,this.tooltip);g.ZM(this.player,this.tooltip.element,4);this.tooltip.scale=.6;this.yc=new g.hO(this.player);g.H(this,this.yc);this.Ig=new g.V({D:"div",K:"ytp-miniplayer-scrim"});g.H(this,this.Ig);this.Ig.Aa(this.element);this.S(this.Ig.element,"click",this.jB);var a=new g.V({D:"button",Fa:["ytp-miniplayer-close-button","ytp-button"],V:{"aria-label":"Close"},U:[g.oK()]});g.H(this,a);a.Aa(this.Ig.element);this.S(a.element,"click",this.Ri);
a=new g.T1(this.player,this);g.H(this,a);a.Aa(this.Ig.element);this.bq=new g.V({D:"div",K:"ytp-miniplayer-controls"});g.H(this,this.bq);this.bq.Aa(this.Ig.element);this.S(this.bq.element,"click",this.jB);var b=new g.V({D:"div",K:"ytp-miniplayer-button-container"});g.H(this,b);b.Aa(this.bq.element);a=new g.V({D:"div",K:"ytp-miniplayer-play-button-container"});g.H(this,a);a.Aa(this.bq.element);var c=new g.V({D:"div",K:"ytp-miniplayer-button-container"});g.H(this,c);c.Aa(this.bq.element);this.BO=new g.GP(this.player,
this,!1);g.H(this,this.BO);this.BO.Aa(b.element);b=new g.EP(this.player,this);g.H(this,b);b.Aa(a.element);this.nextButton=new g.GP(this.player,this,!0);g.H(this,this.nextButton);this.nextButton.Aa(c.element);this.Lg=new g.RQ(this.player,this);g.H(this,this.Lg);this.Lg.Aa(this.Ig.element);this.Jc=new g.PP(this.player,this);g.H(this,this.Jc);g.ZM(this.player,this.Jc.element,4);this.YA=new g.V({D:"div",K:"ytp-miniplayer-buttons"});g.H(this,this.YA);g.ZM(this.player,this.YA.element,4);a=new g.V({D:"button",
Fa:["ytp-miniplayer-close-button","ytp-button"],V:{"aria-label":"Close"},U:[g.oK()]});g.H(this,a);a.Aa(this.YA.element);this.S(a.element,"click",this.Ri);a=new g.V({D:"button",Fa:["ytp-miniplayer-replay-button","ytp-button"],V:{"aria-label":"Close"},U:[g.uK()]});g.H(this,a);a.Aa(this.YA.element);this.S(a.element,"click",this.gX);this.S(this.player,"presentingplayerstatechange",this.Rc);this.S(this.player,"appresize",this.xb);this.S(this.player,"fullscreentoggled",this.xb);this.xb()};
g.k.show=function(){this.Rd=new g.eq(this.Mq,null,this);this.Rd.start();this.oe||(this.DF(),this.oe=!0);0!==this.player.getPlayerState()&&g.V.prototype.show.call(this);this.Jc.show();this.player.unloadModule("annotations_module")};
g.k.hide=function(){this.Rd&&(this.Rd.dispose(),this.Rd=void 0);g.V.prototype.hide.call(this);this.player.Te()||(this.oe&&this.Jc.hide(),this.player.loadModule("annotations_module"))};
g.k.ra=function(){this.Rd&&(this.Rd.dispose(),this.Rd=void 0);g.V.prototype.ra.call(this)};
g.k.Ri=function(){this.player.stopVideo();this.player.Ma("onCloseMiniplayer")};
g.k.gX=function(){this.player.playVideo()};
g.k.jB=function(a){if(a.target===this.Ig.element||a.target===this.bq.element)this.player.T().L("kevlar_miniplayer_play_pause_on_scrim")?g.cJ(this.player.yb())?this.player.pauseVideo():this.player.playVideo():this.player.Ma("onExpandMiniplayer")};
g.k.dg=function(){g.N(this.player.getRootNode(),"ytp-player-minimized",this.player.Te())};
g.k.Bd=function(){this.Jc.Rb();this.Lg.Rb()};
g.k.Mq=function(){this.Bd();this.Rd&&this.Rd.start()};
g.k.Rc=function(a){g.U(a.state,32)&&this.tooltip.hide()};
g.k.xb=function(){g.cQ(this.Jc,0,this.player.eb().getPlayerSize().width,!1);g.QP(this.Jc)};
g.k.NH=function(a){this.player.Te()&&(0===a?this.hide():this.show())};
g.k.jc=function(){return this.tooltip};
g.k.Ze=function(){return!1};
g.k.Bf=function(){return!1};
g.k.Ji=function(){return!1};
g.k.Yx=function(){};
g.k.Mn=function(){};
g.k.Os=function(){};
g.k.oo=function(){return null};
g.k.Ew=function(){return null};
g.k.Fj=function(){return new g.Tm(0,0,0,0)};
g.k.handleGlobalKeyDown=function(){return!1};
g.k.handleGlobalKeyUp=function(){return!1};
g.k.Tq=function(a,b,c,d,e){var f=0,h=d=0,l=g.jn(a);if(b){c=g.mq(b,"ytp-prev-button")||g.mq(b,"ytp-next-button");var m=g.mq(b,"ytp-play-button"),n=g.mq(b,"ytp-miniplayer-expand-watch-page-button");c?f=h=12:m?(b=g.gn(b,this.element),h=b.x,f=b.y-12):n&&(h=g.mq(b,"ytp-miniplayer-button-top-left"),f=g.gn(b,this.element),b=g.jn(b),h?(h=8,f=f.y+40):(h=f.x-l.width+b.width,f=f.y-20))}else h=c-l.width/2,d=25+(e||0);b=this.player.eb().getPlayerSize().width;e=f+(e||0);l=g.ch(h,0,b-l.width);e?(a.style.top=e+"px",
a.style.bottom=""):(a.style.top="",a.style.bottom=d+"px");a.style.left=l+"px"};
g.k.showControls=function(){};
g.k.Fl=function(){};
g.k.Vk=function(){return!1};g.v(G6,g.mN);G6.prototype.create=function(){};
G6.prototype.Wh=function(){return!1};
G6.prototype.load=function(){this.player.hideControls();this.i.show()};
G6.prototype.unload=function(){this.player.showControls();this.i.hide()};g.lN("miniplayer",G6);})(_yt_player);
