.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "FeedLoadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupBroadcastReceiver$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    .line 197
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string v0, "org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 200
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupBroadcastReceiver$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$getFeedLoadManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "feedLoadManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancel()V

    :cond_2
    return-void
.end method
