.class public abstract Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;
.super Ljava/lang/Object;
.source "MergedPlaylistManager.java"


# direct methods
.method private static addItem(Ljava/util/List;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/List;)V
    .locals 2

    .line 78
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-interface {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 82
    invoke-static {p0, p2}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->addItemsWithSameIndex(Ljava/util/List;Ljava/util/List;)V

    .line 83
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 85
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addItemsWithSameIndex(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 90
    new-instance v0, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager$$ExternalSyntheticLambda1;-><init>()V

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 92
    invoke-static {v1}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getMergedOrderedPlaylists(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->getPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager$$ExternalSyntheticLambda0;-><init>()V

    .line 27
    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 55
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {v4}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 56
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    invoke-virtual {v6}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 57
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {v0, v4, v1}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->addItem(Ljava/util/List;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {v0, v4, v1}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->addItem(Ljava/util/List;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_2

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {v0, p0, v1}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->addItem(Ljava/util/List;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 70
    :cond_2
    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->addItemsWithSameIndex(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
