.class public interface abstract Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;
.super Ljava/lang/Object;
.source "PlaylistRemoteDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# virtual methods
.method public abstract deletePlaylist(J)I
.end method

.method public abstract getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getPlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getPlaylistIdInternal(JLjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getPlaylists()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract upsert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J
.end method
