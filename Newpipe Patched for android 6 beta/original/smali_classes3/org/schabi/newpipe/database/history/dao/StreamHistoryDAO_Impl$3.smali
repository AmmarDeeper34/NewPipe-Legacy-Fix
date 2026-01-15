.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "StreamHistoryDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 86
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getStreamUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getAccessDate()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x3

    .line 99
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getRepeatCount()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getStreamUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getAccessDate()Lj$/time/OffsetDateTime;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 103
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 105
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "UPDATE OR ABORT `stream_history` SET `stream_id` = ?,`access_date` = ?,`repeat_count` = ? WHERE `stream_id` = ? AND `access_date` = ?"

    return-object v0
.end method
