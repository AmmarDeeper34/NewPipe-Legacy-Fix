.class public abstract Lorg/schabi/newpipe/util/BridgeStateSaverInitializer;
.super Ljava/lang/Object;
.source "BridgeStateSaverInitializer.java"


# direct methods
.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 22
    new-instance v0, Lorg/schabi/newpipe/util/BridgeStateSaverInitializer$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/BridgeStateSaverInitializer$1;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/util/BridgeStateSaverInitializer$2;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/BridgeStateSaverInitializer$2;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/livefront/bridge/Bridge;->initialize(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V

    return-void
.end method
