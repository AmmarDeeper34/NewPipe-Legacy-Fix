.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;
.super Ljava/lang/Object;
.source "FeedLoadService.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$getNotificationBuilder$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "notificationBuilder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x6f4a0a

    invoke-virtual {p1, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
