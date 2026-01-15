.class public final Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;
.super Ljava/lang/Object;
.source "StreamStateDAO_Impl.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfStreamStateEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfStreamStateEntity:Landroidx/room/EntityInsertAdapter;

.field private final __insertAdapterOfStreamStateEntity_1:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfStreamStateEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$-uQJVidERkYvwg5WKgWhQRFNeWs(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1c3OfvXQ41uBh_nBh0aLgBsoCS8(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->silentInsertInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LngYcF3HaXPdsYKM9pjbXmjclRw(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kStkVMZZgYGBqzQnTB0VlcAOeCY(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->getState$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oeN4_az2sfi1j96SNBuu2flhxYc(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->deleteState$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tZRNHhw-hxHZ9f6YCFMBroBXyL8(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->upsert$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->Companion:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__insertAdapterOfStreamStateEntity:Landroidx/room/EntityInsertAdapter;

    .line 50
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__insertAdapterOfStreamStateEntity_1:Landroidx/room/EntityInsertAdapter;

    .line 59
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__deleteAdapterOfStreamStateEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 68
    new-instance p1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$4;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$4;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__updateAdapterOfStreamStateEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private static final deleteAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 176
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 177
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final deleteState$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 190
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 192
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getState$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 5

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 151
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    const-string p1, "stream_id"

    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p1

    .line 153
    const-string p2, "progress_time"

    invoke-static {p0, p2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p2

    .line 154
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    .line 160
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    .line 161
    new-instance v4, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 162
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 166
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p3

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final silentInsertInternal$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__insertAdapterOfStreamStateEntity_1:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__updateAdapterOfStreamStateEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final upsert$lambda$0(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO$-CC;->$default$upsert(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public deleteAll()I
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda1;

    const-string v2, "DELETE FROM stream_state"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public deleteState(J)I
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda2;

    const-string v2, "DELETE FROM stream_state WHERE stream_id = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getState(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "stream_state"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM stream_state WHERE stream_id = ?"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public silentInsertInternal(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 3

    const-string v0, "streamState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->update(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public upsert(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J
    .locals 3

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
