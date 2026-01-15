.class public Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;
.super Ljava/lang/Object;
.source "AudioPlaybackResolver.java"

# interfaces
.implements Lorg/schabi/newpipe/player/resolver/PlaybackResolver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlaybackResolver"


# instance fields
.field private audioTrack:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/player/helper/PlayerDataSource;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    return-void
.end method


# virtual methods
.method getStreamForIndex(ILjava/util/List;)Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 1

    if-ltz p1, :cond_0

    .line 89
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->audioTrack:Ljava/lang/String;

    .line 63
    invoke-static {v1, v0, v3}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 64
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->getStreamForIndex(ILjava/util/List;)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    .line 65
    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getPlayableStreams(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 71
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->getStreamForIndex(ILjava/util/List;)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    .line 72
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    move-result-object v0

    .line 79
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 80
    invoke-static {p1, v3}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v1, v3, p1, v4, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 82
    sget-object v0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create audio source"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v2
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/AudioPlaybackResolver;->audioTrack:Ljava/lang/String;

    return-void
.end method
