.class public final Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "BookmarkFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/debounce/DebounceSavable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/util/debounce/DebounceSavable;"
    }
.end annotation


# instance fields
.field private databaseSubscription:Lorg/reactivestreams/Subscription;

.field private debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

.field private deletedItems:Ljava/util/List;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field itemsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field private remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;


# direct methods
.method public static synthetic $r8$lambda$-nRWxA9WbFgpzn-7uQfNkVjDjdE(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$changeLocalPlaylistName$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HiSUahVI-fPoqbCw_sWk93g7_pw(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$saveImmediate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XvkS37yeEHt9l-q6SsF8VQIAjVI(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$showRenameDialog$5(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZuXldJ2Ewpxqh7zN1HQYq5bGVac(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$showDeleteDialog$6(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOfrxc8cFYqB00VpmGHa5i_qiQ0(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$showLocalDialog$4(Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$maMb_pd2ve1EjqnWEsRN6Ka6H94(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$pc3y3v_XCP37D-4bEG9PJ-WAek4(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->lambda$saveImmediate$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLocalDialog(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showLocalDialog(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRemoteDeleteDialog(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showRemoteDeleteDialog(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

    .line 63
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-object p0
.end method

.method private changeLocalPlaylistName(JLjava/lang/String;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating playlist id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] with new name=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->renamePlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 330
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda5;-><init>()V

    new-instance p3, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    .line 331
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 335
    iget-object p2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private deleteItem(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V
    .locals 4

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->removeItem(Lorg/schabi/newpipe/database/LocalItem;)V

    .line 344
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v2, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v2, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz p1, :cond_3

    .line 353
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    .line 354
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->saveImmediate()V

    :cond_3
    :goto_1
    return-void
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 3

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->shouldUseGridLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 425
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;II)V

    return-object v1
.end method

.method private getPlaylistsSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 248
    new-instance v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    return-object v0
.end method

.method private synthetic lambda$changeLocalPlaylistName$1(Ljava/lang/Throwable;)V
    .locals 3

    .line 331
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Changing playlist name"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$saveImmediate$2()V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setNoChangesToSave()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveImmediate$3(Ljava/lang/Throwable;)V
    .locals 3

    .line 414
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Saving playlist"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$6(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 555
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deleteItem(Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    return-void
.end method

.method private synthetic lambda$showLocalDialog$4(Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 510
    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    invoke-virtual {p7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 511
    invoke-direct {p0, p3}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showRenameDialog(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V

    return-void

    .line 512
    :cond_0
    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 513
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 514
    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 515
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 516
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getAutomaticPlaylistThumbnailStreamId(J)J

    move-result-wide v3

    .line 517
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 518
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->changePlaylistThumbnail(JJZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 519
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method private synthetic lambda$showRenameDialog$5(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 540
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide p3

    iget-object p1, p2, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 541
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-direct {p0, p3, p4, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->changeLocalPlaylistName(JLjava/lang/String;)V

    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V
    .locals 2

    .line 547
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e7

    .line 553
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 554
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    const p2, 0x7f1200e0

    .line 555
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120070

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private showLocalDialog(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V
    .locals 9

    const v0, 0x7f1203b7

    .line 496
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1200e0

    .line 497
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f1204a4

    .line 498
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 500
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getIsPlaylistThumbnailPermanent(J)Z

    move-result v7

    .line 502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    .line 506
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;)V

    .line 524
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v2, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 525
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showRemoteDeleteDialog(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V
    .locals 1

    .line 492
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    return-void
.end method

.method private showRenameDialog(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V
    .locals 3

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogEditTextBinding;

    move-result-object v0

    .line 532
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const v2, 0x7f1202e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 533
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 534
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;)V

    const p1, 0x7f1203b8

    .line 538
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120070

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/util/List;)V
    .locals 1

    .line 286
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 296
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 300
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 131
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initListeners()V

    .line 133
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 134
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 136
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setUseItemHandle(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p1

    .line 88
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 89
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    .line 90
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance p1, Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    const-wide/16 v0, 0xbb8

    invoke-direct {p1, v0, v1, p0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;-><init>(JLorg/schabi/newpipe/util/debounce/DebounceSavable;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    iget-boolean p3, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    if-nez p3, :cond_0

    .line 105
    iget-object p3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f12047e

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    const p3, 0x7f0d0053

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 225
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    .line 226
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getDebouncedSaveSignal()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    :cond_1
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    .line 234
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 235
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 236
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    .line 237
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 239
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 240
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 210
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 220
    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->itemsListState:Landroid/os/Parcelable;

    .line 205
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->saveImmediate()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 112
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    const v1, 0x7f12047e

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected resetFragment()V
    .locals 1

    .line 309
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 310
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method public saveImmediate()V
    .locals 13

    .line 360
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz v1, :cond_8

    .line 366
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getIsModified()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 377
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 378
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/database/LocalItem;

    .line 380
    instance-of v7, v6, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 381
    invoke-virtual {v7}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v5

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    .line 382
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->setDisplayIndex(Ljava/lang/Long;)V

    .line 383
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_2
    instance-of v7, v6, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v7, :cond_3

    check-cast v6, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 385
    invoke-virtual {v6}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    .line 386
    invoke-virtual {v6, v9, v10}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->setDisplayIndex(J)V

    .line 387
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 393
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    sget-object v7, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 394
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 395
    :cond_6
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    sget-object v7, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 396
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    :cond_7
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v5, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-virtual {v5, v1, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->updatePlaylists(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    .line 406
    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->updatePlaylists(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->mergeWith(Lio/reactivex/rxjava3/core/CompletableSource;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    .line 408
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    new-instance v3, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V

    .line 409
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public startLoading(Z)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 183
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getDebouncedSaver()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 185
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setNoChangesToSave()V

    .line 187
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->getMergedOrderedPlaylists(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->onBackpressureLatest()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 191
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 192
    invoke-direct {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->getPlaylistsSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
