.class public final Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "VideoDetailFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;
.implements Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;
.implements Lorg/schabi/newpipe/player/event/OnKeyDownListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/BackPressable;",
        "Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;",
        "Lorg/schabi/newpipe/player/event/OnKeyDownListener;"
    }
.end annotation


# static fields
.field private static stack:Ljava/util/LinkedList;


# instance fields
.field protected autoPlayEnabled:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field bottomSheetState:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field private currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private lastAppBarVerticalOffset:I

.field lastStableBottomSheetState:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected originalOrientation:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

.field protected playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private player:Lorg/schabi/newpipe/player/Player;

.field private final playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

.field private playerService:Lorg/schabi/newpipe/player/PlayerService;

.field private positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private selectedTabTag:Ljava/lang/String;

.field protected serviceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private settingsContentObserver:Landroid/database/ContentObserver;

.field private showComments:Z

.field private showDescription:Z

.field private showRelatedItems:Z

.field final tabContentDescriptions:Ljava/util/List;

.field final tabIcons:Ljava/util/List;

.field private tabSettingsChanged:Z

.field protected title:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected url:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$118l9TugKR0hJKqer3EZVpA6qZ4(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 2183
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic $r8$lambda$1JGHSqAfr6IAz_-SZdyS7bRwKRc(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$23(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5AQbHchm8X0bJp6WBb8YPzJVZL4(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$20(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5OK_BHAs7-B5pHu0zyPfvlikfoI(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$initListeners$28(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$85W7GPlBhJXaE_LQsQgTn0Kto1s(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ncNPLvH8gk2bM52xoCfUaNbU0M(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$showExternalVideoPlaybackDialog$51(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9am9v5Le6s_owK3m6KxPf2JNKBY(Ljava/lang/Long;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$9ehsQhsyfqtA5obiUutC9oMORrM(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$22(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A2Vlv_FwUemct_XJukDQHLuHFOM(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$initListeners$29(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AneZWDrT3MNGrhtOnasOk439am4(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 537
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$B1o78jlMjvfB4WHlvB8RJh_Nk8w(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$onMoreOptionsLongClicked$49(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B8NO_9_iu95pcRAAQ1YwCj6dtyQ(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$7(Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIcyuFSMO4n3CZgnWpC3DfxUY7I(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2150
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$BsumPZ8NjeXg2B8-IcnTGDErTvw(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$runWorker$33(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5bNmFgwBkcJDBLzDRj-oh1twF0(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openMainPlayer()V

    return-void
.end method

.method public static synthetic $r8$lambda$FvYE4PUovRgxvIzfYq-2B-leEkc(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$showExternalAudioPlaybackDialog$57(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyoVI2jqP7_qr6ZigfolfzYXrRU(IILorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 1

    .line 1361
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 1362
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isFullscreen()Z

    move-result p2

    if-eqz p2, :cond_0

    move p1, p0

    .line 1361
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HHdVgAtYaA716YugOUR3kr9XNYc(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$tryAddVideoPlayerView$41(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hrl2S7sTTrOKrpNkjkyiaMOPg-s(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kt5waRg81Zq4Z12MJ0slcMSvymE(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$initListeners$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$LvWlTspahkcXWgqcB_tkyLwoGu0(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$checkUpdateProgressInfo$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$N-EeuJAv2EUW2bImpg97jScL60Y(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 1

    .line 1052
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$NjGtHJUUyBdrJBRO4JaW0L2YWmk(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setErrorImage$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$NpU8CH-L060-AErOqewg9JGJjmk(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$runWorker$32(Landroid/content/SharedPreferences;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtyQSEpHJlFsZ7fTImT-i_P6c2s(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$startOnExternalPlayer$40(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5WDLhcO95mQ48ihoLQ76cOHJAw(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrR-_Z_xXKWNUnaGAmrKS8hC2R8(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)Landroid/view/View;
    .locals 0

    .line 2491
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SI6orsRaQDH_Uqqz-6Xvxd9-2s4(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sqw976G2qzihqg_YRpp18UFpt08(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setupBottomPlayer$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$Stb3nOeBw4aedMLTw-s1F4LoubM(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TbyXJR2NOpWqEJtW9yJzNpCAwgI(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$showExternalVideoPlaybackDialog$53(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uo0n_1uQvbGJQIW0mjV9JBt62s0(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UqICiCq7MOAQAMbxsAyH2MLh-z8(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$showExternalAudioPlaybackDialog$56(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YWYFg75fIgvBWpq1oLA1-u4GTjQ(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1197
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaD0k5BIrIvuigdv0_emR0aWWFQ(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_VZutXQLT9wEP4bsnbX7qwo2y1s(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/function/Consumer;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$makeOnLongClickListener$26(Ljava/util/function/Consumer;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_xXWmeXsxoX1QManTD83KhH8keI(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 2223
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ax5ANGi1C8isAKCPnmTz-Im8SPI(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$makeOnClickListener$19(Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmWkEVsNwHTN8_SQIbGX15ccNjA(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsLEJWFZ_IsuQoVgd14TQ6hmhDQ(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOQwCotkWDOn4r1Aahmw1jOzKZk(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$24(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOxvXoN8enirCq1WJTGTBbm5MN0(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$11(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcImauCh3kyNymJpuhA-PLr2fyA(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Ljava/lang/Boolean;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gKfpJdZbESNBZ1bvqCBm7jQelo8(Lorg/schabi/newpipe/player/Player;)Lj$/util/Optional;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p0

    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gYQhD0HA_uqLuvuN9nN9K4rlRHY(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$25(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hK4cZMCPNcXsUOHm5iKIxWEak9s(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDvL3h3m1trJCIlVhx-GF6qIBjw(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$10(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKNrvYcIA-nrD974fwyPFRIX5Pw(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$openNormalBackgroundPlayer$37(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lWuXH-ICFbC_nHc5WkaR3M4VfDI(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$tryAddVideoPlayerView$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$nJYDetFgnwbx7S-5Me_FqkiByo4(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$updateTabLayoutVisibility$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$o1dNpAHvUCcPsVGls0TFLuCORtE(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$3(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbNRaI4zr8cAp96FBEswXI99hlI(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$openPopupPlayer$36(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6KLP2R32UIE4gwIEfFgoxT_5wk(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnLongClickListeners$21(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-epJcAmuhKWYWVQUY-u82mK11g(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBxiO7fo0Bf3r2d91stgmGtkxOM(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$12(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u4YSLRn_Ph3npDdgDR4M_-z7B3Y(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$showExternalAudioPlaybackDialog$54(Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v3TvrVyHnJQJJQlPYTaWmkAQymc(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$prepareAndHandleInfoIfNeededAfterDelay$31(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vAAKYawAAHYS3HJaK3NPWYr_fWY(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$vHPVU79jWjgW-Guc5nlX20StQOo(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$setOnClickListeners$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjOrXr2njfrUQNfLzfQFPeXrqXw(ILorg/schabi/newpipe/player/ui/VideoPlayerUi;)Ljava/lang/Boolean;
    .locals 0

    .line 697
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onKeyDown(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xW76oZjQrp0sMB9LlKfo9ugYu1g(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$checkUpdateProgressInfo$45(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ysaX1ZYn81qo3EeHvqHLNHLNen8(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lambda$onQueueUpdate$48(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/Player;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerHolder(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/helper/PlayerHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreDrawListener(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanUp(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->cleanUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misFullscreen(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmanageSpaceAtTheBottom(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->moveFocusToMainFragment(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHeightThumbnail(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILandroid/util/DisplayMetrics;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail(ILandroid/util/DisplayMetrics;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOverlayElementsClickable(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayElementsClickable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayLook(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSystemUi(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBottomSheetState(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 691
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    const v0, 0x7fffffff

    .line 177
    iput v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    .line 179
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 195
    const-string v1, ""

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v2, 0x3

    .line 203
    iput v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 205
    iput v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    const/4 v2, 0x1

    .line 207
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 209
    iput v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->originalOrientation:I

    .line 212
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 215
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 217
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 236
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 1306
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$100(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$200(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$300(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$400(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method private accommodateForTvAndDesktopMode()V
    .locals 2

    .line 2077
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06035a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 2081
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlaylistAppend:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2082
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2083
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2084
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2085
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsShare:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2086
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsOpenInBrowser:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2087
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2089
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private checkLandscape()V
    .locals 2

    .line 2097
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2098
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2099
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    .line 2102
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda63;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2104
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2105
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->play()V

    :cond_3
    return-void
.end method

.method private checkUpdateProgressInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 1697
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1698
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 1700
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1701
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1705
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    .line 1706
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->loadStreamState(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 1707
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 1708
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Maybe;->onErrorComplete()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 1709
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 1710
    invoke-virtual {v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private cleanUp()V
    .locals 3

    .line 2245
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2246
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2247
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 2249
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    const/4 v0, 0x0

    .line 2250
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 2251
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2252
    invoke-direct {p0, v2, v2, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private displayBothUploaderAndSubChannel(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 8

    .line 1645
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1650
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f1204c0

    .line 1652
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1651
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1656
    const-string v3, " \u2022 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    :cond_1
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1659
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1658
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1663
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1667
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const-string v2, "PICASSO_VIDEO_DETAILS_TAG"

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1671
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1672
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1674
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1675
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private displayUploaderAsSubChannel(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 7

    .line 1626
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1628
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1630
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/16 v0, 0x8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 1631
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1632
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1631
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1633
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1635
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1638
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const-string v2, "PICASSO_VIDEO_DETAILS_TAG"

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1639
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1640
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private findQueueInStack(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/fragments/detail/StackItem;
    .locals 3

    .line 2120
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2121
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 2123
    invoke-virtual {v1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;
    .locals 1

    .line 302
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;-><init>()V

    .line 303
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-object v0
.end method

.method public static getInstanceInCollapsedState()Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;
    .locals 2

    .line 308
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;-><init>()V

    const/4 v1, 0x4

    .line 309
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    return-object v0
.end method

.method private hideAgeRestrictedContent()V
    .locals 3

    const v0, 0x7f120413

    .line 1407
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f1203c3

    .line 1406
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showTextError(Ljava/lang/String;)V

    return-void
.end method

.method private hideMainPlayerOnLoadingNewStream()V
    .locals 2

    .line 1189
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->getRoot()Lj$/util/Optional;

    move-result-object v0

    .line 1190
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->removeVideoPlayerView()V

    .line 1195
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1196
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/PlayerService;->stopForImmediateReusing()V

    .line 1197
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 1199
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideSystemUi()V
    .locals 3

    .line 1981
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "hideSystemUi() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_1

    return-void

    .line 1990
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 1991
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 2002
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v1, 0x1706

    goto :goto_0

    :cond_3
    const/16 v1, 0x1702

    .line 2006
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-nez v0, :cond_4

    .line 2008
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2009
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2010
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2012
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private initTabs()V
    .locals 4

    .line 890
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    .line 893
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->clearAllItems()V

    .line 894
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 895
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 897
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->shouldShowComments()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 899
    invoke-static {v1, v2, v3}, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    move-result-object v1

    const-string v2, "COMMENTS"

    .line 898
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    const v1, 0x7f080100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    const v1, 0x7f1200a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    if-nez v0, :cond_2

    .line 906
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    move-result-object v2

    const-string v3, "NEXT VIDEO"

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    const v2, 0x7f0800e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    const v2, 0x7f1203ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_2
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    if-eqz v0, :cond_3

    .line 913
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    move-result-object v1

    const-string v2, "DESCRIPTION TAB"

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    const v1, 0x7f080104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    const v1, 0x7f1200ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 919
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    move-result-object v1

    const-string v2, "EMPTY TAB"

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 921
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 923
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 924
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemPositionByTitle(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 926
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 928
    :cond_5
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabIconsAndContentDescriptions()V

    .line 931
    :cond_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    return-void
.end method

.method private isAutoplayEnabled()Z
    .locals 2

    .line 1253
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    if-eqz v0, :cond_1

    .line 1254
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isExternalPlayerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isExternalPlayerEnabled()Z
    .locals 3

    .line 1246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1204b5

    .line 1247
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isFullscreen()Z
    .locals 2

    .line 2025
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 2026
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkUpdateProgressInfo$45(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 4

    .line 1712
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->getProgressMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    .line 1711
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updatePlaybackProgress(JJ)V

    return-void
.end method

.method private synthetic lambda$checkUpdateProgressInfo$47()V
    .locals 2

    .line 1716
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initListeners$27()V
    .locals 8

    .line 659
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->touchAppendDetail:Lorg/schabi/newpipe/views/NewPipeTextView;

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v3, 0x5dc

    invoke-static/range {v1 .. v7}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;J)V

    return-void
.end method

.method private synthetic lambda$initListeners$28(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 655
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 656
    invoke-static {p1}, Lorg/schabi/newpipe/util/PlayButtonHelper;->shouldShowHoldToAppendTip(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 658
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->touchAppendDetail:Lorg/schabi/newpipe/views/NewPipeTextView;

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v7, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v7}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$initListeners$29(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 668
    iget p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    if-eq p2, p1, :cond_0

    .line 669
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    .line 671
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeOnClickListener$19(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    .line 550
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz p2, :cond_0

    .line 551
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeOnLongClickListener$26(Ljava/util/function/Consumer;Landroid/view/View;)Z
    .locals 0

    .line 585
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez p2, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f120421

    .line 181
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showComments:Z

    .line 183
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    return-void

    :cond_0
    const v0, 0x7f120441

    .line 184
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 186
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    return-void

    :cond_1
    const v0, 0x7f120427

    .line 187
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    .line 189
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$onMoreOptionsLongClicked$49(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1948
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1949
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$onQueueUpdate$48(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 0

    .line 1769
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    return-void
.end method

.method private synthetic lambda$openNormalBackgroundPlayer$37(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    .line 1155
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    .line 1156
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$openPopupPlayer$36(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    .line 1097
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    .line 1098
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$prepareAndHandleInfoIfNeededAfterDelay$31(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V
    .locals 2

    .line 795
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->prepareAndHandleInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V

    return-void
.end method

.method private synthetic lambda$runWorker$32(Landroid/content/SharedPreferences;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 859
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 860
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideMainPlayerOnLoadingNewStream()V

    .line 861
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120411

    .line 862
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 863
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideAgeRestrictedContent()V

    return-void

    .line 865
    :cond_0
    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 866
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showContent()V

    if-eqz p2, :cond_3

    .line 868
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez p1, :cond_1

    .line 869
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 871
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/fragments/detail/StackItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 872
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 873
    :cond_2
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/StackItem;

    iget p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-direct {p2, p3, v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/StackItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 877
    :cond_3
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 878
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$runWorker$33(Ljava/lang/Throwable;)V
    .locals 6

    .line 881
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 882
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "no url"

    :cond_0
    move-object v3, v1

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$setErrorImage$44()V
    .locals 4

    .line 1388
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$10(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 515
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$11(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$12(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->playWithKore(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$13(Landroid/view/View;)V
    .locals 1

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->onCrashThePlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/Player;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$14(Landroid/view/View;)V
    .locals 1

    .line 526
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x3

    .line 527
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$15(Landroid/view/View;)V
    .locals 1

    .line 531
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x5

    .line 532
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$16(Landroid/view/View;)V
    .locals 0

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openPlayQueue(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$18(Landroid/view/View;)V
    .locals 3

    .line 535
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerIsNotStopped()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 536
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 537
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p1

    const-class v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda53;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda53;-><init>()V

    invoke-virtual {p1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 538
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    goto :goto_0

    .line 540
    :cond_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 541
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    .line 544
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayPlayPauseImage(Z)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$2(Landroid/view/View;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleTitleAndSecondaryControls()V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$3(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 468
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    sget-boolean p1, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t open sub-channel because we got no channel URL"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 477
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 483
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 486
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 489
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openBackgroundPlayer(Z)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 490
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openPopupPlayer(Z)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$7(Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 2

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01a1

    .line 494
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 497
    instance-of v1, v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    if-eqz v1, :cond_0

    .line 498
    check-cast v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    goto :goto_0

    .line 499
    :cond_0
    instance-of v1, v0, Lorg/schabi/newpipe/fragments/MainFragment;

    if-eqz v1, :cond_1

    .line 500
    check-cast v0, Lorg/schabi/newpipe/fragments/MainFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/MainFragment;->commitPlaylistTabs()V

    .line 503
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 504
    invoke-static {v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda46;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 503
    invoke-static {v1, p1, v2}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$setOnClickListeners$9(Landroid/view/View;)V
    .locals 1

    .line 509
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/16 v0, 0x30a

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openDownloadDialog()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$20(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 559
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$21(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 561
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t open parent channel because we got no parent channel URL"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$22(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    const/4 p1, 0x1

    .line 569
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openBackgroundPlayer(Z)V

    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$23(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    const/4 p1, 0x1

    .line 572
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openPopupPlayer(Z)V

    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$24(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 575
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openDownloads(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$setOnLongClickListeners$25(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 578
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupBottomPlayer$58()V
    .locals 2

    .line 2414
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2415
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showExternalAudioPlaybackDialog$54(Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;
    .locals 1

    .line 2222
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$showExternalAudioPlaybackDialog$56(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showExternalAudioPlaybackDialog$57(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2232
    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 2233
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p2

    .line 2234
    iget-object p3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-direct {p0, p3, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void
.end method

.method private synthetic lambda$showExternalVideoPlaybackDialog$51(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showExternalVideoPlaybackDialog$53(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2189
    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p2

    .line 2196
    iget-object p3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2197
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 2196
    invoke-direct {p0, p3, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void
.end method

.method private synthetic lambda$startOnExternalPlayer$40(Ljava/lang/Throwable;)V
    .locals 3

    .line 1235
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Got an error when modifying history on viewed"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$tryAddVideoPlayerView$41(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 2

    .line 1279
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->removeViewFromParent()V

    .line 1282
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1283
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupVideoSurfaceIfNeeded()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryAddVideoPlayerView$42()V
    .locals 2

    .line 1270
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1275
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    .line 1277
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda67;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateTabLayoutVisibility$34()V
    .locals 4

    .line 998
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1000
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1001
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1003
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->getWindowHeight(Landroid/view/WindowManager;)I

    move-result v0

    .line 1004
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 1007
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42400000    # 48.0f

    .line 1006
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 1011
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    .line 1012
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1011
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1013
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private makeDefaultHeightForVideoPlaceholder()V
    .locals 2

    .line 1298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1303
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 549
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda45;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 584
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda47;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private manageSpaceAtTheBottom(Z)V
    .locals 4

    .line 2300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2308
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    .line 2311
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2312
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 2313
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 2311
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private moveFocusToMainFragment(Z)V
    .locals 4

    .line 2266
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 2267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a03f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const/high16 v2, 0x60000

    const/high16 v3, 0x40000

    if-eqz p1, :cond_0

    .line 2273
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2274
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2279
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2280
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 2283
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2284
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2287
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2288
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private openBackgroundPlayer(Z)V
    .locals 3

    .line 1060
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1061
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v2, 0x7f1204b3

    .line 1062
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1064
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 1066
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    :cond_0
    if-eqz v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showExternalAudioPlaybackDialog()V

    return-void

    .line 1074
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openNormalBackgroundPlayer(Z)V

    return-void
.end method

.method private openChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 595
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 598
    const-string p2, "Opening channel fragment"

    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private openMainPlayer()V
    .locals 4

    .line 1161
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1169
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    .line 1170
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    .line 1172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1173
    const-class v2, Lorg/schabi/newpipe/player/PlayerService;

    sget-object v3, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 1174
    invoke-static {v1, v2, v0, v3}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "play_when_ready"

    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 1176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "resume_playback"

    const/4 v2, 0x1

    .line 1177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private openNormalBackgroundPlayer(Z)V
    .locals 2

    .line 1147
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 1151
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1153
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    return-void

    .line 1155
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;

    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda52;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openPopupPlayer(Z)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/PermissionHelper;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 1091
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 1093
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 1095
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    return-void

    .line 1097
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playerIsNotStopped()Z
    .locals 1

    .line 2030
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareAndHandleInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V
    .locals 3

    .line 807
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAndHandleInfo() called with: info = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], scrollToTop = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showLoading()V

    .line 813
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    if-eqz p2, :cond_1

    .line 816
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->scrollToTop()V

    .line 818
    :cond_1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 819
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showContent()V

    return-void
.end method

.method private prepareAndHandleInfoIfNeededAfterDelay(Lorg/schabi/newpipe/extractor/stream/StreamInfo;ZJ)V
    .locals 2

    .line 794
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeVideoPlayerView()V
    .locals 2

    .line 1290
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeDefaultHeightForVideoPlaceholder()V

    .line 1292
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V
    .locals 2

    .line 2132
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2135
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isClearingQueueConfirmationRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2136
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerIsNotStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2138
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2139
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showClearingQueueConfirmation(Ljava/lang/Runnable;)V

    return-void

    .line 2141
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private restoreDefaultBrightness()V
    .locals 3

    .line 2034
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2035
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    .line 2041
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2042
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private restoreDefaultOrientation()V
    .locals 2

    .line 1447
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 1455
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1456
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method private runWorker(ZZ)V
    .locals 3

    .line 854
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 855
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 856
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 857
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;Z)V

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 858
    invoke-virtual {p1, v1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private setErrorImage(I)V
    .locals 8

    .line 1381
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 1386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1385
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1387
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v7, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v7}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHeightThumbnail()V
    .locals 4

    .line 1331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1332
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1333
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1335
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1336
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 1338
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail(ILandroid/util/DisplayMetrics;)V

    return-void

    .line 1343
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 1347
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3fe38e39

    :goto_2
    div-float/2addr v1, v2

    goto :goto_3

    .line 1348
    :cond_4
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    :goto_3
    float-to-int v1, v1

    .line 1349
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail(ILandroid/util/DisplayMetrics;)V

    return-void
.end method

.method private setHeightThumbnail(ILandroid/util/DisplayMetrics;)V
    .locals 3

    .line 1354
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1358
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1360
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda18;-><init>(II)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda29;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderRootLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda35;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda36;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda37;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda38;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlaylistAppend:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda39;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda40;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsShare:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda41;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsOpenInBrowser:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda42;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda43;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsCrashThePlayer:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda30;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda31;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 528
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda33;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnLongClickListeners()V
    .locals 2

    .line 557
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 560
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderRootLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 568
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda23;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 571
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda24;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 574
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda26;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->makeOnLongClickListener(Ljava/util/function/Consumer;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 580
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setOverlayElementsClickable(Z)V
    .locals 1

    .line 2465
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2466
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2467
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2468
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2469
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2470
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2471
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2472
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private setOverlayLook(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2457
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    const p3, 0x3f666666    # 0.9f

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2459
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p3, p3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 2460
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    mul-float p3, p3, v1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 2459
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 2461
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setOverlayPlayPauseImage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f080132

    goto :goto_0

    :cond_0
    const p1, 0x7f08013b

    .line 2446
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setupBottomPlayer()V
    .locals 5

    .line 2318
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2319
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2320
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 2322
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v2, 0x7f0a01a2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2323
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2324
    iget v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 2325
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 2327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2328
    iget v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    .line 2329
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    .line 2330
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 2331
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2332
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2334
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2335
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayElementsClickable(Z)V

    .line 2339
    :cond_1
    :goto_0
    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;

    invoke-direct {v2, p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 2410
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 2413
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method private setupBrightness()V
    .locals 4

    .line 2046
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2050
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2051
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 2056
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getActionForRightGestureSide(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120068

    .line 2057
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2058
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getActionForLeftGestureSide(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2063
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getScreenBrightness(Landroid/content/Context;)F

    move-result v1

    .line 2064
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    :goto_0
    return-void

    .line 2067
    :cond_3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2068
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 2053
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 4

    .line 1411
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1433
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1434
    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1435
    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1436
    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private setupFromHistoryItem(Lorg/schabi/newpipe/fragments/detail/StackItem;)V
    .locals 5

    const/4 v0, 0x0

    .line 739
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    .line 740
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideMainPlayerOnLoadingNewStream()V

    .line 742
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v4

    .line 742
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 744
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    .line 747
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 751
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    .line 753
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 755
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 755
    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    if-eqz p1, :cond_0

    .line 1205
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-object p1

    .line 1208
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz p1, :cond_2

    .line 1210
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 1211
    :cond_2
    :goto_0
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-object p1
.end method

.method private shouldShowComments()Z
    .locals 3

    const/4 v0, 0x0

    .line 975
    :try_start_0
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showComments:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v1

    .line 976
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getMediaCapabilities()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 978
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private showClearingQueueConfirmation(Ljava/lang/Runnable;)V
    .locals 3

    .line 2146
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12009c

    .line 2147
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 2148
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda51;-><init>(Ljava/lang/Runnable;)V

    const p1, 0x7f120332

    .line 2149
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2153
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showContent()V
    .locals 2

    .line 1367
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailContentRootHiding:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showExternalAudioPlaybackDialog()V
    .locals 6

    .line 2204
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_0

    return-void

    .line 2209
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    .line 2208
    invoke-static {v0}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2211
    invoke-static {v1, v0}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2214
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f1202fd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2215
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2216
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 2217
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-direct {p0, v1, v3, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void

    .line 2219
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2220
    invoke-static {v1, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 2221
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda59;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 2222
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda60;

    invoke-direct {v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda60;-><init>()V

    .line 2223
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 2225
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1203e9

    .line 2226
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda61;

    invoke-direct {v4, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda61;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    const v5, 0x7f120335

    .line 2227
    invoke-virtual {v3, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 2229
    invoke-virtual {v3, v2, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120070

    .line 2230
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda62;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/List;)V

    const v0, 0x7f120332

    .line 2231
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2236
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showExternalVideoPlaybackDialog()V
    .locals 7

    .line 2157
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_0

    return-void

    .line 2161
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203eb

    .line 2162
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2163
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    const v2, 0x7f120335

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2166
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2169
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2170
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 2167
    invoke-static {v1, v2, v3, v4, v4}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 2175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const v3, 0x7f120332

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const v1, 0x7f12030d

    .line 2176
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2177
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 2180
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2181
    invoke-static {v2, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result v2

    .line 2182
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda55;

    invoke-direct {v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda55;-><init>()V

    .line 2183
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda56;

    invoke-direct {v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda56;-><init>()V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    .line 2185
    invoke-virtual {v0, v5, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120070

    .line 2187
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2188
    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda57;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Ljava/util/List;)V

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2200
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showSystemUi()V
    .locals 4

    .line 1961
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "showSystemUi() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_1

    return-void

    .line 1970
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 1971
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1974
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1975
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1976
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010433

    .line 1976
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveColorFromAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private startLoading(ZZ)V
    .locals 1

    .line 842
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 844
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 846
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 850
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->runWorker(ZZ)V

    return-void
.end method

.method private startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 2

    .line 1228
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1229
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-static {p1, v0, v1, p3}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 1231
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    .line 1232
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->onViewed(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Maybe;->onErrorComplete()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda65;

    invoke-direct {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda65;-><init>()V

    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda66;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 1233
    invoke-virtual {p1, p2, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 1232
    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private toggleFullscreenIfInFullscreenMode()V
    .locals 2

    .line 1050
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private toggleTitleAndSecondaryControls()V
    .locals 6

    .line 603
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    .line 604
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 605
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    const/16 v4, 0xb4

    invoke-static {v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V

    .line 607
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 610
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V

    .line 612
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    return-void
.end method

.method private tryAddVideoPlayerView()V
    .locals 2

    .line 1261
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    .line 1269
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda58;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateBottomSheetState(I)V
    .locals 1

    .line 2495
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2498
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    :cond_0
    return-void
.end method

.method private updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 2435
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayTitleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2438
    invoke-static {p3}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadDetailsThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const-string p2, "PICASSO_VIDEO_DETAILS_TAG"

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 2439
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method private updateOverlayPlayQueueButtonVisibility()V
    .locals 3

    .line 2421
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2423
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2424
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2425
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-eqz v2, :cond_3

    .line 2427
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updatePlaybackProgress(JJ)V
    .locals 1

    .line 1722
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1725
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-int p2, p1

    .line 1726
    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p3

    long-to-int p1, p3

    .line 1729
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p3, p3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1731
    iget-object p4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p4, p4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p4, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p1, 0x2

    if-le p3, p1, :cond_1

    .line 1733
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    goto :goto_0

    .line 1735
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    int-to-long p1, p2

    .line 1737
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p1

    .line 1738
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 1739
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1742
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/4 p2, 0x1

    const-wide/16 p3, 0x64

    invoke-static {p1, p2, p3, p4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1743
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p2, p3, p4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTabIconsAndContentDescriptions()V
    .locals 3

    const/4 v0, 0x0

    .line 941
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 942
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 944
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 945
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 4

    .line 951
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    const-string v2, "NEXT VIDEO"

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->updateItem(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 955
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0a0326

    .line 956
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 958
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 962
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    const-string p1, "DESCRIPTION TAB"

    invoke-virtual {v0, p1, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->updateItem(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 966
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 968
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 969
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 970
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabIconsAndContentDescriptions()V

    return-void
.end method

.method private wasCleared()Z
    .locals 1

    .line 2114
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 4

    .line 766
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->wasCleared()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->prepareAndLoadInfo()V

    return-void

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    .line 773
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->prepareAndHandleInfoIfNeededAfterDelay(Lorg/schabi/newpipe/extractor/stream/StreamInfo;ZJ)V

    return-void
.end method

.method public getRoot()Lj$/util/Optional;
    .locals 2

    .line 2489
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda16;-><init>()V

    .line 2490
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda17;-><init>()V

    .line 2491
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public handleError()V
    .locals 2

    .line 1393
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    const v0, 0x7f0801a7

    .line 1394
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setErrorImage(I)V

    .line 1396
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1397
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 10

    .line 1503
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 1505
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1506
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 1508
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1510
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1511
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1515
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->displayBothUploaderAndSubChannel(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    goto :goto_0

    .line 1518
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->displayUploaderAsSubChannel(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1521
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 1522
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v2

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1523
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1524
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v8

    .line 1523
    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->listeningCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1525
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v2

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1526
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1527
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->localizeWatchingCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1526
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1529
    :cond_2
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1530
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->localizeViewCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1529
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1534
    :cond_3
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    :goto_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_4

    .line 1538
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1539
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDisabledView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1545
    :cond_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_5

    .line 1546
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1547
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1546
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1551
    :cond_5
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1555
    :goto_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    .line 1556
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 1557
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    move-result-wide v8

    .line 1556
    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1559
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1561
    :cond_6
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1564
    :goto_4
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDisabledView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    :goto_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v4

    const-wide/16 v8, 0x64

    cmp-long v2, v4, v6

    if-lez v2, :cond_7

    .line 1568
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v5, 0x7f06007f

    .line 1570
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 1569
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1571
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {v2, v3, v8, v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    goto :goto_6

    .line 1572
    :cond_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v2

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v2, v4, :cond_8

    .line 1573
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v4, 0x7f120126

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1574
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v5, 0x7f0600a8

    .line 1575
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 1574
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1576
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {v2, v3, v8, v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    goto :goto_6

    .line 1578
    :cond_8
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    :goto_6
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1582
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    .line 1583
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1584
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->checkUpdateProgressInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1587
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadDetailsThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const-string v4, "PICASSO_VIDEO_DETAILS_TAG"

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v4, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 1588
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1589
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getMetaInfo()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v5, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailMetaInfoSeparator:Landroid/view/View;

    iget-object v6, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {v2, v5, v4, v6}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 1592
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1593
    :cond_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1596
    :cond_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1599
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 1600
    instance-of v5, v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz v5, :cond_b

    const-string v5, "Fan pages are not supported"

    .line 1601
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1602
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1606
    :cond_c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1607
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Some info not extracted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 1607
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 1612
    :cond_d
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1613
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x8

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    .line 1612
    :goto_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1614
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1615
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x8

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    .line 1614
    :goto_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 1620
    :goto_a
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_12

    const v0, 0x7f080113

    goto :goto_c

    :cond_12
    const v0, 0x7f08013c

    :goto_c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public hideSystemUiIfNeeded()V
    .locals 2

    .line 2018
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2019
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2020
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUi()V

    :cond_0
    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 649
    invoke-super {p0}, Lorg/schabi/newpipe/BaseFragment;->initListeners()V

    .line 651
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOnClickListeners()V

    .line 652
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOnLongClickListeners()V

    .line 654
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 663
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 664
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 666
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 675
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBottomPlayer()V

    .line 676
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 624
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 626
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 627
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 628
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 630
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 632
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 633
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    invoke-static {p2, v0}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 632
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsCrashThePlayer:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 638
    sget-boolean p2, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const v2, 0x7f120424

    .line 639
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 637
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->accommodateForTvAndDesktopMode()V

    return-void
.end method

.method isPlayerAndPlayerServiceAvailable()Z
    .locals 1

    .line 2485
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPlayerAvailable()Z
    .locals 1

    .line 2477
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPlayerServiceAvailable()Z
    .locals 1

    .line 2481
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xa

    if-eq p1, p3, :cond_0

    .line 456
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request code from activity not supported ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void

    .line 452
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string p2, "ReCaptcha failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onAudioTrackUpdate()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/event/PlayerEventListener$-CC;->$default$onAudioTrackUpdate(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 702
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 711
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultOrientation()V

    .line 712
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    return v2

    .line 717
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 718
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 719
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 720
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->previous()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 725
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 726
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultOrientation()V

    return v1

    .line 731
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 733
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupFromHistoryItem(Lorg/schabi/newpipe/fragments/detail/StackItem;)V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 320
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f120421

    .line 323
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showComments:Z

    const v0, 0x7f120441

    .line 324
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    const v0, 0x7f120427

    .line 325
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    const v0, 0x7f120462

    .line 327
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COMMENTS"

    .line 326
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 330
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBroadcastReceiver()V

    .line 332
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Landroid/database/ContentObserver;

    .line 340
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accelerometer_rotation"

    .line 341
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Landroid/database/ContentObserver;

    .line 340
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 348
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 349
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 404
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 408
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->setListener(Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 414
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 415
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 416
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 423
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 425
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 426
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 427
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 428
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 430
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 432
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 433
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 439
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    return-void
.end method

.method public onFullscreenStateChanged(Z)V
    .locals 2

    .line 1887
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 1888
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAndPlayerServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 1889
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1890
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->getRoot()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda64;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda64;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 1895
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 1896
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1898
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    .line 1901
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1902
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1904
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->scrollToTop()V

    .line 1906
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onKeyDown(I)Z
    .locals 2

    .line 695
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 696
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;-><init>(I)V

    .line 697
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 3

    .line 1833
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->findQueueInStack(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/fragments/detail/StackItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setTitle(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setUrl(Ljava/lang/String;)V

    .line 1844
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1848
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1849
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 1853
    :cond_2
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1854
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    const/4 p2, 0x0

    .line 1855
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    const/4 p2, 0x1

    const-wide/16 v0, 0xc8

    .line 1859
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->prepareAndHandleInfoIfNeededAfterDelay(Lorg/schabi/newpipe/extractor/stream/StreamInfo;ZJ)V

    return-void
.end method

.method public onMoreOptionsLongClicked()V
    .locals 4

    .line 1941
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1942
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1943
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 1944
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    .line 1945
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1946
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1947
    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda68;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda68;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1951
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    .line 1952
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1953
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 354
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 355
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 358
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f120462

    .line 361
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 362
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 1802
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayPlayPauseImage(Z)V

    const/16 p2, 0x7c

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1806
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 1807
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 1808
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 1809
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1810
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const-wide/16 v0, 0x64

    invoke-static {p1, p3, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1811
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p3, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPlayerConnected(Lorg/schabi/newpipe/player/Player;Z)V
    .locals 2

    .line 249
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 252
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 254
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p1

    const-class v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->checkLandscape()V

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda49;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 265
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda50;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 271
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz p2, :cond_4

    .line 273
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 274
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 276
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    .line 278
    :cond_4
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    return-void
.end method

.method public onPlayerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 285
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1866
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 1867
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideMainPlayerOnLoadingNewStream()V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(III)V
    .locals 2

    .line 1822
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p3}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-nez p3, :cond_0

    goto :goto_0

    .line 1826
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p3}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    int-to-long v0, p1

    int-to-long p1, p2

    .line 1827
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updatePlaybackProgress(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 5

    .line 1758
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 1759
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueUpdate() called with: serviceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], name = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], playQueue = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda48;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 1777
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    if-eqz v0, :cond_2

    .line 1778
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1779
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1781
    sget-object v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/StackItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v3

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1782
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 1781
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void

    .line 1787
    :cond_2
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->findQueueInStack(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/fragments/detail/StackItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1793
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setPlayQueue(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 368
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 369
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    .line 377
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 379
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 380
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    .line 381
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    .line 382
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->wasCleared()Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    :cond_2
    return-void
.end method

.method public onScreenRotationButtonClicked()V
    .locals 2

    .line 1911
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    .line 1913
    :cond_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    .line 1914
    :goto_0
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1919
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1924
    :cond_2
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1926
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 1927
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->originalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1930
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->originalOrientation:I

    .line 1931
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 1932
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 1920
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    return-void
.end method

.method public onServiceConnected(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    return-void
.end method

.method public onServiceStopped()V
    .locals 3

    .line 1874
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1875
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayPlayPauseImage(Z)V

    .line 1876
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v0, :cond_0

    .line 1877
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1878
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 1879
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    .line 1877
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1881
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 395
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 397
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .line 1753
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    return-void
.end method

.method public openDownloadDialog()V
    .locals 6

    .line 1679
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_0

    return-void

    .line 1684
    :cond_0
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1685
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "downloadDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1687
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const-string v4, "Showing download dialog"

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-static {v1, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public openVideoPlayer(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1120
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 1122
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onScreenRotationButtonClicked()V

    .line 1125
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f1204b5

    .line 1126
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1127
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showExternalVideoPlaybackDialog()V

    return-void

    .line 1129
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openVideoPlayerAutoFullscreen()V
    .locals 1

    .line 1142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isStartMainPlayerFullscreenEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    return-void
.end method

.method protected prepareAndLoadInfo()V
    .locals 1

    .line 824
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->scrollToTop()V

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    return-void
.end method

.method public scrollToComment(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 3

    .line 1030
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    const-string v1, "COMMENTS"

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemPositionByTitle(Ljava/lang/String;)I

    move-result v0

    .line 1031
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1032
    instance-of v2, v1, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    check-cast v1, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->scrollToComment(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1038
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 1039
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1024
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 1026
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    return-void
.end method

.method public selectAndLoadVideo(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 781
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->disablePreloadingOfCurrentTrack()V

    .line 787
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 788
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(ZZ)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1222
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    return-void
.end method

.method protected setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1374
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 1375
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 1376
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 1377
    iput-object p4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-void
.end method

.method public showLoading()V
    .locals 7

    .line 1467
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 1470
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    sget-object v2, Lorg/schabi/newpipe/util/InfoCache$Type;->STREAM:Lorg/schabi/newpipe/util/InfoCache$Type;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->isCached(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailContentRootHiding:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1475
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide/16 v2, 0x64

    invoke-static {v0, v4, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1476
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1481
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide/16 v5, 0x0

    invoke-static {v0, v3, v5, v6}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 1483
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1485
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_3

    .line 1488
    iget-boolean v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    if-eqz v3, :cond_2

    .line 1490
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    .line 1489
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1492
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    :cond_3
    :goto_0
    const-string v0, "PICASSO_VIDEO_DETAILS_TAG"

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->cancelTag(Ljava/lang/Object;)V

    .line 1497
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1498
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public startLoading(Z)V
    .locals 1

    .line 830
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 832
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 834
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 835
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 838
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->runWorker(ZZ)V

    return-void
.end method

.method public updateTabLayoutVisibility()V
    .locals 2

    .line 986
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 997
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 993
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
