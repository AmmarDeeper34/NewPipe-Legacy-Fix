.class Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;
.super Ljava/lang/Object;
.source "SubscriptionsExportService.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->getSubscriber()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.local.subscription.services.SubscriptionsExportService.EXPORT_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    const v1, 0x7f1201a0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(I)V

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopService()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() called with: error = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->onNext(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    return-void
.end method

.method public onNext(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 3

    .line 140
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startExport() success: file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;->-$$Nest$fputsubscription(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsExportService;Lorg/reactivestreams/Subscription;)V

    const-wide/16 v0, 0x1

    .line 135
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
