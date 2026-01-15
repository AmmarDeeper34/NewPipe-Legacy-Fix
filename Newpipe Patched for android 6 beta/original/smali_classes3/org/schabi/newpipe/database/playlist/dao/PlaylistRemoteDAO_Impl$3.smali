.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "PlaylistRemoteDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 103
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 109
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 111
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 115
    :goto_1
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 117
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 119
    :cond_2
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 121
    :goto_2
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUploader()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 123
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 125
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 127
    :goto_3
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getDisplayIndex()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getStreamCount()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 130
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 132
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_4
    const/16 v0, 0x9

    .line 134
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "UPDATE OR ABORT `remote_playlists` SET `uid` = ?,`service_id` = ?,`name` = ?,`url` = ?,`thumbnail_url` = ?,`uploader` = ?,`display_index` = ?,`stream_count` = ? WHERE `uid` = ?"

    return-object v0
.end method
