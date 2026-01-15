.class Lcom/livefront/bridge/BridgeDelegate$2;
.super Ljava/lang/Object;
.source "BridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/BridgeDelegate;->clearDataFromDisk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/livefront/bridge/BridgeDelegate;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$2;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate$2;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$2;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-static {v0}, Lcom/livefront/bridge/BridgeDelegate;->access$000(Lcom/livefront/bridge/BridgeDelegate;)Lcom/livefront/bridge/disk/DiskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$2;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/livefront/bridge/disk/DiskHandler;->clear(Ljava/lang/String;)V

    return-void
.end method
