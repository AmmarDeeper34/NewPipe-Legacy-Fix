.class Lcom/livefront/bridge/BridgeDelegate$4;
.super Lcom/livefront/bridge/ActivityLifecycleCallbacksAdapter;
.source "BridgeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/BridgeDelegate;->registerForLifecycleEvents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/livefront/bridge/BridgeDelegate;


# direct methods
.method constructor <init>(Lcom/livefront/bridge/BridgeDelegate;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-direct {p0}, Lcom/livefront/bridge/ActivityLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/livefront/bridge/BridgeDelegate;->access$602(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    .line 257
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/livefront/bridge/BridgeDelegate;->access$702(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    .line 263
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->access$800(Lcom/livefront/bridge/BridgeDelegate;Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {p1}, Lcom/livefront/bridge/BridgeDelegate;->clearAll()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/livefront/bridge/BridgeDelegate;->access$602(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/livefront/bridge/BridgeDelegate;->access$702(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {p1}, Lcom/livefront/bridge/BridgeDelegate;->access$908(Lcom/livefront/bridge/BridgeDelegate;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$4;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {p1}, Lcom/livefront/bridge/BridgeDelegate;->access$910(Lcom/livefront/bridge/BridgeDelegate;)I

    return-void
.end method
