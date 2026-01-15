.class public Lorg/schabi/newpipe/player/helper/LoadController;
.super Lcom/google/android/exoplayer2/DefaultLoadControl;
.source "LoadController.java"


# instance fields
.field private preloadingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    return-void
.end method


# virtual methods
.method public disablePreloadingOfCurrentTrack()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    return-void
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 13
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onPrepared()V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 25
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onReleased()V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 19
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onStopped()V

    return-void
.end method

.method public shouldContinueLoading(JJF)Z
    .locals 6

    .line 32
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 35
    invoke-super/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;->shouldContinueLoading(JJF)Z

    move-result p1

    return p1
.end method
