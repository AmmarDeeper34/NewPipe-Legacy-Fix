.class public final Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;
.super Landroidx/room/EntityInsertAdapter;
.source "FeedDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 60
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->getSubscriptionId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 67
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->getLastUpdated()Lj$/time/OffsetDateTime;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 70
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "INSERT OR IGNORE INTO `feed_last_updated` (`subscription_id`,`last_updated`) VALUES (?,?)"

    return-object v0
.end method
