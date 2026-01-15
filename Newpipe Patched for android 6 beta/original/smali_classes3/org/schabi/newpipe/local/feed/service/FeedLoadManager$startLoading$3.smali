.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getNotificationUpdater$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$broadcastProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    return-void
.end method
