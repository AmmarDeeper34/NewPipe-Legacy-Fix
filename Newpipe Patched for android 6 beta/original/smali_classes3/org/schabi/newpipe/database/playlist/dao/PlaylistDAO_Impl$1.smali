.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "PlaylistDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 50
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 57
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getThumbnailStreamId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 59
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->getDisplayIndex()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "INSERT OR ABORT INTO `playlists` (`uid`,`name`,`is_thumbnail_permanent`,`thumbnail_stream_id`,`display_index`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
