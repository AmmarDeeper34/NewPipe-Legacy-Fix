.class public final Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "SurfaceHolderCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final context:Landroid/content/Context;

.field private placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

.field private final player:Lcom/google/android/exoplayer2/Player;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->release()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 53
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method
