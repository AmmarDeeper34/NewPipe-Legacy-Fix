.class public final Lorg/schabi/newpipe/local/feed/service/FeedEventManager;
.super Ljava/lang/Object;
.source "FeedEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

.field private static eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field private static ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    .line 10
    invoke-static {}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->create()Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    sget-object v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const-string v1, "startWithItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getIgnoreUpstream$p()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 9
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final events()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 19
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    sget-object v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    const-string v1, "filter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 23
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    .line 25
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
