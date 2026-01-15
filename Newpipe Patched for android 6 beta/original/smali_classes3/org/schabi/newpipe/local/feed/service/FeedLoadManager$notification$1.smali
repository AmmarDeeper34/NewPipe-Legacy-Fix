.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->apply(Ljava/lang/String;)Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Lorg/schabi/newpipe/local/feed/service/FeedLoadState;
    .locals 3

    .line 47
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getMaxProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getCurrentProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
