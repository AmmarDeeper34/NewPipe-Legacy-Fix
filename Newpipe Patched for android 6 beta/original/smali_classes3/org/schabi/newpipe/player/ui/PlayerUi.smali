.class public abstract Lorg/schabi/newpipe/player/ui/PlayerUi;
.super Ljava/lang/Object;
.source "PlayerUi.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method protected constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 0
    return-void
.end method

.method public destroyPlayer()V
    .locals 0

    .line 0
    return-void
.end method

.method public getPlayer()Lorg/schabi/newpipe/player/Player;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    return-object v0
.end method

.method public initPlayback()V
    .locals 0

    .line 0
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBlocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBuffering()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFragmentListenerSet()V
    .locals 0

    .line 0
    return-void
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMuteUnmuteChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPaused()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPausedSeek()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPlaying()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdateProgress(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setupAfterIntent()V
    .locals 0

    .line 0
    return-void
.end method

.method public smoothStopForImmediateReusing()V
    .locals 0

    .line 0
    return-void
.end method
