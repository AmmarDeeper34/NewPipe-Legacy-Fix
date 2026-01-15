.class Lcom/livefront/bridge/disk/FileDiskHandler$1;
.super Ljava/lang/Object;
.source "FileDiskHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/disk/FileDiskHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/livefront/bridge/disk/FileDiskHandler;


# direct methods
.method constructor <init>(Lcom/livefront/bridge/disk/FileDiskHandler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/livefront/bridge/disk/FileDiskHandler$1;->this$0:Lcom/livefront/bridge/disk/FileDiskHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler$1;->this$0:Lcom/livefront/bridge/disk/FileDiskHandler;

    invoke-static {v0}, Lcom/livefront/bridge/disk/FileDiskHandler;->access$000(Lcom/livefront/bridge/disk/FileDiskHandler;)V

    return-void
.end method
