.class public Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "FailedMediaSource.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;,
        Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;,
        Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$MediaSourceResolutionException;
    }
.end annotation


# static fields
.field public static final SILENCE_DURATION_US:J

.field public static final SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final error:Ljava/lang/Exception;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field private final retryTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENCE_DURATION_US:J

    .line 35
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->makeSilentMediaPeriod(J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedMediaSource@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->TAG:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    .line 58
    iput-wide p3, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->retryTimestamp:J

    .line 59
    invoke-static {p2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;)Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->asMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method private canRetry()Z
    .locals 5

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->retryTimestamp:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static makeSilentMediaPeriod(J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 2

    .line 205
    new-instance v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;-><init>()V

    .line 206
    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->setDurationUs(J)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->createMediaSource()Lcom/google/android/exoplayer2/source/SilenceMediaSource;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, p1, v0, v1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p0

    return-object p0
.end method

.method private static makeSilentMediaTimeline(JLcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/Timeline;
    .locals 8

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    return-object v0
.end method

.method public static of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;
    .locals 3

    .line 71
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method public static of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;)Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;
    .locals 3

    .line 65
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V

    return-object v0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 147
    sget-object p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->TAG:Ljava/lang/String;

    const-string v0, "Loading failed source: "

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    instance-of p1, p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;

    if-eqz p1, :cond_0

    .line 113
    sget-wide v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENCE_DURATION_US:J

    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->makeSilentMediaTimeline(JLcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 0

    .line 163
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->canRetry()Z

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
