.class public Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "LoadedMediaSource.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# instance fields
.field private final expireTimestamp:J

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 34
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 35
    iput-wide p4, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->expireTimestamp:J

    .line 37
    invoke-interface {p2, p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object p1

    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->asMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method private isExpired()Z
    .locals 5

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->expireTimestamp:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
