.class public final Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.source "SinglePlayQueue.java"


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 28
    invoke-static {p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;->playQueueItemsOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 17
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 1

    .line 13
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private static playQueueItemsOf(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 34
    new-instance v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public fetch()V
    .locals 0

    .line 0
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
