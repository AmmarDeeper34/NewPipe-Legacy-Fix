.class public final Lorg/schabi/newpipe/local/feed/FeedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FeedViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;,
        Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;,
        Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;


# instance fields
.field private final application:Landroid/app/Application;

.field private combineDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private final mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

.field private final showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field private final showFutureItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private final showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field private final showPartiallyPlayedItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private final showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field private final showPlayedItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private final stateLiveData:Landroidx/lifecycle/LiveData;


# direct methods
.method public static synthetic $r8$lambda$sCSfO3nnKa2ANcYRtphq7FW1RgI(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLjava/util/List;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->combineDisposable$lambda$0(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLjava/util/List;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;JZZZ)V
    .locals 9

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    .line 38
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 40
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p1

    const-string v1, "create(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 42
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v3

    const-string p1, "distinctUntilChanged(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPlayedItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 45
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 47
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p4

    .line 48
    invoke-virtual {p4}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPartiallyPlayedItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 50
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 52
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p4

    .line 53
    invoke-virtual {p4}, Lio/reactivex/rxjava3/core/Flowable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showFutureItemsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/LiveData;

    .line 60
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->events()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    .line 64
    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->notLoadedCount(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v6

    .line 65
    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->oldestSubscriptionUpdate(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v7

    .line 67
    new-instance v8, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 59
    invoke-static/range {v2 .. v8}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function6;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const-wide/16 p4, 0x78

    .line 72
    sget-object p6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p4, p5, p6}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 73
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 74
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 75
    new-instance p4, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;

    invoke-direct {p4, p0, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;-><init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;J)V

    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 85
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 86
    new-instance p2, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;-><init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->combineDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/FeedViewModel;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    return-object p0
.end method

.method public static final synthetic access$getMutableStateLiveData$p(Lorg/schabi/newpipe/local/feed/FeedViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private static final combineDisposable$lambda$0(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLjava/util/List;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;
    .locals 9

    const-string v0, "t1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t6"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p6

    move-object v8, p6

    check-cast v8, Lj$/time/OffsetDateTime;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLj$/time/OffsetDateTime;)V

    return-object v1
.end method


# virtual methods
.method public final getShowFutureItemsFromPreferences()Z
    .locals 2

    .line 150
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->access$getShowFutureItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final getShowPartiallyPlayedItemsFromPreferences()Z
    .locals 2

    .line 140
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->access$getShowPartiallyPlayedItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final getShowPlayedItemsFromPreferences()Z
    .locals 2

    .line 130
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->access$getShowPlayedItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final getStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->combineDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final setSaveShowFutureItems(Z)V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getDefaultSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    const v2, 0x7f1201c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSaveShowPartiallyPlayedItems(Z)V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getDefaultSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    const v2, 0x7f1201c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSaveShowPlayedItems(Z)V
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getDefaultSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Landroid/app/Application;

    const v2, 0x7f1201ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
