.class public Lorg/schabi/newpipe/player/helper/PlayerDataSource;
.super Ljava/lang/Object;
.source "PlayerDataSource.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayerDataSource"

.field private static cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;


# instance fields
.field private final cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field private final cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final progressiveLoadIntervalBytes:I

.field private final ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field private final ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

.field private final ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;


# direct methods
.method public static synthetic $r8$lambda$Tn9j3PmDq0xkJle-5WPnvNuXsPg(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .locals 6

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;D)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getProgressiveLoadIntervalBytes(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 87
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->instantiateCacheIfNeeded(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 91
    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 92
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 93
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 94
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 97
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    const/4 v2, 0x0

    .line 98
    invoke-static {v2, v2}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeHttpDataSourceFactory(ZZ)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object v3

    invoke-direct {v0, p1, p2, v1, v3}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 99
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    const/4 v3, 0x1

    .line 100
    invoke-static {v3, v3}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeHttpDataSourceFactory(ZZ)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object v4

    invoke-direct {v0, p1, p2, v1, v4}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 101
    new-instance v0, Lorg/schabi/newpipe/player/helper/CacheFactory;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 102
    invoke-static {v2, v3}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getYoutubeHttpDataSourceFactory(ZZ)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/schabi/newpipe/player/helper/CacheFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 105
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    move-result-object p1

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize(I)V

    .line 106
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize(I)V

    .line 107
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->setMaximumSize(I)V

    return-void
.end method

.method private static getDefaultDashChunkSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    .locals 1

    .line 190
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private static getYoutubeHttpDataSourceFactory(ZZ)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
    .locals 1

    .line 196
    new-instance v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;-><init>()V

    .line 197
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->setRangeParameterEnabled(Z)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object p0

    .line 198
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->setRnParameterEnabled(Z)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private static instantiateCacheIfNeeded(Landroid/content/Context;)V
    .locals 4

    .line 202
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "exoplayer"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    sget-boolean v1, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 205
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateCacheIfNeeded: cacheDir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->TAG:Ljava/lang/String;

    const-string v2, "instantiateCacheIfNeeded: could not create cache dir"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    .line 212
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferredCacheSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 213
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v3, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    sput-object v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    :cond_2
    return-void
.end method


# virtual methods
.method public getDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 3

    .line 147
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 148
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getDefaultDashChunkSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getHlsMediaSourceFactory(Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->build()Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V

    return-object v0

    .line 143
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object p1
.end method

.method public getLiveDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 3

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 129
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getDefaultDashChunkSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getLiveHlsMediaSourceFactory()Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 2

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerDataSource$$ExternalSyntheticLambda0;-><init>()V

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setPlaylistTrackerFactory(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method public getLiveSsMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 3

    .line 114
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getSSMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->setLivePresentationDelayMs(J)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method public getProgressiveMediaSourceFactory()Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .locals 2

    .line 153
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method public getSSMediaSourceFactory()Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 3

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cachelessDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getSingleSampleMediaSourceFactory()Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 2

    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getYoutubeDashMediaSourceFactory()Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 3

    .line 175
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 176
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->getDefaultDashChunkSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getYoutubeHlsMediaSourceFactory()Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 2

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytHlsCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public getYoutubeProgressiveMediaSourceFactory()Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .locals 2

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->ytProgressiveDashCacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget v1, p0, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->progressiveLoadIntervalBytes:I

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
