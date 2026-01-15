.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$2;
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

    .line 86
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "DELETE FROM `remote_playlists` WHERE `uid` = ?"

    return-object v0
.end method
