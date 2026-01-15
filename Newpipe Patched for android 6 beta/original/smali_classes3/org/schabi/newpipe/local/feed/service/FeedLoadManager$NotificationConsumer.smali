.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/rxjava3/core/Notification;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getCurrentProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 275
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getNotificationUpdater$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$broadcastProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Lio/reactivex/rxjava3/core/Notification;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;->accept(Lio/reactivex/rxjava3/core/Notification;)V

    return-void
.end method
