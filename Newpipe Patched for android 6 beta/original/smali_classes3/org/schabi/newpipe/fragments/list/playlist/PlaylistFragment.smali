.class public Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "PlaylistFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# instance fields
.field private bookmarkReactor:Lorg/reactivestreams/Subscription;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field private isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private playlistBookmarkButton:Landroid/view/MenuItem;

.field private playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field private playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

.field private playlistOverallDurationSeconds:J

.field private remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

.field private streamCount:J


# direct methods
.method public static synthetic $r8$lambda$2IVMFFkX3_pQ1lBmnsr1e8n9Qjc(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$onBookmarkClicked$13(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8Tq9ZuRc3pR_Or0usNwwKC0uWE(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$PrH53Mo0slGv-OWt_3Y4S1UCyOY(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$handleResult$4(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RN70JV7HSY_iFOV4nyhcBvzOG8M(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$onBookmarkClicked$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$RwD8l35td2_sCEstKN5vjdCmqvM(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)J
    .locals 2

    .line 504
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Smj_070RKJaMSjGCAPZm_I0Mc_Y(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$showInfoItemDialog$0(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YzKZIp5Yr0hPXQ_1zQPbrbBbyfw(Ljava/lang/Long;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$dFMJsgP-iLcAeUU-5e477We-6MA(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Ljava/util/List;)Lorg/reactivestreams/Publisher;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$handleResult$7(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Ljava/util/List;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i0CYA95ooA9jV6mc0MVRY5y3beo(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$kJshyB7pGw6eeupyPt6ELahd15w(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$onOptionsItemSelected$1(Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTfWokOivef1EPvLv1OskGz7w5E(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$handleResult$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4EUzI2Ly-bkQ5MXgBpNfYOWWfE(Lorg/schabi/newpipe/util/text/TextEllipsizer;Landroid/view/View;)V
    .locals 0

    .line 354
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->toggle()V

    return-void
.end method

.method public static synthetic $r8$lambda$wq5gbAJSHNIzBao8lJicYFC5nq4(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$onBookmarkClicked$10(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xUjX7NmU-Z3rQQusyAsiT7kZHdU(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->lambda$handleResult$2(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zX6JNqIbQ70hxUyns-OHiEY0j6Y(Lorg/schabi/newpipe/util/text/TextEllipsizer;Landroid/view/View;)V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->toggle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisBookmarkButtonReady(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplaylistEntity(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBookmarkButtons(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->updateBookmarkButtons()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    return-void
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;
    .locals 1

    .line 97
    new-instance v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;-><init>()V

    .line 98
    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 6

    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 382
    instance-of v2, v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-eqz v2, :cond_0

    .line 383
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 387
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 388
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v3, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 389
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    return-object v0
.end method

.method private getPlayQueueStartingAt(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method private getPlaylistBookmarkSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 416
    new-instance v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    return-object v0
.end method

.method private getUpdateProcessor(Ljava/util/List;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    const/4 v0, -0x1

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 403
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 407
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 408
    invoke-virtual {v2, p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->isIdenticalTo(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->onUpdate(JLorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->toFlowable()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$handleResult$2(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Landroid/view/View;)V
    .locals 2

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    .line 303
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p2, v0, v1, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
    const-string p2, "Opening channel fragment"

    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$handleResult$3(Ljava/lang/Boolean;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 344
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12043f

    goto :goto_0

    :cond_0
    const p1, 0x7f120438

    .line 343
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private synthetic lambda$handleResult$4(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/lang/Boolean;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 348
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 347
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 350
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsize()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$handleResult$7(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Ljava/util/List;)Lorg/reactivestreams/Publisher;
    .locals 0

    .line 367
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getUpdateProcessor(Ljava/util/List;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onBookmarkClicked$10(Ljava/lang/Throwable;)V
    .locals 3

    .line 469
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Adding playlist bookmark"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$onBookmarkClicked$11()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    return-void
.end method

.method private synthetic lambda$onBookmarkClicked$13(Ljava/lang/Throwable;)V
    .locals 3

    .line 476
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Deleting playlist bookmark"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$1(Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showInfoItemDialog$0(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 163
    invoke-direct {p0, p3}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueueStartingAt(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p2

    const/4 p3, 0x1

    .line 162
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private onBookmarkClicked()V
    .locals 3

    .line 458
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 465
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-nez v2, :cond_1

    .line 466
    check-cast v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->onBookmark(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 467
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    .line 468
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->deletePlaylist(J)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 473
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    .line 474
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    .line 475
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->empty()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 482
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setStreamCountAndOverallDuration(Ljava/util/List;Z)V
    .locals 4

    .line 502
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 503
    iget-wide v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda16;-><init>()V

    .line 504
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p1

    .line 505
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    .line 506
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-wide v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->streamCount:J

    .line 508
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistOverallDurationSeconds:J

    const/4 v3, 0x1

    .line 509
    invoke-static {v1, v2, p2, v3}, Lorg/schabi/newpipe/util/Localization;->getDurationString(JZZ)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    .line 507
    invoke-static {p2}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 506
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateBookmarkButtons()V
    .locals 3

    .line 486
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_0

    goto :goto_2

    .line 490
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-nez v1, :cond_1

    const v2, 0x7f08013e

    goto :goto_0

    :cond_1
    const v2, 0x7f08013f

    :goto_0
    if-nez v1, :cond_2

    const v1, 0x7f120060

    goto :goto_1

    :cond_2
    const v1, 0x7f12049c

    .line 496
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 497
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 134
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 136
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V

    return-object v1
.end method

.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    return-object v0
.end method

.method public handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 1

    .line 285
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    .line 286
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->hasNextPage()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->handleResult(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V
    .locals 5

    .line 291
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 293
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 294
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v3, v1, v2}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 295
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v1, 0x7f120377

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 316
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    :cond_2
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 320
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 323
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06035a

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 325
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080144

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const-string v1, "PICASSO_PLAYLIST_TAG"

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 331
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 334
    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getStreamCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->streamCount:J

    .line 335
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->hasNextPage()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/List;Z)V

    .line 337
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 338
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    if-eq v0, v1, :cond_4

    .line 339
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    new-instance v1, Lorg/schabi/newpipe/util/text/TextEllipsizer;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 341
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v3}, Lorg/schabi/newpipe/util/text/TextEllipsizer;-><init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V

    .line 342
    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setStateChangeListener(Ljava/util/function/Consumer;)V

    .line 346
    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setOnContentChanged(Ljava/util/function/Consumer;)V

    .line 353
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 354
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 357
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :goto_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 363
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 362
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 366
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->getPlaylist(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    new-instance p1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 367
    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->onBackpressureLatest()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 369
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 370
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlaylistBookmarkSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 372
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->setUseMiniVariant(Z)V

    return-void
.end method

.method protected loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 225
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMorePlaylistItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method protected loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 230
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 114
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance p1, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 174
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 175
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

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f000f

    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0234

    .line 181
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistBookmarkButton:Landroid/view/MenuItem;

    .line 182
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->updateBookmarkButtons()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 207
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onDestroy()V

    .line 209
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 214
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    .line 215
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 216
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 188
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 190
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 191
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 198
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    if-eqz v1, :cond_2

    .line 199
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 202
    :cond_2
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 263
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 243
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    if-nez v2, :cond_0

    .line 0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 244
    :cond_0
    check-cast v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    move-result-object v2

    .line 243
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :sswitch_2
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->onBookmarkClicked()V

    goto :goto_1

    .line 250
    :sswitch_3
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v1

    .line 255
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 256
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 257
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    .line 251
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_1

    .line 237
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSettings(Landroid/content/Context;)V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0053 -> :sswitch_4
        0x7f0a0233 -> :sswitch_3
        0x7f0a0234 -> :sswitch_2
        0x7f0a023c -> :sswitch_1
        0x7f0a0243 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 451
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 4

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 159
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v3, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Landroid/content/Context;)V

    .line 160
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0, p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 275
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 277
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 279
    const-string v0, "PICASSO_PLAYLIST_TAG"

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->cancelTag(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method
