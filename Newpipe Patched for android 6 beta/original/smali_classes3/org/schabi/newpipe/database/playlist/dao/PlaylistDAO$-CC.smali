.class public abstract synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO$-CC;
.super Ljava/lang/Object;
.source "PlaylistDAO.kt"


# direct methods
.method public static $default$upsertPlaylist(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J
    .locals 5

    .line 0
    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getUid()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 44
    :cond_0
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    .line 45
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getUid()J

    move-result-wide p0

    return-wide p0
.end method
