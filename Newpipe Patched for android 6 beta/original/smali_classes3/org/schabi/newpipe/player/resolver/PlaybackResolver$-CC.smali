.class public abstract synthetic Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;
.super Ljava/lang/Object;
.source "PlaybackResolver.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static buildDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 2

    .line 301
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 305
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 306
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0

    .line 312
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    .line 313
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 315
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 316
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->manifestUrlToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 312
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 320
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string p2, "Could not create a DASH media source/manifest from the manifest text"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static buildHlsMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 2

    .line 336
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getHlsMediaSourceFactory(Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 340
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 341
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;-><init>()V

    .line 348
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->setPlaylistString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getHlsMediaSourceFactory(Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 352
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 353
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->manifestUrlToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 354
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getLiveHlsMediaSourceFactory()Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getLiveSsMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p0

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getLiveDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    .line 239
    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 241
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 242
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    const-wide/16 v0, 0x2710

    .line 245
    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object p2

    .line 246
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 239
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    .line 258
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {p1, p2, p0, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createYoutubeMediaSource(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object p2

    .line 263
    sget-object v0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$DeliveryMethod:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 271
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildSSMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p0

    return-object p0

    .line 274
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported delivery type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_2
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildHlsMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 267
    :cond_3
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0

    .line 265
    :cond_4
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    .locals 1

    .line 283
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getProgressiveMediaSourceFactory()Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 289
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 290
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0

    .line 284
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string p1, "Non URI progressive contents are not supported"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildSSMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 3

    .line 363
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getSSMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 367
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 368
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 369
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p0

    return-object p0

    .line 373
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->manifestUrlToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 377
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 378
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 379
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getSSMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p0

    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 388
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 389
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 390
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 391
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 382
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string p2, "Error when parsing manual SS manifest"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 511
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p4

    .line 512
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 513
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 514
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p2

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeProgressiveMediaSourceFactory()Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 524
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p3

    .line 525
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 526
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 523
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 154
    const-string v1, " "

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)Ljava/lang/String;
    .locals 1

    .line 184
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_1

    .line 187
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no audio or video stream. That should never happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;
    .locals 2

    .line 115
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 119
    const-string v1, " "

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commonCacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;Z)Ljava/lang/StringBuilder;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    if-nez p0, :cond_1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    aput-object p1, p2, p0

    invoke-static {p2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0
.end method

.method public static createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 3

    .line 327
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getManifestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->manifestUrlToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 328
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 327
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p0

    return-object p0
.end method

.method public static createYoutubeMediaSource(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 5

    .line 403
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Generation of YouTube DASH manifest for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    .line 409
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_2

    .line 410
    invoke-static {p2, p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createYoutubeMediaSourceOfVideoStreamType(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0

    .line 412
    :cond_2
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_3

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getTargetDurationSec()I

    move-result v2

    .line 424
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v3

    .line 421
    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->fromPostLiveStreamDvrStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;IJ)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {p1, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    .line 425
    invoke-static {p2, p1, p0, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 429
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string p2, "Error when generating the DASH manifest of YouTube ended live stream"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 433
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string p1, "DASH manifest generation of YouTube livestreams is not supported"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createYoutubeMediaSourceOfVideoStreamType(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    .line 444
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    .line 445
    sget-object v1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$DeliveryMethod:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p2, 0x3

    if-ne v1, p2, :cond_0

    .line 491
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeHlsMediaSourceFactory()Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p0

    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 493
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 494
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 491
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 498
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported delivery method for YouTube contents: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v2

    .line 478
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->fromOtfStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;

    move-result-object p2

    .line 482
    invoke-static {p2, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p2

    .line 481
    invoke-static {p0, p2, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 485
    sget-object p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver;->TAG:Ljava/lang/String;

    const-string p2, "Error when generating the DASH manifest of YouTube OTF stream"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    new-instance p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 447
    :cond_2
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_5

    .line 451
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v2

    .line 451
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->fromProgressiveStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;

    move-result-object p2

    .line 455
    invoke-static {p2, p1}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->createDashManifest(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p2

    .line 454
    invoke-static {p0, p2, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildYoutubeManualDashMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    .line 458
    :goto_0
    sget-object v0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver;->TAG:Ljava/lang/String;

    const-string v1, "Error when generating or parsing DASH manifest of YouTube progressive stream, falling back to a ProgressiveMediaSource."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0

    .line 467
    :cond_5
    invoke-static {p0, p1, p3, p4}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildYoutubeProgressiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static manifestUrlToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 534
    const-string v0, ""

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .line 198
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 203
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHlsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHlsUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p0, p1, v2, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 207
    invoke-static {p0, p1, v2, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$-CC;->buildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Ljava/lang/String;ILorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 211
    :goto_0
    sget-object p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver;->TAG:Ljava/lang/String;

    const-string v0, "Error when generating live media source, falling back to standard sources"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public static throwResolverExceptionIfUrlNullOrEmpty(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 541
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 542
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string v0, "Empty stream URL"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 540
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    const-string v0, "Null stream URL"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
