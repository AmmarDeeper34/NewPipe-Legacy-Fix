.class public final Lorg/schabi/newpipe/player/ui/MainPlayerUi;
.super Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.source "MainPlayerUi.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainPlayerUi"


# instance fields
.field private areSegmentsVisible:Z

.field private fragmentIsVisible:Z

.field private isFullscreen:Z

.field private isQueueVisible:Z

.field private isVerticalVideo:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

.field private segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

.field private settingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$14ZXRvwQKkvT4Ruo6Esvd0aGYkw(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$buildQueue$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oq49pYiv6hTuSIvY8ZriXJpEj0(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6um8mOV-JFJOj93MLI9cJ_UeQXM(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$onFragmentStopped$6(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1NvLE5EJuENpRFeC_sZHfXHaDg(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$3(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Es2P4wQWLaZRpZ_yLr0IUxUIng4(Landroid/view/Window;)V
    .locals 2

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 455
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 459
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v0, 0x400

    .line 460
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IIYI81flgh_NL7-_5LRGVolk57Q(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$closeItemsList$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$RRo1ggJRw5Cp20ttHZoGBSBrPAM(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RmUhWugAXUNMc8eNQ-fTq0jefeY(Landroid/view/ViewParent;)Landroid/content/Context;
    .locals 0

    .line 969
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WBRxV-wbDWAerQFH3uKv_BxdZMk(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d2zmvRTmP_nyn8JoRqkMxSU9E3c(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAwI2cJkyImt2LICVRrH8ZWmIK8(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$onPlaybackSpeedClicked$11(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lutoS9N9SUOXXsZKpwu0F6EnLQY(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$initListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r9nT7xhrITu269RiQsifSq24JPs(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->lambda$buildSegments$9(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsegmentAdapter(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetupScreenRotationButton(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 90
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 91
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 97
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 98
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    return-void
.end method

.method private buildQueue()V
    .locals 2

    .line 627
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 628
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 629
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 631
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 632
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 634
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 635
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 637
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->setSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V

    .line 639
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildSegments()V
    .locals 3

    .line 666
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 667
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 668
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 670
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 671
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 672
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;)V

    invoke-virtual {v0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 677
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private directlyOpenFullscreenIfNeeded()V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isStartMainPlayerFullscreenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 122
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 123
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 1

    .line 763
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-object v0
.end method

.method private getNearestStreamSegmentPosition(J)I
    .locals 8

    .line 749
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>()V

    .line 750
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 751
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 753
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 754
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 759
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
    .locals 1

    .line 783
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-object v0
.end method

.method private getParentContext()Lj$/util/Optional;
    .locals 3

    .line 967
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    .line 968
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda12;

    const-class v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda13;-><init>()V

    .line 969
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
    .locals 1

    .line 706
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-object v0
.end method

.method private getStreamSegmentListener()Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;
    .locals 1

    .line 720
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-object v0
.end method

.method private initVideoPlayer()V
    .locals 3

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveResizeModeFromPrefs(Lorg/schabi/newpipe/player/Player;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    .line 264
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$buildQueue$8(Landroid/view/View;)V
    .locals 0

    .line 639
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    return-void
.end method

.method private synthetic lambda$buildSegments$9(Landroid/view/View;)V
    .locals 0

    .line 680
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    return-void
.end method

.method private synthetic lambda$closeItemsList$10()V
    .locals 3

    .line 696
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 697
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    .line 696
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$initListeners$0()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    return-void

    .line 161
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;-><init>()V

    .line 162
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$initListeners$1(Landroid/view/View;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onQueueClicked()V

    return-void
.end method

.method private synthetic lambda$initListeners$2(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onSegmentsClicked()V

    return-void
.end method

.method private synthetic lambda$initListeners$3(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->showForPlayQueue(Lorg/schabi/newpipe/player/Player;Landroidx/fragment/app/FragmentManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private synthetic lambda$initListeners$4(Landroid/view/View;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda24;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    .line 172
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$initListeners$5(Landroid/view/View;)Z
    .locals 2

    .line 188
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;-><init>()V

    .line 189
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    .line 190
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 191
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onFragmentStopped$6(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 378
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$onPlaybackSpeedClicked$11(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 7

    .line 864
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSpeed()F

    move-result v0

    float-to-double v1, v0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 865
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackPitch()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    move-result v5

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 866
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda25;

    invoke-direct {v6, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 864
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    move-result-object v0

    .line 867
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onFragmentStopped()V
    .locals 2

    .line 370
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 371
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimizeOnExitAction(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 382
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    return-void

    .line 376
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 373
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/Player;->useVideoSource(Z)V

    return-void
.end method

.method private onQueueClicked()V
    .locals 5

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 604
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    .line 605
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->buildQueue()V

    .line 607
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v1, 0x0

    .line 613
    invoke-virtual {p0, v1, v2, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 614
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 615
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    const-wide/16 v2, 0x12c

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 618
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->updateQueueTime(I)V

    return-void
.end method

.method private onSegmentsClicked()V
    .locals 5

    const/4 v0, 0x1

    .line 643
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 645
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    .line 646
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->buildSegments()V

    .line 648
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v1, 0x0

    .line 654
    invoke-virtual {p0, v1, v2, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 655
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 656
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    const-wide/16 v2, 0x12c

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 659
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 660
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 659
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    move-result v0

    .line 661
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 662
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private setInitialGestureValues()V
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getAudioReactor()Lorg/schabi/newpipe/player/helper/AudioReactor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getAudioReactor()Lorg/schabi/newpipe/player/helper/AudioReactor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/AudioReactor;->getVolume()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 566
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getAudioReactor()Lorg/schabi/newpipe/player/helper/AudioReactor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->getMaxVolume()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 567
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    .line 568
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 567
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setupScreenRotationButton()V
    .locals 3

    .line 890
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 891
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 890
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 891
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 890
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 894
    iget-boolean v2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v2, :cond_2

    const v2, 0x7f080111

    goto :goto_2

    :cond_2
    const v2, 0x7f080110

    .line 893
    :goto_2
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showHideKodiButton()V
    .locals 3

    .line 511
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 513
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v0

    invoke-static {v2, v0}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 512
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateQueueTime(I)V
    .locals 11

    .line 809
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    .line 818
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    if-ge v4, v1, :cond_1

    int-to-long v7, v5

    .line 823
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v5, v7

    goto :goto_1

    :cond_1
    int-to-long v6, v6

    .line 825
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v8}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v6, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    .line 832
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    add-int/2addr p1, v5

    .line 834
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr v5, v6

    .line 835
    invoke-static {v5}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    .line 833
    const-string p1, "%s/%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 1

    .line 150
    new-instance v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-object v0
.end method

.method protected calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
    .locals 4

    .line 494
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 496
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x55

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    const/16 v2, 0x10

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 498
    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/DeviceUtils;->spToPx(ILandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1

    .line 500
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 501
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    const/16 v2, 0xf

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 502
    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/DeviceUtils;->spToPx(ILandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method public checkLandscape()V
    .locals 5

    .line 946
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 948
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 949
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v3

    const/16 v4, 0x80

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 950
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v3

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 952
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 954
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 955
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    :cond_2
    return-void
.end method

.method public closeItemsList()V
    .locals 9

    .line 684
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 686
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 688
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 689
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 692
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 700
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 701
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected deinitListeners()V
    .locals 2

    .line 198
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->deinitListeners()V

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 206
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 232
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->destroy()V

    .line 235
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->removeViewFromParent()V

    return-void
.end method

.method public destroyPlayer()V
    .locals 1

    .line 244
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->destroyPlayer()V

    .line 246
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->unsetSelectedListener()V

    .line 248
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->dispose()V

    :cond_0
    return-void
.end method

.method public getParentActivity()Lj$/util/Optional;
    .locals 3

    .line 973
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentContext()Lj$/util/Optional;

    move-result-object v0

    .line 974
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda21;

    const-class v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v0

    .line 975
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda22;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hideSystemUIIfNeeded()V
    .locals 2

    .line 467
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected initListeners()V
    .locals 4

    .line 155
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initListeners()V

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Landroid/database/ContentObserver;

    .line 181
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 182
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Landroid/database/ContentObserver;

    .line 181
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 187
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public initPlayback()V
    .locals 3

    .line 211
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initPlayback()V

    .line 213
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->dispose()V

    .line 216
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 217
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 218
    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getStreamSegmentListener()Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;-><init>(Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    return-void
.end method

.method protected isAnyListViewOpen()Z
    .locals 1

    .line 841
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .line 981
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentContext()Lj$/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isVerticalVideo()Z
    .locals 1

    .line 850
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 2

    .line 317
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 318
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    return-void

    .line 322
    :cond_0
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    if-nez p1, :cond_3

    .line 326
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onFragmentStopped()V

    return-void

    .line 328
    :cond_1
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 330
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onFragmentStopped()V

    return-void

    .line 331
    :cond_2
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 334
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/Player;->useVideoSource(Z)V

    .line 338
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result p1

    if-nez p1, :cond_3

    .line 339
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    :cond_3
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 417
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onCompleted()V

    .line 418
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    :cond_0
    return-void
.end method

.method public onFragmentListenerSet()V
    .locals 2

    .line 353
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onFragmentListenerSet()V

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 357
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 361
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(I)Z
    .locals 2

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1

    .line 872
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v0, :cond_1

    .line 873
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 874
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 875
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 879
    :cond_1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onKeyDown(I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 547
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double p1, p1, p3

    double-to-int p1, p1

    .line 550
    sget-boolean p2, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 551
    sget-object p2, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "maxGestureLength = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 555
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 557
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setInitialGestureValues()V

    .line 558
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 581
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 582
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showHideKodiButton()V

    .line 583
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->setItems(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 586
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 585
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    move-result p1

    .line 587
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 588
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    .line 590
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    :cond_1
    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 0

    .line 597
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlayQueueEdited()V

    .line 598
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showOrHideButtons()V

    return-void
.end method

.method protected onPlaybackSpeedClicked()V
    .locals 2

    .line 863
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPlaying()V
    .locals 0

    .line 411
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlaying()V

    .line 412
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->checkLandscape()V

    return-void
.end method

.method public onUpdateProgress(III)V
    .locals 2

    .line 399
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onUpdateProgress(III)V

    .line 401
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    if-eqz p2, :cond_0

    .line 402
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 404
    :cond_0
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    if-eqz p2, :cond_1

    .line 405
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->updateQueueTime(I)V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1

    .line 900
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 901
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 903
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz p1, :cond_1

    .line 905
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    move-result p1

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 906
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 907
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 909
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 913
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    return-void
.end method

.method public removeViewFromParent()V
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 225
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setupAfterIntent()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->directlyOpenFullscreenIfNeeded()V

    .line 134
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupAfterIntent()V

    .line 136
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->initVideoPlayer()V

    .line 138
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->play()V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    return-void
.end method

.method protected setupElementsSize(Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f07035b

    .line 301
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07035e

    .line 302
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07035d

    .line 303
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07035c

    .line 304
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 300
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsSize(IIII)V

    return-void
.end method

.method protected setupElementsVisibility()V
    .locals 6

    .line 269
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsVisibility()V

    .line 271
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 272
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showHideKodiButton()V

    .line 273
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    .line 275
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v3, 0x7f0a024c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->primaryControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v4, -0x1

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v5, 0x7f080109

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-boolean v4, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 290
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 292
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->metadataView:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method protected setupSubtitleView(F)V
    .locals 2

    .line 526
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const v1, 0x3d5a511a    # 0.0533f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method protected showOrHideButtons()V
    .locals 7

    .line 432
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 433
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 439
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>()V

    .line 440
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda14;-><init>()V

    .line 441
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    .line 442
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 444
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 446
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-nez v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-nez v1, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public showSystemUIPartially()V
    .locals 2

    .line 452
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public smoothStopForImmediateReusing()V
    .locals 2

    .line 254
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->smoothStopForImmediateReusing()V

    const-wide/16 v0, 0x0

    .line 257
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 258
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    return-void
.end method

.method public toggleFullscreen()V
    .locals 5

    .line 917
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 918
    sget-object v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "toggleFullscreen() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 921
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    if-eqz v0, :cond_5

    .line 922
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 926
    :cond_1
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    .line 931
    invoke-virtual {p0, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    goto :goto_0

    .line 935
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 937
    :goto_0
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onFullscreenStateChanged(Z)V

    .line 939
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->metadataView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 941
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    :cond_5
    :goto_2
    return-void
.end method
