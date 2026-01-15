.class final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;
.super Ljava/lang/Object;
.source "NotificationWorker.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Landroidx/work/ListenableWorker$Result;
    .locals 3

    const-string v0, "feedUpdateInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 60
    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->access$getNotificationHelper(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->displayNewStreamsNotifications(Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$3;->apply(Ljava/util/List;)Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    return-object p1
.end method
