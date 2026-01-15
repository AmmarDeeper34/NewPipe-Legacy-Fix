.class public interface abstract Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;
.super Ljava/lang/Object;
.source "PlaylistStreamDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# virtual methods
.method public abstract deleteBatch(J)V
.end method

.method public abstract getAutomaticThumbnailStreamId(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getMaximumIndexOf(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getOrderedStreamsOf(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getPlaylistDuplicatesMetadata(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getPlaylistMetadata()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getStreamsWithoutDuplicates(J)Lio/reactivex/rxjava3/core/Flowable;
.end method
