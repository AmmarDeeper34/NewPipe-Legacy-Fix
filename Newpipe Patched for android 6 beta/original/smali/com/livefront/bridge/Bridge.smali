.class public abstract Lcom/livefront/bridge/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# static fields
.field private static volatile sDelegate:Lcom/livefront/bridge/BridgeDelegate;

.field private static final sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/livefront/bridge/Bridge;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static declared-synchronized checkInitialization()V
    .locals 3

    const-class v0, Lcom/livefront/bridge/Bridge;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 27
    monitor-exit v0

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must first call initialize before calling any other methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static initialize(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/livefront/bridge/Bridge;->initializeInternal(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V

    return-void
.end method

.method private static declared-synchronized initializeInternal(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V
    .locals 3

    const-class v0, Lcom/livefront/bridge/Bridge;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Lcom/livefront/bridge/BridgeDelegate;

    sget-object v2, Lcom/livefront/bridge/Bridge;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V

    sput-object v1, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 115
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public static saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 145
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
