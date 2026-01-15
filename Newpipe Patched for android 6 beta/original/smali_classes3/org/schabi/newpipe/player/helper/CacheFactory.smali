.class final Lorg/schabi/newpipe/player/helper/CacheFactory;
.super Ljava/lang/Object;
.source "CacheFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field private final context:Landroid/content/Context;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 29
    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 30
    iput-object p4, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 8

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object v3

    .line 41
    new-instance v4, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 42
    new-instance v5, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 43
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getPreferredFileSize()J

    move-result-wide v1

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 44
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/CacheFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object v1
.end method
