.class public abstract synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO$-CC;
.super Ljava/lang/Object;
.source "PlaylistRemoteDAO.kt"


# direct methods
.method public static $default$upsert(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J
    .locals 3

    .line 0
    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;->getPlaylistIdInternal(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->setUid(J)V

    .line 48
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
