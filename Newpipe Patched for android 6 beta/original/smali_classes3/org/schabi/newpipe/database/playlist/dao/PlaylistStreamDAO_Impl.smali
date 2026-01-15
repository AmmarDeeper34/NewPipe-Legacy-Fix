.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;
.super Ljava/lang/Object;
.source "PlaylistStreamDAO_Impl.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfPlaylistStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfPlaylistStreamEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfPlaylistStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$6fIKxPONkwgsndHw7bAYLfmP8LU(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->deleteBatch$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hz3sE9WEb3xM38AvLZ0bUNz3-W8(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getPlaylistDuplicatesMetadata$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jb9z0w0gFJ8NqPOcfOFYvkIFjsk(Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->insertAll$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kNDYDamgCjNmsySmDZ4xQ532dpg(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getPlaylistMetadata$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lBlV18tfHbqcHeo8J8ayVpuk39c(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getAutomaticThumbnailStreamId$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oAjJ1TLxarbYEb1a_2bH18YFMCg(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getStreamsWithoutDuplicates$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oyzWqHoyNmgCctTY89TWWiI7bAM(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getOrderedStreamsOf$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qOD4wdiBINmWR82xn8joUgFsqgo(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->getMaximumIndexOf$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 51
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__insertAdapterOfPlaylistStreamEntity:Landroidx/room/EntityInsertAdapter;

    .line 62
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__deleteAdapterOfPlaylistStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 72
    new-instance p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__updateAdapterOfPlaylistStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private static final deleteBatch$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 625
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 626
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 630
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 628
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getAutomaticThumbnailStreamId$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 187
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 189
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 191
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 202
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getMaximumIndexOf$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 151
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 155
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getOrderedStreamsOf$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 28

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 224
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    move-wide/from16 v3, p1

    .line 227
    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xd

    .line 248
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    const/16 v4, 0xe

    .line 250
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v11, v4

    const/16 v4, 0xf

    .line 252
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x0

    .line 255
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    .line 257
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v15, v5

    const/4 v5, 0x2

    .line 259
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x3

    .line 261
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x4

    .line 264
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    iget-object v6, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v6, v5}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v18

    const/4 v5, 0x5

    .line 267
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    const/4 v5, 0x6

    .line 269
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v21

    const/4 v5, 0x7

    .line 271
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    move-object/from16 v22, v12

    goto :goto_1

    .line 274
    :cond_0
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    :goto_1
    const/16 v5, 0x8

    .line 277
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v23, v12

    goto :goto_2

    .line 280
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    :goto_2
    const/16 v5, 0x9

    .line 283
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v24, v12

    goto :goto_3

    .line 286
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v24, v5

    :goto_3
    const/16 v5, 0xa

    .line 289
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v25, v12

    goto :goto_4

    .line 292
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v5

    :goto_4
    const/16 v5, 0xb

    .line 296
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v5, v12

    goto :goto_5

    .line 299
    :cond_4
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 301
    :goto_5
    iget-object v6, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v6, v5}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v26

    const/16 v5, 0xc

    .line 304
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v12

    goto :goto_6

    .line 307
    :cond_5
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_7

    .line 309
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :cond_7
    move-object/from16 v27, v12

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 311
    :goto_7
    new-instance v12, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct/range {v12 .. v27}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 313
    new-instance v5, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    move-object v6, v12

    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJI)V

    .line 314
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 318
    :cond_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v3

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getPlaylistDuplicatesMetadata$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 538
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 541
    :try_start_0
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 543
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v4, 0x3

    .line 545
    invoke-interface {v1, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 558
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    .line 560
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    move-object v15, v9

    goto :goto_1

    .line 563
    :cond_0
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    .line 567
    :goto_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v9

    goto :goto_2

    .line 570
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    .line 572
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v10, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_3
    move-object v10, v9

    .line 574
    :goto_3
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v11, v9

    goto :goto_4

    .line 577
    :cond_4
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v11, v5

    :goto_4
    const/4 v5, 0x4

    .line 580
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v12, v9

    goto :goto_5

    .line 583
    :cond_5
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v12, v5

    :goto_5
    const/4 v5, 0x5

    .line 586
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    .line 589
    :cond_6
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    const/4 v5, 0x6

    .line 592
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    const/4 v5, 0x7

    .line 594
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v16

    .line 596
    new-instance v6, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    invoke-direct/range {v6 .. v17}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;-><init>(JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/String;J)V

    .line 597
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 601
    :cond_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v0

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getPlaylistMetadata$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 349
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 353
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    .line 355
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 358
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v6, 0x2

    .line 362
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v5

    goto :goto_2

    .line 365
    :cond_1
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    .line 367
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_3
    move-object v7, v5

    :goto_3
    const/4 v0, 0x3

    .line 369
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v5

    goto :goto_4

    .line 372
    :cond_4
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    :goto_4
    const/4 v0, 0x4

    .line 375
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v6, v5

    goto :goto_5

    .line 378
    :cond_5
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    :goto_5
    const/4 v0, 0x5

    .line 381
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 384
    :cond_6
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    const/4 v0, 0x6

    .line 387
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    .line 389
    new-instance v1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    invoke-direct/range {v1 .. v10}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    :cond_7
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_7
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getStreamsWithoutDuplicates$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 28

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 417
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    move-wide/from16 v3, p1

    .line 420
    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xd

    .line 441
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    const/16 v4, 0xe

    .line 443
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v11, v4

    const/16 v4, 0xf

    .line 445
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x0

    .line 448
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    .line 450
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v15, v5

    const/4 v5, 0x2

    .line 452
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x3

    .line 454
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x4

    .line 457
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 458
    iget-object v6, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v6, v5}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v18

    const/4 v5, 0x5

    .line 460
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    const/4 v5, 0x6

    .line 462
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v21

    const/4 v5, 0x7

    .line 464
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    move-object/from16 v22, v12

    goto :goto_1

    .line 467
    :cond_0
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    :goto_1
    const/16 v5, 0x8

    .line 470
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v23, v12

    goto :goto_2

    .line 473
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    :goto_2
    const/16 v5, 0x9

    .line 476
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v24, v12

    goto :goto_3

    .line 479
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v24, v5

    :goto_3
    const/16 v5, 0xa

    .line 482
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v25, v12

    goto :goto_4

    .line 485
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v5

    :goto_4
    const/16 v5, 0xb

    .line 489
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v5, v12

    goto :goto_5

    .line 492
    :cond_4
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 494
    :goto_5
    iget-object v6, v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v6, v5}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v26

    const/16 v5, 0xc

    .line 497
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v12

    goto :goto_6

    .line 500
    :cond_5
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_7

    .line 502
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :cond_7
    move-object/from16 v27, v12

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 504
    :goto_7
    new-instance v12, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct/range {v12 .. v27}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 506
    new-instance v5, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    move-object v6, v12

    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJI)V

    .line 507
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 511
    :cond_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v3

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insertAll$lambda$0(Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__insertAdapterOfPlaylistStreamEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteBatch(J)V
    .locals 3

    .line 621
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda5;

    const-string v2, "DELETE FROM playlist_stream_join WHERE playlist_id = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public getAutomaticThumbnailStreamId(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "streams"

    const-string v2, "playlist_stream_join"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda4;

    const-string v3, "\n        SELECT CASE WHEN COUNT(*) != 0 then stream_id ELSE -1 END\n        FROM streams\n\n        LEFT JOIN playlist_stream_join\n        ON uid = stream_id\n\n        WHERE playlist_id = ? LIMIT 1\n        "

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumIndexOf(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlist_stream_join"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda7;

    const-string v3, "SELECT COALESCE(MAX(join_index), -1) FROM playlist_stream_join WHERE playlist_id = ?"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getOrderedStreamsOf(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 222
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlist_stream_join"

    const-string v2, "stream_state"

    const-string v3, "streams"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        ORDER BY join_index ASC\n        )"

    invoke-direct {v2, v3, p1, p2, p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistDuplicatesMetadata(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "streamUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlists"

    const-string v2, "playlist_stream_join"

    const-string v3, "streams"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda6;

    const-string v3, "\n        SELECT playlists.uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount,\n        COALESCE(SUM(url = ?), 0) AS timesStreamIsContained FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        LEFT JOIN streams\n        ON streams.uid = stream_id AND ? = ?\n\n        GROUP BY playlist_id\n        ORDER BY display_index, name\n        "

    invoke-direct {v2, v3, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistMetadata()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 338
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlists"

    const-string v2, "playlist_stream_join"

    const-string v3, "streams"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "\n        SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        GROUP BY uid\n        ORDER BY display_index\n        "

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getStreamsWithoutDuplicates(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 415
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "playlist_stream_join"

    const-string v2, "stream_state"

    const-string v3, "streams"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;

    const-string v3, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT *, MIN(join_index) FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        GROUP BY uid\n        ORDER BY MIN(join_index) ASC\n        )"

    invoke-direct {v2, v3, p1, p2, p0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Ljava/util/Collection;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
