.class public Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;
.super Ljava/lang/Object;
.source "VideoPlaybackResolver.java"

# interfaces
.implements Lorg/schabi/newpipe/player/resolver/PlaybackResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;,
        Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlaybackResolver"


# instance fields
.field private audioTrack:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

.field private playbackQuality:Ljava/lang/String;

.field private final qualityResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;

.field private streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 62
    iput-object p3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->qualityResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;

    return-void
.end method


# virtual methods
.method public getPlaybackQuality()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->playbackQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamSourceType()Lj$/util/Optional;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 9

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/ListHelper;->getPlayableStreams(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v4

    invoke-static {v3, v4}, Lorg/schabi/newpipe/util/ListHelper;->getPlayableStreams(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-static {v1, v2, v3, v4, v5}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 84
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->playbackQuality:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 87
    iget-object v3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->qualityResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;

    invoke-interface {v3, v1}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;->getDefaultResolutionIndex(Ljava/util/List;)I

    move-result v3

    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->qualityResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;

    .line 90
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->getPlaybackQuality()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-interface {v3, v1, v6}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;->getOverrideResolutionIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    .line 93
    :goto_0
    iget-object v6, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Landroid/content/Context;

    iget-object v7, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    .line 94
    invoke-static {v6, v2, v7}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    .line 96
    invoke-static {p1, v1, v3, v2, v6}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;ILjava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$$ExternalSyntheticLambda0;-><init>()V

    .line 98
    invoke-virtual {v2, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v2, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 100
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    invoke-direct {v7}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>()V

    .line 101
    invoke-virtual {v6, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v6

    .line 102
    invoke-virtual {v6, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v2, :cond_3

    .line 106
    :try_start_0
    iget-object v7, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 107
    invoke-static {p1, v2}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v7, v2, p1, v8, v1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v7

    .line 108
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create video source"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_3
    :goto_1
    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 119
    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 120
    invoke-static {p1, v6}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {v2, v6, p1, v7, v1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    iput-object v1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    :try_end_1
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 124
    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create audio source"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    .line 128
    :cond_5
    sget-object v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    iput-object v1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 132
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v3

    .line 139
    :cond_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 142
    invoke-static {p1}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 145
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 147
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x400

    goto :goto_4

    :cond_8
    const/16 v3, 0x40

    .line 150
    :goto_4
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 152
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 153
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Landroid/content/Context;

    .line 155
    invoke-static {v3, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->captionLanguageOf(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getSingleSampleMediaSourceFactory()Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 158
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_a

    .line 165
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    return-object p1

    .line 167
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    new-array v1, v4, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p1, v5, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-object p1
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    return-void
.end method

.method public setPlaybackQuality(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->playbackQuality:Ljava/lang/String;

    return-void
.end method
