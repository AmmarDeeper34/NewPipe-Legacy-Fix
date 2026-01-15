.class final Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "PlaceholderMediaSource.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# static fields
.field public static final COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

.field private static final MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    .line 18
    sget-object v1, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;->EMPTY:Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;->withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->asMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 24
    sget-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method
