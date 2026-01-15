.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;
.super Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;
.source "StreamHistoryDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfStreamHistoryEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfStreamHistoryEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfStreamHistoryEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$7g-OfV05FYxmZRrgyn9P21s3HRs(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$9OlF46L8ruTdhKp_r1n4lj3NMgU(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->getStatistics$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IhFwf81nlilW1NnbqOUw_6zZN9E(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->delete$lambda$0(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SGUDApycgbW36xMhPZDC_UtU7X8(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->getHistory$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TI57PQaHhnGaJeT_Fepnr8L2ZG8(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->getHistorySortedById$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XTKsPEGa908cLQTX0TMiO_K6KNo(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aStKcm3VprQ3jSfSkzeE6vdfBWE(Ljava/lang/String;JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->getLatestEntry$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c_bU6sVLoGlo22gb4pxK3YkKwOw(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->deleteStreamHistory$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->Companion:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;-><init>()V

    .line 48
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 54
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 55
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__insertAdapterOfStreamHistoryEntity:Landroidx/room/EntityInsertAdapter;

    .line 71
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__deleteAdapterOfStreamHistoryEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 86
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__updateAdapterOfStreamHistoryEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private final _privateGetHistory()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "streams"

    const-string v2, "stream_history"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda2;

    const-string v3, "SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY access_date DESC"

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method private final _privateGetHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 297
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "streams"

    const-string v2, "stream_history"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY uid ASC"

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    return-object p0
.end method

.method private static final delete$lambda$0(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__deleteAdapterOfStreamHistoryEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 127
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 582
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 583
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final deleteStreamHistory$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 596
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 597
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 598
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getHistory$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 43

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 184
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 186
    :try_start_0
    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 187
    const-string v3, "service_id"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 188
    const-string v4, "url"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 189
    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 190
    const-string v6, "stream_type"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 191
    const-string v7, "duration"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 192
    const-string v8, "uploader"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 193
    const-string v9, "uploader_url"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 194
    const-string v10, "thumbnail_url"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 195
    const-string v11, "view_count"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 197
    const-string v12, "textual_upload_date"

    .line 196
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 198
    const-string v13, "upload_date"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 200
    const-string v14, "is_upload_date_approximation"

    .line 199
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 201
    const-string v15, "stream_id"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v14

    .line 202
    const-string v14, "access_date"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    move/from16 p2, v13

    .line 203
    const-string v13, "repeat_count"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    move/from16 v16, v12

    .line 204
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 208
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    .line 211
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_0

    move/from16 v25, v14

    move-object/from16 v14, v18

    :goto_1
    move/from16 v17, v15

    goto :goto_2

    .line 214
    :cond_0
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 v25, v14

    move-object/from16 v14, v17

    goto :goto_1

    .line 216
    :goto_2
    iget-object v15, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v15, v14}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 223
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v23

    .line 226
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    .line 228
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v15, v14

    .line 230
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v30

    .line 232
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v31

    .line 235
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v42, v2

    .line 236
    iget-object v2, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v2, v14}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v32

    .line 238
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v33

    .line 240
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v35

    .line 242
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v36, v18

    goto :goto_3

    .line 245
    :cond_1
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    .line 248
    :goto_3
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v37, v18

    goto :goto_4

    .line 251
    :cond_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v37, v2

    .line 254
    :goto_4
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v38, v18

    :goto_5
    move/from16 v2, v16

    goto :goto_6

    .line 257
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v38, v2

    goto :goto_5

    .line 260
    :goto_6
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v39, v18

    :goto_7
    move/from16 v14, p2

    goto :goto_8

    .line 263
    :cond_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v39, v14

    goto :goto_7

    .line 267
    :goto_8
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 p2, v2

    move-object/from16 v2, v18

    :goto_9
    move/from16 v16, v3

    goto :goto_a

    .line 270
    :cond_5
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p2, v2

    move-object/from16 v2, v16

    goto :goto_9

    .line 272
    :goto_a
    iget-object v3, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v40

    move/from16 v2, p0

    .line 275
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 p0, v4

    move-object/from16 v3, v18

    goto :goto_b

    :cond_6
    move/from16 p0, v4

    .line 278
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_8

    .line 280
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_c

    :cond_7
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    :cond_8
    move-object/from16 v41, v18

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    .line 282
    :goto_d
    new-instance v19, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move/from16 v29, v15

    move-object/from16 v26, v19

    invoke-direct/range {v26 .. v41}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    move-object/from16 v19, v26

    .line 283
    new-instance v18, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V

    move-object/from16 v3, v18

    .line 284
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p0

    move/from16 p0, v2

    move/from16 v3, v16

    move/from16 v15, v17

    move/from16 v2, v42

    move/from16 v16, p2

    move/from16 p2, v14

    move/from16 v14, v25

    goto/16 :goto_0

    .line 217
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 218
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v12

    :goto_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getHistorySortedById$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 43

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 298
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 300
    :try_start_0
    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 301
    const-string v3, "service_id"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 302
    const-string v4, "url"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 303
    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 304
    const-string v6, "stream_type"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 305
    const-string v7, "duration"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 306
    const-string v8, "uploader"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 307
    const-string v9, "uploader_url"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 308
    const-string v10, "thumbnail_url"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 309
    const-string v11, "view_count"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 311
    const-string v12, "textual_upload_date"

    .line 310
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 312
    const-string v13, "upload_date"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 314
    const-string v14, "is_upload_date_approximation"

    .line 313
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 315
    const-string v15, "stream_id"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v14

    .line 316
    const-string v14, "access_date"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    move/from16 p2, v13

    .line 317
    const-string v13, "repeat_count"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    move/from16 v16, v12

    .line 318
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 322
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    .line 325
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_0

    move/from16 v25, v14

    move-object/from16 v14, v18

    :goto_1
    move/from16 v17, v15

    goto :goto_2

    .line 328
    :cond_0
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 v25, v14

    move-object/from16 v14, v17

    goto :goto_1

    .line 330
    :goto_2
    iget-object v15, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v15, v14}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 337
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v23

    .line 340
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    .line 342
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v15, v14

    .line 344
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v30

    .line 346
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v31

    .line 349
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v42, v2

    .line 350
    iget-object v2, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v2, v14}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v32

    .line 352
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v33

    .line 354
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v35

    .line 356
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v36, v18

    goto :goto_3

    .line 359
    :cond_1
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    .line 362
    :goto_3
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v37, v18

    goto :goto_4

    .line 365
    :cond_2
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v37, v2

    .line 368
    :goto_4
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v38, v18

    :goto_5
    move/from16 v2, v16

    goto :goto_6

    .line 371
    :cond_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v38, v2

    goto :goto_5

    .line 374
    :goto_6
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v39, v18

    :goto_7
    move/from16 v14, p2

    goto :goto_8

    .line 377
    :cond_4
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v39, v14

    goto :goto_7

    .line 381
    :goto_8
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 p2, v2

    move-object/from16 v2, v18

    :goto_9
    move/from16 v16, v3

    goto :goto_a

    .line 384
    :cond_5
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p2, v2

    move-object/from16 v2, v16

    goto :goto_9

    .line 386
    :goto_a
    iget-object v3, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v40

    move/from16 v2, p0

    .line 389
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 p0, v4

    move-object/from16 v3, v18

    goto :goto_b

    :cond_6
    move/from16 p0, v4

    .line 392
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_8

    .line 394
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_c

    :cond_7
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    :cond_8
    move-object/from16 v41, v18

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    .line 396
    :goto_d
    new-instance v19, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move/from16 v29, v15

    move-object/from16 v26, v19

    invoke-direct/range {v26 .. v41}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    move-object/from16 v19, v26

    .line 397
    new-instance v18, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V

    move-object/from16 v3, v18

    .line 398
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p0

    move/from16 p0, v2

    move/from16 v3, v16

    move/from16 v15, v17

    move/from16 v2, v42

    move/from16 v16, p2

    move/from16 p2, v14

    move/from16 v14, v25

    goto/16 :goto_0

    .line 331
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 332
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v12

    :goto_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getLatestEntry$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
    .locals 8

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    .line 414
    :try_start_0
    invoke-interface {p0, p4, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 415
    const-string p1, "stream_id"

    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p1

    .line 416
    const-string p2, "access_date"

    invoke-static {p0, p2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p2

    .line 417
    const-string p4, "repeat_count"

    invoke-static {p0, p4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p4

    .line 419
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 421
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    .line 424
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 429
    :goto_0
    iget-object p1, p3, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 436
    invoke-interface {p0, p4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    .line 437
    new-instance v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 430
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 431
    const-string p2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v1

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getStatistics$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 31

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 466
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 485
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0xd

    .line 489
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    const/16 v3, 0xe

    .line 492
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 495
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 497
    :goto_1
    iget-object v4, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v10

    if-eqz v10, :cond_9

    const/16 v3, 0xf

    .line 504
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    const/16 v3, 0x10

    .line 506
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x0

    .line 509
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    const/4 v4, 0x1

    move-wide/from16 v29, v6

    .line 511
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v6, v5

    const/4 v5, 0x2

    .line 513
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x3

    .line 515
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x4

    .line 518
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 519
    iget-object v7, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v7, v5}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v19

    const/4 v5, 0x5

    .line 521
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    const/4 v5, 0x6

    .line 523
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v22

    const/4 v5, 0x7

    .line 525
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v23, 0x0

    goto :goto_2

    .line 528
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    :goto_2
    const/16 v5, 0x8

    .line 531
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v24, 0x0

    goto :goto_3

    .line 534
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    :goto_3
    const/16 v5, 0x9

    .line 537
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v25, 0x0

    goto :goto_4

    .line 540
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v25, v5

    :goto_4
    const/16 v5, 0xa

    .line 543
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v26, 0x0

    goto :goto_5

    .line 546
    :cond_4
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    :goto_5
    const/16 v5, 0xb

    .line 550
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    goto :goto_6

    .line 553
    :cond_5
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 555
    :goto_6
    iget-object v7, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v7, v5}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v27

    const/16 v5, 0xc

    .line 558
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    goto :goto_7

    .line 561
    :cond_6
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_8

    .line 563
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v28, v5

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_8
    const/16 v28, 0x0

    .line 565
    :goto_9
    new-instance v13, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move/from16 v16, v6

    invoke-direct/range {v13 .. v28}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    .line 567
    new-instance v4, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    move-object v5, v13

    move-wide/from16 v6, v29

    invoke-direct/range {v4 .. v12}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJLj$/time/OffsetDateTime;J)V

    .line 568
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 498
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 499
    const-string v2, "Expected NON-NULL \'java.time.OffsetDateTime\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v2

    :goto_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__insertAdapterOfStreamHistoryEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->delete(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    return-void
.end method

.method public delete(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public deleteAll()I
    .locals 4

    .line 579
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda3;

    const-string v2, "DELETE FROM stream_history"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public deleteStreamHistory(J)I
    .locals 3

    .line 592
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda7;

    const-string v2, "DELETE FROM stream_history WHERE stream_id = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getHistory()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->_privateGetHistory()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->_privateGetHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getLatestEntry(J)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
    .locals 3

    .line 410
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda6;

    const-string v2, "SELECT * FROM stream_history WHERE stream_id = ? ORDER BY access_date DESC LIMIT 1"

    invoke-direct {v1, v2, p1, p2, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    return-object p1
.end method

.method public getStatistics()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 464
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "stream_history"

    const-string v2, "stream_state"

    const-string v3, "streams"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `latestAccess`, `watchCount`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (\n            SELECT stream_id, MAX(access_date) AS latestAccess, SUM(repeat_count) AS watchCount\n            FROM stream_history\n            GROUP BY stream_id\n        )\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n        )"

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 33
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->insert(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)J
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
