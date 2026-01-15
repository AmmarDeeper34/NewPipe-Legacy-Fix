.class final Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;
.super Ljava/lang/Object;
.source "FeedEventManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->events()Lio/reactivex/rxjava3/core/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->test(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)Z

    move-result p1

    return p1
.end method

.method public final test(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->access$getIgnoreUpstream$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
