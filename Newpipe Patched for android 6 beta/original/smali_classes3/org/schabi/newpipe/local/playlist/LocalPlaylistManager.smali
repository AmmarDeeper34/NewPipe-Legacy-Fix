.class public Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;
.super Ljava/lang/Object;
.source "LocalPlaylistManager.java"


# instance fields
.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private final playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

.field private final playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

.field private final streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;


# direct methods
.method public static synthetic $r8$lambda$-lijVKScaPW1YSrU8biv8jm7kEs(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4

    .line 186
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C4bZtUPgAdvyH7MTfSHsO5dZ8nw(Ljava/util/List;)Z
    .locals 0

    .line 169
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$FKy7dLaa2qBoLZaV-u_89v6i7kE(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/lang/String;JZLjava/util/List;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$modifyPlaylist$9(Ljava/lang/String;JZLjava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J7Rr5my7nieJx2teXoGSI6BxrRw(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$updatePlaylists$7(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rp_i0AROieWAbFk1mVu1iVDnDmc(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$appendToPlaylist$2(Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VRNU0BmUsUMLEGyr7E6Pyt4atjc(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$createPlaylist$1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a7uAO2li4-s4qpi1v2De5MSXdP4(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$appendToPlaylist$3(Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ov0XANulpFOpJGLdSveuKMvp8bI(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$updateJoin$4(JLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFwiVfR_x-9oZpF05yCOgQYXuV8(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$updatePlaylists$6(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4RE7mquKJ19dEniV85b3xikC9c(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$updateJoin$5(JLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-VguNf0nOoTX0gtgyoTHH6_wGE(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->lambda$createPlaylist$0(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/AppDatabase;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 34
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    .line 36
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    return-void
.end method

.method private insertJoinEntities(JLjava/util/List;I)Ljava/util/List;
    .locals 9

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    new-instance v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int v8, v1, p4

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;-><init>(JJI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/database/BasicDAO;->insertAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$appendToPlaylist$2(Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p2, p3, p1, p4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->insertJoinEntities(JLjava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$appendToPlaylist$3(Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;
    .locals 7

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private synthetic lambda$createPlaylist$0(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 50
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    const/4 v7, 0x0

    .line 51
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(Ljava/lang/String;ZJJ)V

    .line 53
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {p2, v0}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, v7}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->insertJoinEntities(JLjava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createPlaylist$1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private synthetic lambda$modifyPlaylist$9(Ljava/lang/String;JZLjava/util/List;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 171
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p5, p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->setName(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, -0x2

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p5, p2, p3}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->setThumbnailStreamId(J)V

    .line 177
    invoke-virtual {p5, p4}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->setThumbnailPermanent(Z)V

    .line 179
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {p1, p5}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$updateJoin$4(JLjava/util/List;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->deleteBatch(J)V

    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {p1, p3}, Lorg/schabi/newpipe/database/BasicDAO;->insertAll(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$updateJoin$5(JLjava/util/List;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updatePlaylists$6(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 102
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->deletePlaylist(J)I

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {v0, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->upsertPlaylist(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J

    goto :goto_1

    :cond_1
    return-void
.end method

.method private synthetic lambda$updatePlaylists$7(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private modifyPlaylist(JLjava/lang/String;JZ)Lio/reactivex/rxjava3/core/Maybe;
    .locals 6

    .line 167
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda5;-><init>()V

    .line 169
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/lang/String;JZ)V

    .line 170
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendToPlaylist(JLjava/util/List;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getMaximumIndexOf(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;J)V

    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public changePlaylistThumbnail(JJZ)Lio/reactivex/rxjava3/core/Maybe;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move v6, p5

    .line 142
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->modifyPlaylist(JLjava/lang/String;JZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public createPlaylist(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 56
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public getAutomaticPlaylistThumbnailStreamId(J)J
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getAutomaticThumbnailStreamId(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    return-wide p1
.end method

.method public getDistinctPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    .line 112
    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getStreamsWithoutDuplicates(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getIsPlaylistThumbnailPermanent(J)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 151
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent()Z

    move-result p1

    return p1
.end method

.method public getPlaylistDuplicates(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getPlaylistDuplicatesMetadata(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistStreams(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getOrderedStreamsOf(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistThumbnailStreamId(J)J
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getThumbnailStreamId()J

    move-result-wide p1

    return-wide p1
.end method

.method public getPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistStreamTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;

    invoke-interface {v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;->getPlaylistMetadata()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public hasPlaylists()Lio/reactivex/rxjava3/core/Maybe;
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->playlistTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;

    invoke-interface {v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;->getCount()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda2;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 187
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public renamePlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 7

    const-wide/16 v4, -0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 136
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->modifyPlaylist(JLjava/lang/String;JZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public updateJoin(JLjava/util/List;)Lio/reactivex/rxjava3/core/Completable;
    .locals 8

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 84
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 85
    new-instance v2, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;-><init>(JJI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v3, p1

    .line 88
    new-instance p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v3, v4, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;JLjava/util/List;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 91
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public updatePlaylists(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;
    .locals 3

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 98
    new-instance v2, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 107
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method
