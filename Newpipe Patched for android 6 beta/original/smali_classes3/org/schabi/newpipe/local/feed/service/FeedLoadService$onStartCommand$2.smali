.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;
.super Ljava/lang/Object;
.source "FeedLoadService.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;->accept(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 99
    invoke-static {}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error while storing result"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$handleError(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;Ljava/lang/Throwable;)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$stopService(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V

    return-void
.end method
