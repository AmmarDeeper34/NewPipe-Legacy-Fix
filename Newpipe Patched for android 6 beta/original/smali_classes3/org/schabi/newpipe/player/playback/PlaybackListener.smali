.class public interface abstract Lorg/schabi/newpipe/player/playback/PlaybackListener;
.super Ljava/lang/Object;
.source "PlaybackListener.java"


# virtual methods
.method public abstract isApproachingPlaybackEdge(J)Z
.end method

.method public abstract onPlayQueueEdited()V
.end method

.method public abstract onPlaybackBlock()V
.end method

.method public abstract onPlaybackShutdown()V
.end method

.method public abstract onPlaybackSynchronize(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V
.end method

.method public abstract onPlaybackUnblock(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract sourceOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
.end method
