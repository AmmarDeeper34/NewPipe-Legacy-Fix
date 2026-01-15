.class public Lorg/schabi/newpipe/player/playback/MediaSourceManager;
.super Ljava/lang/Object;
.source "MediaSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debouncedLoader:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field private final isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final loadDebounceMillis:J

.field private final loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final loadingItems:Ljava/util/Set;

.field private final nearEndIntervalSignal:Lio/reactivex/rxjava3/core/Observable;

.field private final playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private playQueueReactor:Lorg/reactivestreams/Subscription;

.field private final playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

.field private final playbackNearEndGapMillis:J

.field private playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

.field private final progressUpdateIntervalMillis:J

.field private final removeMediaSourceHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$FwsA63HSqfiFcLvnCMosYalL-F8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lj$/util/Optional;
    .locals 2

    .line 427
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 428
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$auy8OgyGRNC9rT8RRGakgz7tleU(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Ljava/lang/Long;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->lambda$getEdgeIntervalSignal$0(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bg_TAWPpA4tuvkbAUyAxHWm8zi4(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->lambda$getLoadedMediaSource$6(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bq4PH6gqLUjhzMu5d_G1Og5TIcU(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadImmediate()V

    return-void
.end method

.method public static synthetic $r8$lambda$eEyDXFVlrwQIn8AVAqidTUZ-OEs(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->lambda$getDebouncedLoader$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hz-6iiI12G7TNWzGxxClqLvh_8k(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeSynchronizePlayer()V

    return-void
.end method

.method public static synthetic $r8$lambda$nrEt9Pu2NAITg1JpyESD7DrkPSE(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;
    .locals 10

    .line 429
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result p0

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 431
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getCacheExpirationMillis(I)J

    move-result-wide v2

    add-long v8, v0, v2

    .line 432
    new-instance v4, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;

    move-object v5, p1

    move-object v7, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;J)V

    return-object v4
.end method

.method public static synthetic $r8$lambda$o9pPAAzp1URPxayOlD1n6iDJBCc(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Throwable;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 4

    .line 447
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;)Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    move-result-object p0

    return-object p0

    .line 452
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 454
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v2, v0, v1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oohirRvCs7mX9edsxH9dQ0hcVHs(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->lambda$maybeLoadItem$2(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQqLmqGMLAiYJt01p2l0wrqaQhc(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to resolve source from stream info. URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audio count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$MediaSourceResolutionException;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$MediaSourceResolutionException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;)Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)Lorg/reactivestreams/Subscription;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputplayQueueReactor(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method static bridge synthetic -$$Nest$monPlayQueueChanged(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->onPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playback/PlaybackListener;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 13

    .line 130
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 131
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    const-wide/16 v2, 0x2

    .line 132
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    const-wide/16 v7, 0x190

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 130
    invoke-direct/range {v4 .. v12}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;-><init>(Lorg/schabi/newpipe/player/playback/PlaybackListener;Lorg/schabi/newpipe/player/playqueue/PlayQueue;JJJ)V

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/player/playback/PlaybackListener;Lorg/schabi/newpipe/player/playqueue/PlayQueue;JJJ)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSourceManager@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    if-eqz v0, :cond_1

    cmp-long v0, p5, p7

    if-ltz v0, :cond_0

    .line 149
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    .line 150
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 152
    iput-wide p5, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackNearEndGapMillis:J

    .line 153
    iput-wide p7, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->progressUpdateIntervalMillis:J

    .line 154
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getEdgeIntervalSignal()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->nearEndIntervalSignal:Lio/reactivex/rxjava3/core/Observable;

    .line 156
    iput-wide p3, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadDebounceMillis:J

    .line 157
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 158
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getDebouncedLoader()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedLoader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 160
    sget-object p1, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    .line 161
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 163
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-direct {p1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 167
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 169
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 170
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 171
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getReactor()Lorg/reactivestreams/Subscriber;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Playback end gap=["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ms] must be longer than update interval=[ "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ms] for them to be useful."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Play Queue has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDebouncedLoader()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 4

    .line 370
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->nearEndIntervalSignal:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->mergeWith(Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-wide v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadDebounceMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 371
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 372
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->single()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 373
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    .line 374
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private getEdgeIntervalSignal()Lio/reactivex/rxjava3/core/Observable;
    .locals 4

    .line 363
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->progressUpdateIntervalMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 364
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    .line 363
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    .line 365
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static getItemsToLoad(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;
    .locals 7

    .line 570
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 571
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    .line 579
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    .line 581
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 582
    new-instance v5, Landroidx/collection/ArraySet;

    .line 583
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 586
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-ltz v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v2

    .line 589
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {v2, v3, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 588
    invoke-interface {v5, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 591
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 593
    new-instance p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;

    invoke-direct {p0, v1, v5}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/Collection;)V

    return-object p0
.end method

.method private getLoadedMediaSource(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 423
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStream()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 424
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 446
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method private getReactor()Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 198
    new-instance v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    return-object v0
.end method

.method private isCorrectionNeeded(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 5

    .line 495
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v0

    .line 496
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 497
    iget-object v3, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 498
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    invoke-interface {v1, p1, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v2
.end method

.method private isPlayQueueReady()Z
    .locals 4

    .line 287
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method private isPlaybackReady()Z
    .locals 3

    .line 292
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->size()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private synthetic lambda$getDebouncedLoader$1(Ljava/lang/Long;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadImmediate()V

    return-void
.end method

.method private synthetic lambda$getEdgeIntervalSignal$0(Ljava/lang/Long;)Z
    .locals 2

    .line 366
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    iget-wide v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackNearEndGapMillis:J

    invoke-interface {p1, v0, v1}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->isApproachingPlaybackEdge(J)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$getLoadedMediaSource$6(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 2

    .line 436
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    .line 425
    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->sourceOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 426
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 436
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    return-object p1
.end method

.method private synthetic lambda$maybeLoadItem$2(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->onMediaSourceReceived(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V

    return-void
.end method

.method private loadDebounced()V
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private loadImmediate()V
    .locals 2

    .line 382
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaSource - loadImmediate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getItemsToLoad(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 391
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeClearLoaders()V

    .line 393
    invoke-static {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->-$$Nest$fgetcenter(Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 394
    invoke-static {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->-$$Nest$fgetneighbors(Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 395
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private maybeBlock()V
    .locals 2

    .line 306
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "maybeBlock() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    invoke-interface {v0}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->onPlaybackBlock()V

    .line 315
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->resetSources()V

    .line 317
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private maybeClearLoaders()V
    .locals 2

    .line 533
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaSource - maybeClearLoaders() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 537
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 538
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 539
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method private maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 3

    .line 400
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v2, "maybeLoadItem() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isCorrectionNeeded(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSource - Loading=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with url=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getLoadedMediaSource(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 415
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 417
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 418
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeRenewCurrentIndex()V
    .locals 5

    .line 513
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 514
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 520
    invoke-interface {v2, v1, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeSynchronizePlayer()V

    return-void

    .line 525
    :cond_1
    sget-boolean v2, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 526
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSource - Reloading currently playing, index=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], item=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    new-instance v3, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->invalidate(ILandroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeSync(Z)V
    .locals 2

    .line 339
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "maybeSync() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    invoke-interface {v1, v0, p1}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->onPlaybackSynchronize(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized maybeSynchronizePlayer()V
    .locals 1

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isPlayQueueReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isPlaybackReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeUnblock()Z

    move-result v0

    .line 354
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeSync(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 356
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private maybeUnblock()Z
    .locals 2

    .line 321
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "maybeUnblock() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->getParentMediaSource()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->onPlaybackUnblock(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private onMediaSourceReceived(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    .locals 5

    .line 460
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    const-string v1, "]"

    if-eqz v0, :cond_0

    .line 461
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSource - Loaded=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] with url=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v2

    .line 469
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isCorrectionNeeded(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSource - Updating index=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] with title=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] at url=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private onPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    invoke-interface {p1}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->onPlaybackShutdown()V

    return-void

    .line 228
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$2;->$SwitchMap$org$schabi$newpipe$player$playqueue$events$PlayQueueEventType:[I

    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;

    .line 250
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;->getFromSelectedIndex()I

    move-result v3

    .line 251
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;->getToSelectedIndex()I

    move-result v1

    .line 250
    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->move(II)V

    goto :goto_0

    .line 243
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;

    .line 244
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->getFromIndex()I

    move-result v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->getToIndex()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->move(II)V

    goto :goto_0

    .line 239
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;

    .line 240
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;->getRemoveIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->remove(I)V

    goto :goto_0

    .line 236
    :pswitch_3
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeRenewCurrentIndex()V

    goto :goto_0

    .line 231
    :pswitch_4
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeBlock()V

    .line 233
    :pswitch_5
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->populateSources()V

    .line 259
    :goto_0
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    .line 265
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadDebounced()V

    goto :goto_1

    .line 261
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadImmediate()V

    .line 270
    :goto_1
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_2

    goto :goto_2

    .line 272
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/playback/PlaybackListener;

    invoke-interface {p1}, Lorg/schabi/newpipe/player/playback/PlaybackListener;->onPlayQueueEdited()V

    .line 275
    :goto_2
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isPlayQueueReady()Z

    move-result p1

    if-nez p1, :cond_3

    .line 276
    invoke-direct {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeBlock()V

    .line 277
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    .line 279
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateSources()V
    .locals 2

    .line 555
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "populateSources() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->size()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 559
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->expand()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetSources()V
    .locals 2

    .line 548
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "resetSources() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 182
    sget-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->TAG:Ljava/lang/String;

    const-string v1, "close() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    .line 187
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedLoader:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method
