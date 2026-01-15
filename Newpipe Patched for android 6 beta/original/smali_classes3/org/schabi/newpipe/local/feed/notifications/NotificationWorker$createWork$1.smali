.class final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;
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
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->access$showLoadingFeedForegroundNotification(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
