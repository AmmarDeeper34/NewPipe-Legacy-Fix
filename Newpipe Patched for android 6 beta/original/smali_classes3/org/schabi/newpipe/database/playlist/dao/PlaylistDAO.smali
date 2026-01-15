.class public interface abstract Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;
.super Ljava/lang/Object;
.source "PlaylistDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# virtual methods
.method public abstract deletePlaylist(J)I
.end method

.method public abstract getCount()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract upsertPlaylist(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J
.end method
