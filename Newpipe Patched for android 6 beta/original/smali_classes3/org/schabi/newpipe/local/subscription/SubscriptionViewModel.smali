.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SubscriptionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;,
        Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;


# instance fields
.field private feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private feedGroupItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final feedGroupsLiveData:Landroidx/lifecycle/LiveData;

.field private final listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field private final listViewModeFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private final mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

.field private final mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

.field private stateItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final stateLiveData:Landroidx/lifecycle/LiveData;

.field private subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 23
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 27
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->createDefault(Ljava/lang/Object;)Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p1

    const-string v0, "createDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 29
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const-string v0, "distinctUntilChanged(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewModeFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateLiveData:Landroidx/lifecycle/LiveData;

    .line 34
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupsLiveData:Landroidx/lifecycle/LiveData;

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->groups()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 40
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;

    .line 37
    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 43
    sget-object v3, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2;

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 49
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 50
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$3;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)V

    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$4;

    invoke-direct {v4, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$4;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)V

    invoke-virtual {p1, v3, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v3, "subscribe(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 55
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptions()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 57
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 58
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 59
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)V

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getMutableFeedGroupsLiveData$p(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMutableStateLiveData$p(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getFeedGroupsLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupsLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getListViewMode()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupItemsDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final setListViewMode(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
