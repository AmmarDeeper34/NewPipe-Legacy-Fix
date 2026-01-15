.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "PlaylistStreamDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getPlaylistUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 79
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getStreamUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getIndex()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getPlaylistUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getIndex()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x5

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "UPDATE OR ABORT `playlist_stream_join` SET `playlist_id` = ?,`stream_id` = ?,`join_index` = ? WHERE `playlist_id` = ? AND `join_index` = ?"

    return-object v0
.end method
