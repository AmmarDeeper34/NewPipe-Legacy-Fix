.class public final Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;
.super Lorg/schabi/newpipe/database/feed/dao/FeedDAO;
.source "FeedDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfFeedEntity:Landroidx/room/EntityInsertAdapter;

.field private final __insertAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$-xnh-Zsg6PTv8Hw8GwhP9hgPBR0(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->getStreams$lambda$0(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2U16OPp7fJQ0tTaTZvyye3LrNYA(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->unlinkStreamsOlderThan$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4hq2pDuM_E0wLvS8P9CXTE7CNIk(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->updateLastUpdated$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5tI1mtnAyasnVsUs8jk8wMCMiMA(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->oldestSubscriptionUpdateFromAll$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BgriqwNIoGlTT3jUs5_lm0i49w4(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->unlinkOldLivestreams$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CRbQ7AmYV86S3zaxhklScbVov-o(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->notLoadedCount$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H--Ssr4u1nid0MnMzOEb4QlYxvc(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->insertLastUpdated$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$Kqe4h-KTXxK7FWO1wXpSWg-WKMc(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->getAllOutdated$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PH0ybozmNl0UnlK4jLn-88Y9xq8(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->insertAll$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qk7nLXuHNccFTnah-0_QBiHHFzc(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->setLastUpdatedForSubscription$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XWZQXJA3KcGBdJbJf_QDPzN3kgQ(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->getAllOutdatedForGroup$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d7fIB2hn8SbhVZ7GuBbpqlO1P1w(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->notLoadedCountForGroup$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eOkXaFHQI5k0BKA3UKlajoBff8E(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->getOutdatedWithNotificationMode$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wnKO5btZa2JDjTnqZgFME9bae60(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->oldestSubscriptionUpdate$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;-><init>()V

    .line 45
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 51
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedEntity:Landroidx/room/EntityInsertAdapter;

    .line 60
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityInsertAdapter;

    .line 76
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__updateAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method public static final synthetic access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)Lorg/schabi/newpipe/database/Converters;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    return-object p0
.end method

.method private static final getAllOutdated$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 440
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    move-object/from16 v0, p1

    .line 443
    :try_start_0
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 445
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 447
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 449
    :goto_0
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 450
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 451
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 452
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 453
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 454
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 455
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 456
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 457
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 458
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 461
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 463
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 465
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    move-object v15, v11

    goto :goto_2

    .line 468
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 471
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v16, v11

    goto :goto_3

    .line 474
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 477
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v17, v11

    goto :goto_4

    .line 480
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 483
    :goto_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v18, v11

    goto :goto_5

    .line 486
    :cond_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 489
    :goto_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_6
    move-object/from16 v19, v11

    goto :goto_7

    .line 492
    :cond_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 495
    :goto_7
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 497
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 498
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 502
    :cond_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getAllOutdatedForGroup$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p5

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 524
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 527
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    move-object/from16 v0, p3

    .line 529
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 531
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 533
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 535
    :goto_0
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 536
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 537
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 538
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 539
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 540
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 541
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 542
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 543
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 544
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 547
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 549
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 551
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    move-object v15, v11

    goto :goto_2

    .line 554
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 557
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v16, v11

    goto :goto_3

    .line 560
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 563
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v17, v11

    goto :goto_4

    .line 566
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 569
    :goto_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v18, v11

    goto :goto_5

    .line 572
    :cond_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 575
    :goto_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_6
    move-object/from16 v19, v11

    goto :goto_7

    .line 578
    :cond_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 581
    :goto_7
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 583
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 584
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 588
    :cond_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getOutdatedWithNotificationMode$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p4

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 609
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    move-object/from16 v0, p1

    .line 612
    :try_start_0
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 614
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 616
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v2, p3

    int-to-long v2, v2

    .line 619
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 620
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 621
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 622
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 623
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 624
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 625
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 626
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 627
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 628
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 629
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 632
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 634
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 636
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    move-object v15, v11

    goto :goto_2

    .line 639
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 642
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v16, v11

    goto :goto_3

    .line 645
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 648
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v17, v11

    goto :goto_4

    .line 651
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 654
    :goto_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v18, v11

    goto :goto_5

    .line 657
    :cond_4
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 660
    :goto_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_6
    move-object/from16 v19, v11

    goto :goto_7

    .line 663
    :cond_5
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 666
    :goto_7
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 668
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 669
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 673
    :cond_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_8
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getStreams$lambda$0(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 34

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, "_connection"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p0

    .line 183
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    .line 186
    :try_start_0
    invoke-interface {v4, v5, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    .line 188
    invoke-interface {v4, v6, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x3

    .line 190
    invoke-interface {v4, v6, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    move/from16 v1, p3

    int-to-long v6, v1

    .line 193
    invoke-interface {v4, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    move/from16 v1, p4

    int-to-long v6, v1

    .line 196
    invoke-interface {v4, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 198
    iget-object v0, v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 200
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    :goto_0
    iget-object v0, v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 207
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 211
    :goto_1
    const-string v0, "uid"

    invoke-static {v4, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 212
    const-string v1, "service_id"

    invoke-static {v4, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 213
    const-string v3, "url"

    invoke-static {v4, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 214
    const-string v6, "title"

    invoke-static {v4, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 215
    const-string v7, "stream_type"

    invoke-static {v4, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 216
    const-string v8, "duration"

    invoke-static {v4, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 217
    const-string v9, "uploader"

    invoke-static {v4, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 218
    const-string v10, "uploader_url"

    invoke-static {v4, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 219
    const-string v11, "thumbnail_url"

    invoke-static {v4, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 220
    const-string v12, "view_count"

    invoke-static {v4, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 222
    const-string v13, "textual_upload_date"

    .line 221
    invoke-static {v4, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 223
    const-string v14, "upload_date"

    invoke-static {v4, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 225
    const-string v15, "is_upload_date_approximation"

    .line 224
    invoke-static {v4, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 226
    const-string v5, "progress_time"

    invoke-static {v4, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    move/from16 p1, v15

    .line 227
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 228
    :goto_2
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 231
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_2

    move/from16 p2, v5

    move-object/from16 v5, v17

    goto :goto_3

    .line 234
    :cond_2
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p2, v5

    move-object/from16 v5, v16

    .line 238
    :goto_3
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    move/from16 p3, v14

    move-object/from16 p4, v15

    .line 240
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v15, v14

    .line 242
    invoke-interface {v4, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v22

    .line 244
    invoke-interface {v4, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v23

    .line 247
    invoke-interface {v4, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    move/from16 p6, v0

    .line 248
    iget-object v0, v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/database/Converters;->streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v24

    .line 250
    invoke-interface {v4, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 252
    invoke-interface {v4, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v27

    .line 254
    invoke-interface {v4, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v28, v17

    goto :goto_4

    .line 257
    :cond_3
    invoke-interface {v4, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    .line 260
    :goto_4
    invoke-interface {v4, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v29, v17

    goto :goto_5

    .line 263
    :cond_4
    invoke-interface {v4, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 266
    :goto_5
    invoke-interface {v4, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v30, v17

    goto :goto_6

    .line 269
    :cond_5
    invoke-interface {v4, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v30, v0

    .line 272
    :goto_6
    invoke-interface {v4, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v31, v17

    :goto_7
    move/from16 v0, p3

    goto :goto_8

    .line 275
    :cond_6
    invoke-interface {v4, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_7

    .line 279
    :goto_8
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v14, v17

    :goto_9
    move/from16 p3, v0

    goto :goto_a

    .line 282
    :cond_7
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_9

    .line 284
    :goto_a
    iget-object v0, v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v32

    move/from16 v0, p1

    .line 287
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move/from16 p1, v1

    move-object/from16 v1, v17

    goto :goto_b

    :cond_8
    move/from16 p1, v1

    .line 290
    invoke-interface {v4, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_a

    .line 292
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    :cond_a
    move-object/from16 v33, v17

    .line 294
    new-instance v18, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move/from16 v21, v15

    invoke-direct/range {v18 .. v33}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    move-object/from16 v1, v18

    .line 295
    new-instance v2, Lorg/schabi/newpipe/database/stream/StreamWithState;

    invoke-direct {v2, v1, v5}, Lorg/schabi/newpipe/database/stream/StreamWithState;-><init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;Ljava/lang/Long;)V

    move-object/from16 v1, p4

    .line 296
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, p2

    move/from16 v14, p3

    move-object/from16 v2, p5

    move-object v15, v1

    move/from16 v1, p1

    move/from16 p1, v0

    move/from16 v0, p6

    goto/16 :goto_2

    :cond_b
    move-object v1, v15

    .line 300
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v1

    :goto_d
    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final insertAll$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final insertLastUpdated$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final notLoadedCount$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 369
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 371
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 374
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

    .line 382
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final notLoadedCountForGroup$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 406
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 408
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 410
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 413
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

    .line 421
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final oldestSubscriptionUpdate$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    .line 319
    :try_start_0
    invoke-interface {p0, p4, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 320
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 324
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 327
    :cond_0
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 329
    :goto_1
    iget-object p4, p3, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p4, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object p2

    .line 330
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 334
    :cond_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final oldestSubscriptionUpdateFromAll$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 344
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 348
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 351
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 353
    :goto_1
    iget-object v1, p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 354
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 358
    :cond_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final setLastUpdatedForSubscription$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->setLastUpdatedForSubscription(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    .line 122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final unlinkOldLivestreams$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 748
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 749
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 753
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 751
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final unlinkStreamsOlderThan$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 714
    :try_start_0
    iget-object p1, p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 716
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 718
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 720
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 724
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 722
    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final updateLastUpdated$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__updateAdapterOfFeedLastUpdatedEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getAllOutdated(Lj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "outdatedThreshold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    const-string v2, "feed_last_updated"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        "

    invoke-direct {v2, v3, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getAllOutdatedForGroup(JLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 8

    const-string v0, "outdatedThreshold"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_group_subscription_join"

    .line 523
    const-string v2, "feed_last_updated"

    const-string v3, "subscriptions"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 522
    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;

    const-string v3, "\n        SELECT s.* FROM subscriptions s\n\n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        "

    move-object v6, p0

    move-wide v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getOutdatedWithNotificationMode(Lj$/time/OffsetDateTime;I)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "outdatedThreshold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    const-string v2, "feed_last_updated"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE \n            (lu.last_updated IS NULL OR lu.last_updated < ?)\n            AND s.notification_mode = ?\n        "

    invoke-direct {v2, v3, p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getStreams(JZZLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 9

    .line 182
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;

    const-string v2, "\n        SELECT s.*, sst.progress_time\n        FROM streams s\n\n        LEFT JOIN stream_state sst\n        ON s.uid = sst.stream_id\n        \n        LEFT JOIN stream_history sh\n        ON s.uid = sh.stream_id\n        \n        INNER JOIN feed f\n        ON s.uid = f.stream_id\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON (\n            ? <> -1\n            AND fgs.subscription_id = f.subscription_id\n        )\n\n        WHERE (\n            ? = -1\n            OR fgs.group_id = ?\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR sst.progress_time < s.duration * 1000 - 60000\n            OR sst.progress_time < s.duration * 1000 * 3 / 4\n            OR s.stream_type = \'LIVE_STREAM\'\n            OR s.stream_type = \'AUDIO_LIVE_STREAM\'\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR (sst.progress_time <= 5000\n            AND sst.progress_time <= s.duration * 1000 / 4)\n            OR (sst.progress_time >= s.duration * 1000 - 60000\n            AND sst.progress_time >= s.duration * 1000 * 3 / 4)\n        )\n        AND (\n            ? IS NULL\n            OR s.upload_date IS NULL\n            OR s.upload_date < ?\n        )\n\n        ORDER BY s.upload_date IS NULL DESC, s.upload_date DESC, s.uploader ASC\n        LIMIT 500\n        "

    move-object v7, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/rxjava3/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public insertLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)J
    .locals 3

    const-string v0, "lastUpdatedEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public notLoadedCount()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 365
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_last_updated"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda10;

    const-string v3, "SELECT COUNT(*) FROM feed_last_updated WHERE last_updated IS NULL"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public notLoadedCountForGroup(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 401
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_group_subscription_join"

    .line 402
    const-string v2, "feed_last_updated"

    const-string v3, "subscriptions"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 401
    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda5;

    const-string v3, "\n        SELECT COUNT(*) FROM subscriptions s\n        \n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL\n        "

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public oldestSubscriptionUpdate(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 314
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_last_updated"

    const-string v2, "feed_group_subscription_join"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;

    const-string v3, "\n        SELECT MIN(lu.last_updated) FROM feed_last_updated lu\n\n        INNER JOIN feed_group_subscription_join fgs\n        ON fgs.subscription_id = lu.subscription_id AND fgs.group_id = ?\n        "

    invoke-direct {v2, v3, p1, p2, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public oldestSubscriptionUpdateFromAll()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 341
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_last_updated"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;

    const-string v3, "SELECT MIN(last_updated) FROM feed_last_updated"

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public setLastUpdatedForSubscription(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
    .locals 3

    const-string v0, "lastUpdatedEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public unlinkOldLivestreams(J)V
    .locals 3

    .line 744
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda8;

    const-string v2, "\n        DELETE FROM feed\n        \n        WHERE feed.subscription_id = ?\n\n        AND feed.stream_id IN (\n            SELECT s.uid FROM streams s\n\n            INNER JOIN feed f\n            ON s.uid = f.stream_id\n\n            WHERE s.stream_type = \"LIVE_STREAM\" OR s.stream_type = \"AUDIO_LIVE_STREAM\"\n        )\n        "

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public unlinkStreamsOlderThan(Lj$/time/OffsetDateTime;)V
    .locals 3

    const-string v0, "offsetDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda3;

    const-string v2, "\n        DELETE FROM feed\n        WHERE feed.stream_id IN (SELECT uid from (\n              SELECT s.uid,\n              (SELECT MAX(upload_date)\n                    FROM streams s1\n                    INNER JOIN feed f1\n                    ON s1.uid = f1.stream_id\n                    WHERE f1.subscription_id = f.subscription_id) max_upload_date\n              FROM streams s\n              INNER JOIN feed f\n              ON s.uid = f.stream_id\n        \n              WHERE s.upload_date < ?\n              AND   s.upload_date <> max_upload_date))\n        "

    invoke-direct {v1, v2, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public updateLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
    .locals 3

    const-string v0, "lastUpdatedEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
