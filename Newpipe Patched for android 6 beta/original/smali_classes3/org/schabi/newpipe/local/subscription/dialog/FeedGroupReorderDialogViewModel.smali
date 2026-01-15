.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FeedGroupReorderDialogViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;
    }
.end annotation


# instance fields
.field private actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final dialogEventLiveData:Landroidx/lifecycle/LiveData;

.field private feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private groupsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final groupsLiveData:Landroidx/lifecycle/LiveData;

.field private final mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

.field private final mutableGroupsLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public static synthetic $r8$lambda$5C-ZKp-J5YKoqTlkv1Eo0wZDqII(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->doAction$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 14
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsLiveData:Landroidx/lifecycle/LiveData;

    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/LiveData;

    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->groups()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->take(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 25
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 26
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private final doAction(Lio/reactivex/rxjava3/core/Completable;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$ProcessingEvent;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 44
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private static final doAction$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;)V
    .locals 1

    .line 44
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDialogEventLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getGroupsLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final updateOrder(Ljava/util/List;)V
    .locals 1

    const-string v0, "groupIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateGroupsOrder(Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->doAction(Lio/reactivex/rxjava3/core/Completable;)V

    return-void
.end method
