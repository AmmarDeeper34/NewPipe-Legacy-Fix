.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
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

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 55
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getStreamUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$1;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getAccessDate()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getRepeatCount()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "INSERT OR ABORT INTO `stream_history` (`stream_id`,`access_date`,`repeat_count`) VALUES (?,?,?)"

    return-object v0
.end method
