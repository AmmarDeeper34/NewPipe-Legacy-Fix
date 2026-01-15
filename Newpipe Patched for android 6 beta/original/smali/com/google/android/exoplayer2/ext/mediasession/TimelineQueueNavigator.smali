.class public abstract Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;
.super Ljava/lang/Object;
.source "TimelineQueueNavigator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_QUEUE_SIZE:I = 0xa


# instance fields
.field private activeQueueItemId:J

.field private final maxQueueSize:I

.field private final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    const/16 v0, 0xa

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 81
    iput p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

    const-wide/16 p1, -0x1

    .line 82
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V
    .locals 14

    .line 184
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    const-wide/16 v0, -0x1

    .line 187
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    return-void

    .line 190
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 191
    iget v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 194
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v3

    .line 195
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 197
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    int-to-long v6, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 195
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v4

    move v5, v3

    :cond_1
    :goto_0
    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    if-eq v5, v8, :cond_4

    .line 204
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-ge v9, v2, :cond_4

    const/4 v9, 0x0

    if-eq v5, v8, :cond_3

    .line 208
    invoke-virtual {v0, v5, v9, v4}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 211
    new-instance v10, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 213
    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v11

    int-to-long v12, v5

    invoke-direct {v10, v11, v12, v13}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 211
    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eq v3, v8, :cond_1

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v10

    if-ge v10, v2, :cond_1

    .line 218
    invoke-virtual {v0, v3, v9, v4}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 221
    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 223
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    int-to-long v10, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 221
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 228
    iput-wide v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    return-void
.end method


# virtual methods
.method public final getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    return-wide v0
.end method

.method public abstract getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;
.end method

.method public getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 5

    .line 105
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    .line 110
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 111
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    .line 112
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 113
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 114
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v4, :cond_4

    :cond_3
    const/16 v4, 0x8

    .line 115
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    move p1, v2

    move v2, v0

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_3
    if-eqz v2, :cond_7

    const-wide/16 v0, 0x1000

    goto :goto_4

    :cond_7
    const-wide/16 v0, 0x0

    :goto_4
    if-eqz v3, :cond_8

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_8
    if-eqz p1, :cond_9

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    :cond_9
    return-wide v0
.end method

.method public onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 5

    .line 138
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    :cond_1
    return-void

    .line 140
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public onSkipToNext(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 170
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    return-void
.end method

.method public onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 153
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V
    .locals 2

    .line 158
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p3, p2

    if-ltz p3, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p2

    if-ge p3, p2, :cond_1

    .line 164
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method
