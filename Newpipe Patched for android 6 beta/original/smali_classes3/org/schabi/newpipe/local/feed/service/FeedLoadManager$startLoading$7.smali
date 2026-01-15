.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 124
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;->test(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Z

    move-result p1

    return p1
.end method

.method public final test(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getCancelSignal$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
