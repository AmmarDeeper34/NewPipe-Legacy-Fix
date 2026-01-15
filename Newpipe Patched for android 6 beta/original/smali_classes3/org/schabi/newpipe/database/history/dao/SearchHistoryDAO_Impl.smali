.class public final Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;
.super Ljava/lang/Object;
.source "SearchHistoryDAO_Impl.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;


# instance fields
.field private final __converters:Lorg/schabi/newpipe/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfSearchHistoryEntry:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfSearchHistoryEntry:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfSearchHistoryEntry:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$-tNSs5SlYbSMx0HbN5pJ3CaTucs(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$0edVnrjwhF0l7e9qE1m9TqmJYwU(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fhf7PlL-Tys2dGRjtbnVNP55dq8(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->getSimilarEntries$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KD13JAW1oYtvEX6MWJFwOEm3xKw(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->getLatestEntry$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cnIVr2vlt_t4dLrIYf6arY825gc(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->deleteAllWhereQuery$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tjAGonv7dw9l4AqogxMWaftgsFg(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->getUniqueEntries$lambda$0(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xym4U6zLjInwHHfQCI00iOIprM4(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->Companion:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/schabi/newpipe/database/Converters;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Converters;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__insertAdapterOfSearchHistoryEntry:Landroidx/room/EntityInsertAdapter;

    .line 69
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__deleteAdapterOfSearchHistoryEntry:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 77
    new-instance p1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$3;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__updateAdapterOfSearchHistoryEntry:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private final _privateGetLatestEntry()Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda5;

    const-string v2, "SELECT * FROM search_history WHERE id = (SELECT MAX(id) FROM search_history)"

    invoke-direct {v1, v2, p0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    return-object v0
.end method

.method public static final synthetic access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    return-object p0
.end method

.method private static final deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 311
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 312
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final deleteAllWhereQuery$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 325
    :try_start_0
    invoke-interface {p0, v0, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 326
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 327
    invoke-static {p2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getLatestEntry$lambda$0(Ljava/lang/String;Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 223
    :try_start_0
    const-string p2, "creation_date"

    invoke-static {p0, p2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p2

    .line 224
    const-string v0, "service_id"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 225
    const-string v1, "search"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 226
    const-string v2, "id"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 228
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 231
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p2, v4

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 236
    :goto_0
    iget-object p1, p1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__converters:Lorg/schabi/newpipe/database/Converters;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    move-result-object v6

    .line 238
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    long-to-int v7, p1

    .line 240
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    move-object v8, v4

    goto :goto_2

    .line 243
    :cond_1
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 246
    :goto_2
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    .line 247
    new-instance v5, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 253
    :cond_2
    :goto_3
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v4

    :goto_4
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getSimilarEntries$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 290
    :try_start_0
    invoke-interface {p0, p3, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long p2, p2

    .line 292
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 296
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 301
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getUniqueEntries$lambda$0(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p2, 0x1

    int-to-long v0, p1

    .line 265
    :try_start_0
    invoke-interface {p0, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 269
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 274
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__insertAdapterOfSearchHistoryEntry:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__updateAdapterOfSearchHistoryEntry:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public deleteAll()I
    .locals 4

    .line 308
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda1;

    const-string v2, "DELETE FROM search_history"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public deleteAllWhereQuery(Ljava/lang/String;)I
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda0;

    const-string v2, "DELETE FROM search_history WHERE search = ?"

    invoke-direct {v1, v2, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLatestEntry()Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->_privateGetLatestEntry()Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarEntries(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "search_history"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda3;

    const-string v3, "\n        SELECT search FROM search_history WHERE search LIKE ? ||\n        \'%\' GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?\n        "

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueEntries(I)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "search_history"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda6;

    const-string v3, "SELECT search FROM search_history GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?"

    invoke-direct {v2, v3, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 28
    check-cast p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->insert(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)J
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)V

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

    .line 28
    check-cast p1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->update(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
