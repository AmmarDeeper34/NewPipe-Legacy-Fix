.class public Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;
.super Ljava/lang/Object;
.source "ManagedMediaSourcePlaylist.java"


# instance fields
.field private final internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;


# direct methods
.method public static synthetic $r8$lambda$U_KL9aQEJU-TSXRKFDVwxbZAdCk(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;
    .locals 1

    .line 45
    const-class v0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    invoke-interface {p0, v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeExtras(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    new-instance v1, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    new-array v3, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expand()V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->append(Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 44
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    invoke-virtual {p1, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getParentMediaSource()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    return-object v0
.end method

.method public declared-synchronized invalidate(ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized move(II)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->moveMediaSource(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 104
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 87
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public size()I
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    return v0
.end method

.method public declared-synchronized update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 176
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 161
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
