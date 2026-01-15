.class Lcom/livefront/bridge/BridgeDelegate$3;
.super Ljava/lang/Object;
.source "BridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/BridgeDelegate;->queueDiskWritingIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/livefront/bridge/BridgeDelegate;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/livefront/bridge/BridgeDelegate;->access$100(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$200(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/livefront/bridge/BridgeDelegate;->access$300(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$400(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$400(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$500(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$500(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
