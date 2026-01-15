.class public Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;
.super Ljava/lang/Object;
.source "RemotePlaylistManager.java"


# instance fields
.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private final playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;


# direct methods
.method public static synthetic $r8$lambda$DkKBehi9K4M_u2X3Va4NKQ-ftss(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->lambda$updatePlaylists$2(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3cwr7gktEuqW2m9_puDTnnNghc(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;J)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->lambda$deletePlaylist$0(J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bsC1IeJY1Df2UFz5pQze6mnVoKQ(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->lambda$updatePlaylists$1(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iUQbSSxKHyk2wl2xYxFqKtOhHrA(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->lambda$onBookmark$3(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wqNrSX2Nytyc7CFiqgBd62HF4sA(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->lambda$onUpdate$4(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/AppDatabase;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    return-void
.end method

.method private synthetic lambda$deletePlaylist$0(J)Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->deletePlaylist(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onBookmark$3(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Ljava/lang/Long;
    .locals 2

    .line 57
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    .line 58
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->upsert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onUpdate$4(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)Ljava/lang/Integer;
    .locals 1

    .line 64
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    .line 65
    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->setUid(J)V

    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$updatePlaylists$1(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 47
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->deletePlaylist(J)I

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {v0, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->upsert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J

    goto :goto_1

    :cond_1
    return-void
.end method

.method private synthetic lambda$updatePlaylists$2(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deletePlaylist(J)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 39
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 40
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylist(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->getPlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 35
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->playlistRemoteTable:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;

    invoke-interface {v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->getPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onBookmark(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 56
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 59
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onUpdate(JLorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 63
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public updatePlaylists(Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    .line 45
    new-instance v0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 52
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method
