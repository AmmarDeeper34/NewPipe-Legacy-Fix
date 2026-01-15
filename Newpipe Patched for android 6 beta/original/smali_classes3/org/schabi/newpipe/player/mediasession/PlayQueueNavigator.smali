.class public Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;
.super Ljava/lang/Object;
.source "PlayQueueNavigator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;


# instance fields
.field private activeQueueItemId:J

.field private final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 41
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    const-wide/16 p1, -0x1

    .line 43
    iput-wide p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    return-void
.end method

.method private publishFloatingQueueWindow()V
    .locals 9

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda6;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v2

    const/16 v3, 0xa

    .line 104
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 105
    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    sub-int/2addr v0, v3

    invoke-static {v4, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_0
    add-int v5, v0, v3

    if-ge v4, v5, :cond_1

    .line 110
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->getQueueMetadata(I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v6

    int-to-long v7, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    int-to-long v0, v2

    .line 113
    iput-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    return-void
.end method


# virtual methods
.method public getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J
    .locals 2

    .line 71
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getQueueMetadata(I)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 7

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 125
    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 136
    const-string p1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 137
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 138
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result p1

    int-to-long v3, p1

    const-string p1, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 143
    :try_start_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 2

    .line 0
    const-wide/16 v0, 0x1030

    return-wide v0
.end method

.method public onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 5

    .line 60
    iget-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 61
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    :cond_1
    return-void

    .line 62
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->publishFloatingQueueWindow()V

    return-void
.end method

.method public onSkipToNext(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playNext()V

    return-void
.end method

.method public onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V
    .locals 1

    .line 82
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    long-to-int p3, p2

    invoke-virtual {v0, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->publishFloatingQueueWindow()V

    return-void
.end method
