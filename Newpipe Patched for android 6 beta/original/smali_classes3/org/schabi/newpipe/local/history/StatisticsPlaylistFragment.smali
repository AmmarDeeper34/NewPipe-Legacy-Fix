.class public Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "StatisticsPlaylistFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# instance fields
.field private databaseSubscription:Lorg/reactivestreams/Subscription;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

.field itemsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field private recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field private sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;


# direct methods
.method public static synthetic $r8$lambda$9v3hfl-lPXrqvfug-1yQC1oNc9o(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->lambda$deleteEntry$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsilnJTLDEbgbDLWqh-hGSaluZI(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->lambda$deleteEntry$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SPRPsPfLJCEn3FbB_QJRZ_13vC0(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->lambda$showInfoItemDialog$1(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bxU4msqYungCiDEYfLuBI0VNE_I(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->lambda$handleResult$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInfoItemDialog(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->showInfoItemDialog(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

    .line 56
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 59
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    return-void
.end method

.method static synthetic access$000(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method private deleteEntry(I)V
    .locals 3

    .line 343
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 344
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-eqz v0, :cond_0

    .line 345
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 346
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 347
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteStreamHistoryAndState(J)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 348
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    new-instance v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    .line 349
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private getHistoryObserver()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 223
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    return-object v0
.end method

.method private getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 4

    .line 373
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    .line 374
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Ljava/util/List;I)V

    return-object p1

    .line 377
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
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

    .line 380
    instance-of v3, v2, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-eqz v3, :cond_1

    .line 381
    check-cast v2, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method private synthetic lambda$deleteEntry$2()V
    .locals 3

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120334

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$deleteEntry$3(Ljava/lang/Throwable;)V
    .locals 3

    .line 360
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Deleting item"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$handleResult$0(Landroid/view/View;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->toggleSortMode()V

    return-void
.end method

.method private synthetic lambda$showInfoItemDialog$1(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 333
    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 334
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->getItemsList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->deleteEntry(I)V

    return-void
.end method

.method private processResult(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 70
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$3;->$SwitchMap$org$schabi$newpipe$local$history$StatisticsPlaylistFragment$StatisticSortMode:[I

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 80
    :goto_0
    invoke-static {v0}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private showInfoItemDialog(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V
    .locals 4

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v1

    .line 325
    :try_start_0
    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0, v1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 329
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 330
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V

    .line 331
    invoke-virtual {v2, v0, v3}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 338
    invoke-static {p1, v1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V

    return-void
.end method

.method private toggleSortMode()V
    .locals 4

    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    sget-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->LAST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    const v2, 0x7f12048f

    const v3, 0x7f120491

    if-ne v0, v1, :cond_0

    .line 302
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;->MOST_PLAYED:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    .line 303
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonIcon:Landroid/widget/ImageView;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonText:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$StatisticSortMode;

    .line 308
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonIcon:Landroid/widget/ImageView;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonText:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 v0, 0x1

    .line 313
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->startLoading(Z)V

    return-void
.end method


# virtual methods
.method protected getListHeader()Landroidx/viewbinding/ViewBinding;
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    .line 132
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    iput-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    return-object v0
.end method

.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->getPlayQueue(I)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Ljava/util/List;)V
    .locals 2

    .line 257
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 266
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->processResult(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 272
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 277
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 279
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButton:Landroid/widget/RelativeLayout;

    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    return-void
.end method

.method protected initListeners()V
    .locals 2

    .line 139
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initListeners()V

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    new-instance v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    iget-boolean p1, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    if-nez p1, :cond_0

    const p1, 0x7f12048f

    .line 124
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0008

    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 213
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 215
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 196
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 198
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->unsetSelectedListener()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    .line 203
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 205
    iget-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 208
    :cond_1
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0049

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 190
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 103
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    const v1, 0x7f12048c

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected resetFragment()V
    .locals 1

    .line 290
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 291
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 179
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->getStreamStatistics()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 181
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->getHistoryObserver()Lorg/reactivestreams/Subscriber;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
