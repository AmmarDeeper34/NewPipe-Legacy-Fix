.class public final Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;
.super Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;
.source "FeedGroupDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfFeedGroupEntity:Landroidx/room/EntityInsertAdapter;

.field private final __insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfFeedGroupEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$1_78bRL9ttxO1nolGCY2jSKKddE(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$8wF9xt4JhoayH3-A9-cWluQdKRM(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/Map;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->updateOrder$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/Map;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$96d4ohjRG7x6zZ9eOZYXG-L3H7o(Ljava/lang/String;JJLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->updateOrder$lambda$1(Ljava/lang/String;JJLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GAyVd6XVl-h2aozMe973rI_Mpuc(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->updateSubscriptionsForGroup$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KObFHEAydnuU9dsQNwY3xBKgAq0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MzUrLT1Qniyx306Cc7qgf7Fodgo(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->insertInternal$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$NRDFPYVc0AJYCepLvCOvjIZd3E0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getSubscriptionIdsFor$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qsyhy3zgZsltm_X9DH8-zNY7Lag(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->deleteSubscriptionsFromGroup$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YkVFUKYXx_vCDY9y5au1XXzsDZI(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getGroup$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jz0dxqqWWf3NI2CgTUslqgDYXrw(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getAll$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yFXxiJ8pHGQIZyxV4_CLzkdVoa0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->nextSortOrder$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$zWoFJwVkMGykL1TNvjltCc5UcPg(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->delete$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zmkdriwlv3_wDM0Z7hVRTJnHsVU(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->insertSubscriptionsToGroup$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->Companion:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;-><init>()V

    .line 42
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

    .line 57
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupEntity:Landroidx/room/EntityInsertAdapter;

    .line 69
    new-instance p1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__updateAdapterOfFeedGroupEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method public static final synthetic access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)Lorg/schabi/newpipe/database/Converters;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    return-object p0
.end method

.method private static final delete$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 244
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 245
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 246
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final deleteSubscriptionsFromGroup$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 259
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 260
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 261
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getAll$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 12

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 126
    :try_start_0
    const-string p2, "uid"

    invoke-static {p0, p2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p2

    .line 127
    const-string v0, "name"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 128
    const-string v1, "icon_id"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 129
    const-string v2, "sort_order"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    .line 136
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v5, v4

    .line 140
    iget-object v4, p1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/database/Converters;->feedGroupIconOf(I)Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v9

    .line 142
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    .line 143
    new-instance v5, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V

    .line 144
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v3

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getGroup$lambda$0(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;
    .locals 9

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    .line 159
    :try_start_0
    invoke-interface {p0, p4, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    const-string p1, "uid"

    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p1

    .line 161
    const-string p2, "name"

    invoke-static {p0, p2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p2

    .line 162
    const-string p4, "icon_id"

    invoke-static {p0, p4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p4

    .line 163
    const-string v0, "sort_order"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    .line 169
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-interface {p0, p4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    long-to-int p2, p1

    .line 173
    iget-object p1, p3, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/database/Converters;->feedGroupIconOf(I)Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v6

    .line 175
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    .line 176
    new-instance v2, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getSubscriptionIdsFor$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 193
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 197
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p2

    .line 198
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 202
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->insert(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final insertInternal$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final insertSubscriptionsToGroup$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final nextSortOrder$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)J
    .locals 2

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 213
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 220
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-wide v0

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__updateAdapterOfFeedGroupEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final updateOrder$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/Map;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->updateOrder(Ljava/util/Map;)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOrder$lambda$1(Ljava/lang/String;JJLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-interface {p5, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 274
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 276
    invoke-interface {p0, p1, p3, p4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 277
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 278
    invoke-static {p5}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final updateSubscriptionsForGroup$lambda$0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->updateSubscriptionsForGroup(JLjava/util/List;)V

    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public delete(J)I
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda8;

    const-string v2, "DELETE FROM feed_group WHERE uid = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public deleteSubscriptionsFromGroup(J)I
    .locals 3

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda10;

    const-string v2, "DELETE FROM feed_group_subscription_join WHERE group_id = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getAll()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_group"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM feed_group ORDER BY sort_order ASC"

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(J)Lio/reactivex/rxjava3/core/Maybe;
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda2;

    const-string v2, "SELECT * FROM feed_group WHERE uid = ?"

    invoke-direct {v1, v2, p1, p2, p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;JLorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/rxjava3/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionIdsFor(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "feed_group_subscription_join"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda1;

    const-string v3, "SELECT subscription_id FROM feed_group_subscription_join WHERE group_id = ?"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J
    .locals 3

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected insertInternal(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J
    .locals 3

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertSubscriptionsToGroup(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected nextSortOrder()J
    .locals 4

    .line 209
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda9;

    const-string v2, "SELECT IFNULL(MAX(sort_order) + 1, 0) FROM feed_group"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)I
    .locals 3

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public updateOrder(JJ)I
    .locals 7

    .line 270
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;

    const-string v2, "UPDATE feed_group SET sort_order = ? WHERE uid = ?"

    move-wide v5, p1

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;JJ)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public updateOrder(Ljava/util/Map;)V
    .locals 3

    const-string v0, "orderMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Ljava/util/Map;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public updateSubscriptionsForGroup(JLjava/util/List;)V
    .locals 2

    const-string v0, "subscriptionIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
