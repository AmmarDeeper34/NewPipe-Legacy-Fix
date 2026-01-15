.class Lcom/livefront/bridge/BridgeDelegate$1;
.super Ljava/lang/Object;
.source "BridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/BridgeDelegate;->clearAll()V
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

    .line 96
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$1;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$1;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$000(Lcom/livefront/bridge/BridgeDelegate;)Lcom/livefront/bridge/disk/DiskHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/livefront/bridge/disk/DiskHandler;->clearAll()V

    return-void
.end method
