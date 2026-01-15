.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FeedGroupDialogViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;,
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent;,
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;


# instance fields
.field private actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final dialogEventLiveData:Landroidx/lifecycle/LiveData;

.field private feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private feedGroupDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field private final groupId:J

.field private final groupLiveData:Landroidx/lifecycle/LiveData;

.field private final mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

.field private final mutableGroupLiveData:Landroidx/lifecycle/MutableLiveData;

.field private final mutableSubscriptionsLiveData:Landroidx/lifecycle/MutableLiveData;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field private subscriptionsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private subscriptionsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private final subscriptionsLiveData:Landroidx/lifecycle/LiveData;

.field private toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;


# direct methods
.method public static synthetic $r8$lambda$Iw8YphkIBv-MbXhPNOO-kflk5_E(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialQuery"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 27
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 28
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 30
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 31
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 35
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 36
    iget-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p4

    .line 34
    sget-object p5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    invoke-static {p1, p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 39
    new-instance p4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;

    invoke-direct {p4, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->switchMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 41
    sget-object p4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$3;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$3;

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const-string p4, "map(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 43
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableGroupLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance p4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableSubscriptionsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance p5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupLiveData:Landroidx/lifecycle/LiveData;

    .line 47
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsLiveData:Landroidx/lifecycle/LiveData;

    .line 48
    iput-object p5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/LiveData;

    .line 52
    iget-object p5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {p5, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->getGroup(J)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p5

    .line 53
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p5, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p5

    .line 54
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p5, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p5, "subscribe(...)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedGroupDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 58
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->subscriptionIdsForGroup(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p2

    .line 57
    sget-object p3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsDisposable$1;

    invoke-static {p1, p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 60
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 61
    new-instance p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsDisposable$2;

    invoke-direct {p2, p4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsDisposable$2;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    return-object p0
.end method

.method public static final synthetic access$getGroupId$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    return-wide v0
.end method

.method public static final synthetic access$getSubscriptionManager$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)Lorg/schabi/newpipe/local/subscription/SubscriptionManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-object p0
.end method

.method private final doAction(Lio/reactivex/rxjava3/core/Completable;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 96
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private static final doAction$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V
    .locals 1

    .line 96
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clearSubscriptionsFilter()V
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final createGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Ljava/util/Set;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedSubscriptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->createGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 73
    new-instance p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;

    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;Ljava/util/Set;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "flatMapCompletable(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction(Lio/reactivex/rxjava3/core/Completable;)V

    return-void
.end method

.method public final deleteGroup()V
    .locals 3

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->deleteGroup(J)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction(Lio/reactivex/rxjava3/core/Completable;)V

    return-void
.end method

.method public final filterSubscriptionsBy(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getDialogEventLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getGroupLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSubscriptionsLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedGroupDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final toggleShowOnlyUngrouped(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Ljava/util/Set;J)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedSubscriptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateSubscriptionsForGroup(JLjava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p3

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    new-instance v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Completable;->andThen(Lio/reactivex/rxjava3/core/CompletableSource;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "andThen(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction(Lio/reactivex/rxjava3/core/Completable;)V

    return-void
.end method
