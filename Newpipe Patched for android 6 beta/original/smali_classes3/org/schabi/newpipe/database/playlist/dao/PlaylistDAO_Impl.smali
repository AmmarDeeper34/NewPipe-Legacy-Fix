.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;
.super Ljava/lang/Object;
.source "PlaylistDAO_Impl.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfPlaylistEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfPlaylistEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfPlaylistEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$EJmhvCzmEtbncgeKiFDNecdvrMQ(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->getCount$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MPigO8J6TqXjVvJ7ar1WyTphLuI(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VxGGEtz5jzawoZESj-44aSA6kMQ(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->getPlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lL81Z4X5HOiDm_0bnFb1rCRbspI(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->deletePlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nI_JbNKZocClF0zamdfmDxKiU1o(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$sTqsju3L3Om46sEJzVdiSgvcEfg(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->upsertPlaylist$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 44
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__insertAdapterOfPlaylistEntity:Landroidx/room/EntityInsertAdapter;

    .line 62
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__deleteAdapterOfPlaylistEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 69
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__updateAdapterOfPlaylistEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private final _privateGetCount()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlists"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "SELECT COUNT(*) FROM playlists"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private static final deletePlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 255
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 256
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 257
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getCount$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 218
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 220
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getPlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 170
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 173
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 174
    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 175
    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 177
    const-string v4, "is_thumbnail_permanent"

    .line 176
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 179
    const-string v5, "thumbnail_stream_id"

    .line 178
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 180
    const-string v6, "display_index"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    .line 187
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_1
    move-object v12, v8

    goto :goto_2

    .line 190
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 194
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v9, v8

    if-eqz v9, :cond_1

    const/4 v13, 0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 197
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    .line 199
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v16

    .line 201
    new-instance v9, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-direct/range {v9 .. v17}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJ)V

    .line 202
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 206
    :cond_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v7

    :goto_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__insertAdapterOfPlaylistEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__updateAdapterOfPlaylistEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final upsertPlaylist$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO$-CC;->$default$upsertPlaylist(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public deletePlaylist(J)I
    .locals 3

    .line 251
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;

    const-string v2, "DELETE FROM playlists WHERE uid = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getCount()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->_privateGetCount()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlists"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM playlists WHERE uid = ?"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 27
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->insert(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->update(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public upsertPlaylist(Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)J
    .locals 3

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
