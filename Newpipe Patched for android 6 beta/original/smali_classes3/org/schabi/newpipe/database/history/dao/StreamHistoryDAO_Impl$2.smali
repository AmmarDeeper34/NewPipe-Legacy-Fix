.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;
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

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 71
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getStreamUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getAccessDate()Lj$/time/OffsetDateTime;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 80
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "DELETE FROM `stream_history` WHERE `stream_id` = ? AND `access_date` = ?"

    return-object v0
.end method
