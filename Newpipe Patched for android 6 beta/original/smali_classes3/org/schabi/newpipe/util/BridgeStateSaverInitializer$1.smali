.class Lorg/schabi/newpipe/util/BridgeStateSaverInitializer$1;
.super Ljava/lang/Object;
.source "BridgeStateSaverInitializer.java"

# interfaces
.implements Lcom/livefront/bridge/SavedStateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/util/BridgeStateSaverInitializer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
