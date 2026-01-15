.class final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;
.super Ljava/lang/Object;
.source "NotificationWorker.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->createWork()Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 11

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while displaying streams notifications"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 67
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$4;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v6, "main worker"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    invoke-virtual {v0, v1, v3}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method
