.class public final Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SearchHistoryDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;->this$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 47
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->getCreationDate()Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$1;->this$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    invoke-static {v1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 59
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->getServiceId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 60
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->getSearch()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "INSERT OR ABORT INTO `search_history` (`creation_date`,`service_id`,`search`,`id`) VALUES (?,?,?,nullif(?, 0))"

    return-object v0
.end method
