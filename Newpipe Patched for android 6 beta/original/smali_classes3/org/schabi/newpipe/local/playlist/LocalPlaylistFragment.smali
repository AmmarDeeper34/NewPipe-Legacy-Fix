.class public Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "LocalPlaylistFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;
.implements Lorg/schabi/newpipe/util/debounce/DebounceSavable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;",
        "Lorg/schabi/newpipe/util/debounce/DebounceSavable;"
    }
.end annotation


# instance fields
.field private databaseSubscription:Lorg/reactivestreams/Subscription;

.field private debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

.field private isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRewritingPlaylist:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field itemsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field protected playlistId:Ljava/lang/Long;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field private tabsPagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$3z04neo0LL6aemN-fHV3ZDOEtUo(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$showInfoItemDialog$22(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52TuXYcY8RYKxpJPyKO4qvAkyPM(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$changeThumbnailStreamId$15(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Abj9FxcpC37ro7DMwZ1phppvw5I(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$createShareConfirmationDialog$26(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1aUAFe5Wtg5R8tIsPjSovxHJlE(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$removeDuplicatesInPlaylist$17(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$It6wrxM3fnztBZ0Scdk5czO1UA4(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 439
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 440
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic $r8$lambda$KjVwaxT69fgkgBF_4UfnX9Eu3Yw(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$sharePlaylist$6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NAEHCwqiX45bLOh7eNnpJLY1_60(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoxXUxpPiHtXutycAtBU99CLvWE(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/util/List;)Lio/reactivex/rxjava3/core/SingleSource;
    .locals 0

    .line 404
    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->export(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Single;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QHQWKLgSjwJy4baDlBDeXMb0C7I(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$onOptionsItemSelected$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKrloLCptcljmw16CGJ53LgjKW8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 377
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$R7RXT2uNex8VtefGlEtLAmgpuPY(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$sharePlaylist$5(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XcWWC6GdsfdsMi-6gsTLFwX89i8(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$showInfoItemDialog$23(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6-Jy_-MOeFrYS50J1St-AE_2fQ(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$initListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_eBt92PJY_LJZ6hy0wZx5tqgjN8(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$createShareConfirmationDialog$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbvU0QKU1qnKWPCJ9ljnh14mV78(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$createRenameDialog$11(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fGnUPDL2fYkVjNI4XdqtJ8JAZAU(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$saveImmediate$20(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jg1hO5kzgSkPObRAsq2I9xYjBRo(Landroid/widget/Toast;Ljava/lang/Integer;)V
    .locals 0

    .line 618
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$k1GUv_RB5wkAa0-LhoWTEgcXoys(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$showInfoItemDialog$21(Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpHI5_QKmnkb6MU7kCTJuAksNOA(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$createShareConfirmationDialog$25(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l2NSv7ZzIEhFWUi6bWithoK5Aj8(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$saveImmediate$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$mAZGfyLK4GgzqR3IBAvEXwqOvSE(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$removeWatchedStreams$9(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$niqQzDDQ_Ib4nqJDVcuTUjYT_hk(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$o2-xTldI5LwM5mHiLjKL3vDUxDA(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;ZLjava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$removeWatchedStreams$10(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oMhS7iiglAObn4uHnSo6PDhCceQ(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$removeDuplicatesInPlaylist$18(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0ByF4nzgREDstvpLHdP89x_jM8(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$changePlaylistName$13(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZkxcQSeiNv_M3ZGk8a2fOSn9EM(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$openRemoveDuplicatesDialog$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6CABirxWJifjOs_DdDIWoe07cI(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;ZLorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->lambda$removeWatchedStreams$8(ZLorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->tabsPagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-object p0
.end method

.method private changePlaylistName(Ljava/lang/String;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 585
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setTitle(Ljava/lang/String;)V

    .line 587
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating playlist id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] with new title=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->renamePlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 593
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda23;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 594
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private changeThumbnailStreamId(JZ)V
    .locals 9

    .line 601
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 602
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getIsPlaylistThumbnailPermanent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120379

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 610
    sget-boolean v1, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating playlist id=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] with new thumbnail stream id=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_1
    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 616
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->changePlaylistThumbnail(JJZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 617
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda25;

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda25;-><init>(Landroid/widget/Toast;)V

    new-instance p3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda26;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 618
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 621
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private createRenameDialog()V
    .locals 4

    .line 559
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogEditTextBinding;

    move-result-object v0

    .line 564
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const v2, 0x7f1202e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 565
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 566
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 567
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1203b8

    .line 570
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 571
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120070

    const/4 v3, 0x0

    .line 573
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;)V

    const v0, 0x7f1203b7

    .line 574
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private createShareConfirmationDialog()V
    .locals 3

    .line 886
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120409

    .line 887
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 888
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v2, 0x7f12040d

    .line 889
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v2, 0x7f12040a

    .line 892
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v2, 0x7f12040c

    .line 895
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private deleteItem(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V
    .locals 4

    .line 678
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 682
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->removeItem(Lorg/schabi/newpipe/database/LocalItem;)V

    .line 683
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistThumbnailStreamId(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 684
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->updateThumbnailUrl()V

    .line 687
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 688
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    .line 689
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    return-void
.end method

.method public static getInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;
    .locals 1

    .line 114
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;-><init>()V

    .line 115
    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setInitialData(JLjava/lang/String;)V

    return-object v0
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 3

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->shouldUseGridLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 742
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;II)V

    return-object v1
.end method

.method private getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 4

    .line 866
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    .line 867
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Ljava/util/List;I)V

    return-object p1

    .line 870
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 871
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 872
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/database/LocalItem;

    .line 873
    instance-of v3, v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-eqz v3, :cond_1

    .line 874
    check-cast v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 877
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method private getPlayQueueStartingAt(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method private getPlaylistObserver()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 322
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    return-object v0
.end method

.method private synthetic lambda$changePlaylistName$13(Ljava/lang/Throwable;)V
    .locals 3

    .line 595
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Renaming playlist"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$changeThumbnailStreamId$15(Ljava/lang/Throwable;)V
    .locals 3

    .line 619
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Changing playlist thumbnail"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$createRenameDialog$11(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 575
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->changePlaylistName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createShareConfirmationDialog$24(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 890
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    return-void
.end method

.method private synthetic lambda$createShareConfirmationDialog$25(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 893
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    return-void
.end method

.method private synthetic lambda$createShareConfirmationDialog$26(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 896
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    return-void
.end method

.method private synthetic lambda$initListeners$0(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->createRenameDialog()V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 372
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->removeWatchedStreams(Z)V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 375
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->removeWatchedStreams(Z)V

    return-void
.end method

.method private synthetic lambda$openRemoveDuplicatesDialog$16(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 646
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->removeDuplicatesInPlaylist()V

    return-void
.end method

.method private synthetic lambda$removeDuplicatesInPlaylist$17(Ljava/util/List;)V
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 666
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 667
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 668
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    .line 669
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 671
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    const/4 p1, 0x0

    .line 672
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    return-void
.end method

.method private synthetic lambda$removeDuplicatesInPlaylist$18(Ljava/lang/Throwable;)V
    .locals 3

    .line 673
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Removing duplicated streams"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$removeWatchedStreams$10(ZLjava/lang/Throwable;)V
    .locals 4

    .line 512
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing watched videos, partially watched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$removeWatchedStreams$8(ZLorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 9

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 447
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getIsPlaylistThumbnailPermanent(J)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 451
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 453
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 452
    invoke-static {p4, p3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    .line 456
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 457
    iget-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v4, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 458
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistThumbnailStreamId(J)J

    move-result-wide v4

    .line 459
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide p2

    cmp-long v6, v4, p2

    if-nez v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->loadLocalStreamStateBatch(Ljava/util/List;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 467
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 468
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 469
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 472
    invoke-virtual {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 471
    invoke-static {p4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    .line 473
    invoke-virtual {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v7

    if-ltz v6, :cond_4

    if-eqz v5, :cond_3

    .line 476
    invoke-virtual {v5, v7, v8}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isFinished(J)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_5

    if-nez p2, :cond_5

    .line 478
    iget-object v5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v6, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 479
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistThumbnailStreamId(J)J

    move-result-wide v5

    .line 480
    invoke-virtual {v4}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-nez v4, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    .line 477
    :cond_4
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v3, p2

    .line 486
    :cond_7
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private synthetic lambda$removeWatchedStreams$9(Landroid/util/Pair;)V
    .locals 4

    .line 492
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 493
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 495
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 496
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    .line 498
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    if-eqz p1, :cond_0

    .line 501
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->updateThumbnailUrl()V

    .line 504
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    .line 505
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 507
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    .line 510
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    const/4 p1, 0x0

    .line 511
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    return-void
.end method

.method private synthetic lambda$saveImmediate$19()V
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setNoChangesToSave()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveImmediate$20(Ljava/lang/Throwable;)V
    .locals 3

    .line 730
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Saving playlist"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$sharePlaylist$5(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 414
    sget-object v0, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    if-ne p1, v0, :cond_0

    .line 415
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const p1, 0x7f12040b

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 421
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sharePlaylist$6(Ljava/lang/Throwable;)V
    .locals 1

    .line 423
    const-string v0, "Sharing playlist"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$showInfoItemDialog$21(Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 821
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlayQueueStartingAt(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p2

    const/4 p3, 0x1

    .line 820
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$showInfoItemDialog$22(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 825
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->changeThumbnailStreamId(JZ)V

    return-void
.end method

.method private synthetic lambda$showInfoItemDialog$23(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->deleteItem(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    return-void
.end method

.method private openRemoveDuplicatesDialog()V
    .locals 3

    .line 642
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203b2

    .line 643
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1203b1

    .line 644
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v2, 0x7f120332

    .line 645
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 647
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private removeDuplicatesInPlaylist()V
    .locals 4

    .line 652
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 656
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 658
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 659
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getDistinctPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 663
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda28;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 664
    invoke-virtual {v0, v2, v3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 662
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private setInitialData(JLjava/lang/String;)V
    .locals 0

    .line 838
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 839
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    return-void
.end method

.method private setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V
    .locals 5

    .line 843
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 845
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 846
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda18;

    const-class v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 847
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda20;-><init>()V

    .line 848
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda21;-><init>()V

    .line 849
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p1

    .line 850
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v2

    .line 851
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 853
    invoke-static {v4, v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 854
    invoke-static {v2, v3, v1, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(JZZ)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V
    .locals 5

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;

    invoke-direct {v3, p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;-><init>(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V

    .line 404
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Flowable;->flatMapSingle(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    .line 410
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0, p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V

    new-instance p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda31;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 411
    invoke-virtual {v2, v3, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 403
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private updateThumbnailUrl()V
    .locals 4

    .line 625
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getIsPlaylistThumbnailPermanent(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 632
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 633
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    .line 638
    :goto_0
    invoke-direct {p0, v2, v3, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->changeThumbnailStreamId(JZ)V

    return-void
.end method


# virtual methods
.method protected getListHeader()Landroidx/viewbinding/ViewBinding;
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    .line 164
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    iput-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 166
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    return-object v0
.end method

.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Ljava/util/List;)V
    .locals 1

    .line 518
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 525
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 531
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    if-eqz p1, :cond_2

    .line 532
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 533
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 535
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 537
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 539
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    return-void
.end method

.method public hideLoading()V
    .locals 4

    .line 222
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 223
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_0
    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 173
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initListeners()V

    .line 175
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 178
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 180
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 128
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance p1, Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;-><init>(Lorg/schabi/newpipe/util/debounce/DebounceSavable;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 266
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() called with: menu = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], inflater = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0009

    .line 271
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 299
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getDebouncedSaveSignal()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->tabsPagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->getLocalPlaylistFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    .line 311
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 312
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 314
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 276
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->unsetSelectedListener()V

    :cond_0
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    .line 283
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 286
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    if-eqz v1, :cond_1

    .line 287
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 289
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 293
    :cond_2
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 294
    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0245

    if-ne v0, v1, :cond_0

    .line 363
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->createShareConfirmationDialog()V

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0240

    if-ne v0, v1, :cond_1

    .line 365
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->createRenameDialog()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a023f

    if-ne v0, v1, :cond_2

    .line 367
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    if-nez p1, :cond_3

    .line 368
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1203b5

    .line 369
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203b4

    .line 370
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v1, 0x7f120332

    .line 371
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    const v1, 0x7f1203b6

    .line 373
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda4;-><init>()V

    const v1, 0x7f120070

    .line 376
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a023e

    if-ne v0, v1, :cond_4

    .line 381
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    if-nez p1, :cond_3

    .line 382
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->openRemoveDuplicatesDialog()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 385
    :cond_4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 256
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 260
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    return-void
.end method

.method public removeWatchedStreams(Z)V
    .locals 5

    .line 429
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 433
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 435
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->getStreamHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda11;-><init>()V

    .line 439
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Maybe;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;ZLorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    .line 443
    invoke-virtual {v2, v1, v3}, Lio/reactivex/rxjava3/core/Maybe;->zipWith(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 490
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Z)V

    .line 491
    invoke-virtual {v0, v2, v3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 489
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method protected resetFragment()V
    .locals 1

    .line 548
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 549
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method public saveImmediate()V
    .locals 4

    .line 699
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v1, :cond_5

    .line 705
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getIsModified()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 709
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/database/LocalItem;

    .line 712
    instance-of v3, v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 713
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 717
    :cond_3
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating playlist id=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->updateJoin(JLjava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 723
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V

    .line 724
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showInfoItemDialog(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V
    .locals 7

    .line 802
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v0

    .line 805
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 806
    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 810
    sget-object v3, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    sget-object v4, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addAllEntries([Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 817
    sget-object v5, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v6, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0, v1, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    .line 818
    invoke-virtual {v2, v5, v6}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    .line 822
    invoke-virtual {v1, v3, v2}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    .line 827
    invoke-virtual {v1, v4, v2}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object p1

    .line 830
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object p1

    .line 831
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 833
    invoke-static {p1, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 213
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 2

    .line 231
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 233
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 237
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getDebouncedSaver()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 239
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setNoChangesToSave()V

    .line 242
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->onBackpressureLatest()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 246
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 247
    invoke-direct {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlaylistObserver()Lorg/reactivestreams/Subscriber;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
