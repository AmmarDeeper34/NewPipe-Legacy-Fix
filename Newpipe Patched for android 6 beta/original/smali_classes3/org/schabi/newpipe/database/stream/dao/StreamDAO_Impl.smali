.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;
.super Lorg/schabi/newpipe/database/stream/dao/StreamDAO;
.source "StreamDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfStreamEntity:Landroidx/room/EntityInsertAdapter;

.field private final __insertAdapterOfStreamEntity_1:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$1vvSKJgbZF7syjBrVQ1g8uUYeDw(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->getStream$lambda$0(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$59RaF1BUAcAb2QukTbcMJ0bGCaE(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->silentInsertInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$Ipf7sQLqUdY4CCpUs59ZCgZYJTs(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsertAll$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q0R8WqkxjACQ3UpWf8K790Y0eqs(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->deleteOrphans$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UcfFBfi5zBE96Nk1T_8T0RWfZ1A(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VXb5d84I15a2YlFoop_Apu30vE8(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->getMinimalStreamForCompare$lambda$0(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YKn9bM_5gSR4AKFbLmtOcNf0MJQ(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$YovdR9TXGUh0-FFrbd5rJfC2yBw(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->update$lambda$1(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bbdsHeI9L7duun7s5M8ag9CGIlQ(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->exists$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tsfbea5zdsmaVLeR0DKBSX2OcZc(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->silentInsertAllInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;-><init>()V

    .line 40
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 49
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$1;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__insertAdapterOfStreamEntity:Landroidx/room/EntityInsertAdapter;

    .line 102
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__insertAdapterOfStreamEntity_1:Landroidx/room/EntityInsertAdapter;

    .line 155
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__deleteAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 162
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$4;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$4;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__updateAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method public static final synthetic access$get__converters$p(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)Lorg/schabi/newpipe/database/Converters;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    return-object p0
.end method

.method private static final deleteOrphans$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 689
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 690
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final exists$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Z
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 553
    :try_start_0
    invoke-interface {p0, p3, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long v0, p2

    .line 555
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 557
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 559
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move p2, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 566
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p2

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getMinimalStreamForCompare$lambda$0(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
    .locals 10

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    .line 583
    :try_start_0
    invoke-interface {p0, p4, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    int-to-long p1, p2

    const/4 v0, 0x2

    .line 585
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 593
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 595
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    .line 598
    invoke-interface {p0, p4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v4, p3, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v4, v1}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 601
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v5, p2

    goto :goto_0

    .line 604
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v0, 0x3

    .line 608
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    .line 611
    :cond_1
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 613
    :goto_1
    iget-object p3, p3, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p3, v0}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v6

    const/4 p3, 0x4

    .line 616
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p3, p2

    goto :goto_2

    .line 619
    :cond_2
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_2
    if-eqz p3, :cond_4

    .line 621
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p4, 0x0

    :goto_3
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_4
    move-object v7, p2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :goto_4
    const/4 p1, 0x5

    .line 623
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    .line 625
    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    invoke-direct/range {v1 .. v9}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;-><init>(JLorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v1

    .line 631
    :cond_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getStream$lambda$0(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 33

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "_connection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 456
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    .line 459
    :try_start_0
    invoke-interface {v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v3, 0x2

    move-wide/from16 v4, p2

    .line 461
    invoke-interface {v1, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 462
    const-string v3, "uid"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 463
    const-string v4, "service_id"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 464
    const-string v5, "url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 465
    const-string v6, "title"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 466
    const-string v7, "stream_type"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 467
    const-string v8, "duration"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 468
    const-string v9, "uploader"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 469
    const-string v10, "uploader_url"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 470
    const-string v11, "thumbnail_url"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 471
    const-string v12, "view_count"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 473
    const-string v13, "textual_upload_date"

    .line 472
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 474
    const-string v14, "upload_date"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 476
    const-string v15, "is_upload_date_approximation"

    .line 475
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 481
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    move-object/from16 p2, v2

    move/from16 p1, v3

    .line 483
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v3, v2

    .line 485
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v21

    .line 487
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v22

    .line 490
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v3

    .line 491
    iget-object v3, v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v23

    .line 493
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    .line 495
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v26

    .line 497
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v27, 0x0

    goto :goto_1

    .line 500
    :cond_0
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    .line 503
    :goto_1
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v28, 0x0

    goto :goto_2

    .line 506
    :cond_1
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v2

    .line 509
    :goto_2
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v29, 0x0

    goto :goto_3

    .line 512
    :cond_2
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v29, v2

    .line 515
    :goto_3
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v30, 0x0

    goto :goto_4

    .line 518
    :cond_3
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    .line 522
    :goto_4
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    .line 525
    :cond_4
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 527
    :goto_5
    iget-object v3, v0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v31

    .line 530
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_6

    .line 533
    :cond_5
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_7

    .line 535
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_7
    const/16 v32, 0x0

    .line 537
    :goto_8
    new-instance v17, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct/range {v17 .. v32}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    .line 538
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    move/from16 v3, p1

    goto/16 :goto_0

    :cond_8
    move-object v3, v2

    .line 542
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v3

    :goto_9
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final silentInsertAllInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__insertAdapterOfStreamEntity_1:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final silentInsertInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__insertAdapterOfStreamEntity_1:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__updateAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final update$lambda$1(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/Collection;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__updateAdapterOfStreamEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handleMultiple(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)I

    .line 259
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final upsert$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final upsertAll$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteOrphans()I
    .locals 4

    .line 686
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda2;

    const-string v2, "\n        DELETE FROM streams WHERE\n\n        NOT EXISTS (SELECT 1 FROM stream_history sh\n        WHERE sh.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM playlist_stream_join ps\n        WHERE ps.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM feed f\n        WHERE f.stream_id = streams.uid)\n        "

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public exists$app_release(ILjava/lang/String;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda5;

    const-string v2, "SELECT COUNT(*) != 0 FROM streams WHERE url = ? AND service_id = ?"

    invoke-direct {v1, v2, p2, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getMinimalStreamForCompare$app_release(ILjava/lang/String;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;

    const-string v2, "\n        SELECT uid, stream_type, textual_upload_date, upload_date, is_upload_date_approximation, duration \n        FROM streams WHERE url = ? AND service_id = ?\n        "

    invoke-direct {v1, v2, p2, p1, p0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    return-object p1
.end method

.method public getStream(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 8

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "streams"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM streams WHERE url = ? AND service_id = ?"

    move-object v7, p0

    move-wide v5, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public silentInsertInternal$app_release(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J
    .locals 3

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

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

    .line 31
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->update(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public update(Ljava/util/Collection;)V
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/Collection;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J
    .locals 3

    const-string v0, "newerStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
