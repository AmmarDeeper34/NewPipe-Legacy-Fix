.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateRemotePlaylist(J)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $playlistId:J

.field final synthetic this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    iput-wide p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;->$playlistId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;->apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Ljava/util/List;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object p1

    const-string v0, "getRelatedItems(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    iget-wide v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$2;->$playlistId:J

    .line 1573
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1605
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    .line 1606
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 371
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2, v5, v4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->access$createRemotePlaylistStreamMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;JLorg/schabi/newpipe/extractor/stream/StreamInfoItem;I)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v4

    .line 1606
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method
