.class Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;
.super Ljava/lang/Object;
.source "SubscriptionsImportService.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->getSubscriber()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 260
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.local.subscription.services.SubscriptionsImportService.IMPORT_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 262
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    const v1, 0x7f1201ff

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->showToast(I)V

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->stopService()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->TAG:Ljava/lang/String;

    const-string v1, "Got an error!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 3

    .line 246
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items successfully inserted into the database"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->-$$Nest$fputsubscription(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 241
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
