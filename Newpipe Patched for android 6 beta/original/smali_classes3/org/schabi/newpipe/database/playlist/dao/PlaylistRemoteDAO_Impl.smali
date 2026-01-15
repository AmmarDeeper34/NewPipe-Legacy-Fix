.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;
.super Ljava/lang/Object;
.source "PlaylistRemoteDAO_Impl.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$2PepNwVDkTk1vqsSLMYBB2HRjwE(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->getPlaylist$lambda$1(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KsVUIIVv8potpn0EpVcs3r31fEc(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->upsert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$O2geSnqlno8uQYbqQZoAvcVZBas(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$TBaPOjIZtRz081DlapsyDHrZAN0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->deletePlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UYAVrt6pmkAZNLFqe0ZNFON-Q-Y(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jr3MRueVZOwtVGr2eqI_wMgmy7c(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->getPlaylistIdInternal$lambda$0(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmG8FflG9SkujUdNnYHsZyr1gsM(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->getPlaylists$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zcn2jHoAI3N8YxzIvgg4NptZvf8(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->getPlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__insertAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityInsertAdapter;

    .line 86
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__deleteAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 95
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__updateAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private final _privateGetPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 442
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "remote_playlists"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "SELECT * FROM remote_playlists ORDER BY display_index"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private static final deletePlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 552
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 553
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 554
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getPlaylist$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;
    .locals 22

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 305
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 308
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 309
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 310
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 311
    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 312
    const-string v4, "url"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 313
    const-string v5, "thumbnail_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 314
    const-string v6, "uploader"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 315
    const-string v7, "display_index"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 316
    const-string v8, "stream_count"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 318
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    .line 320
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 322
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 324
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v15, v10

    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 330
    :goto_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v10

    goto :goto_1

    .line 333
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 336
    :goto_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v17, v10

    goto :goto_2

    .line 339
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 342
    :goto_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v18, v10

    goto :goto_3

    .line 345
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 348
    :goto_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    .line 350
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    move-object/from16 v21, v10

    goto :goto_5

    .line 353
    :cond_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_4

    .line 356
    :goto_5
    new-instance v11, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-direct/range {v11 .. v21}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 362
    :cond_5
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v10

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getPlaylist$lambda$1(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 371
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 377
    :cond_0
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move-wide/from16 v2, p2

    .line 380
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 381
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 382
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 383
    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 384
    const-string v4, "url"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 385
    const-string v5, "thumbnail_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 386
    const-string v6, "uploader"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 387
    const-string v7, "display_index"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 388
    const-string v8, "stream_count"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 389
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 390
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 393
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 395
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 397
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    move-object v15, v11

    goto :goto_2

    .line 400
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 403
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v16, v11

    goto :goto_3

    .line 406
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 409
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v17, v11

    goto :goto_4

    .line 412
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 415
    :goto_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v18, v11

    goto :goto_5

    .line 418
    :cond_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    .line 421
    :goto_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    .line 423
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_6
    move-object/from16 v21, v11

    goto :goto_7

    .line 426
    :cond_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_6

    .line 429
    :goto_7
    new-instance v11, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-direct/range {v11 .. v21}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    .line 430
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 434
    :cond_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getPlaylistIdInternal$lambda$0(Ljava/lang/String;Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    if-nez p1, :cond_0

    .line 510
    :try_start_0
    invoke-interface {p0, p4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 512
    :cond_0
    invoke-interface {p0, p4, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 515
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 517
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 518
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 521
    :cond_1
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getPlaylists$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 443
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 445
    :try_start_0
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 446
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 447
    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 448
    const-string v4, "url"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 449
    const-string v5, "thumbnail_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 450
    const-string v6, "uploader"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 451
    const-string v7, "display_index"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 452
    const-string v8, "stream_count"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 453
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 454
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 457
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 459
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 461
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v15, v11

    goto :goto_1

    .line 464
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 467
    :goto_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v16, v11

    goto :goto_2

    .line 470
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 473
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v17, v11

    goto :goto_3

    .line 476
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 479
    :goto_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v18, v11

    goto :goto_4

    .line 482
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    .line 485
    :goto_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    .line 487
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_5
    move-object/from16 v21, v11

    goto :goto_6

    .line 490
    :cond_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_5

    .line 493
    :goto_6
    new-instance v11, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-direct/range {v11 .. v21}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    .line 494
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 498
    :cond_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__insertAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__updateAdapterOfPlaylistRemoteEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final upsert$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO$-CC;->$default$upsert(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public deletePlaylist(J)I
    .locals 3

    .line 548
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda5;

    const-string v2, "DELETE FROM remote_playlists WHERE uid = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 304
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "remote_playlists"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda3;

    const-string v3, "SELECT * FROM remote_playlists WHERE uid = ?"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylist(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 370
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "remote_playlists"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM remote_playlists WHERE url = ? AND service_id = ?"

    invoke-direct {v2, v3, p3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistIdInternal(JLjava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 505
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda6;

    const-string v2, "SELECT uid FROM remote_playlists WHERE url = ? AND service_id = ?"

    invoke-direct {v1, v2, p3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getPlaylists()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->_privateGetPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 26
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->insert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

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

    .line 26
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->update(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public upsert(Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)J
    .locals 3

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
