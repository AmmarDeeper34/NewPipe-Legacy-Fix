.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromHistoryMediaId(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $streamId:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;->$streamId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;->apply(Ljava/util/List;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 7

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-wide v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromHistoryMediaId$1;->$streamId:J

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 222
    invoke-virtual {v4}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->getStreamId()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1563
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 223
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v1

    .line 1635
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
