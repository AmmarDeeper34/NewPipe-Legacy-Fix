.class public final Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
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

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 76
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->getSubscriptionId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->getLastUpdated()Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    invoke-static {v1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x3

    .line 90
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;->getSubscriptionId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "UPDATE OR IGNORE `feed_last_updated` SET `subscription_id` = ?,`last_updated` = ? WHERE `subscription_id` = ?"

    return-object v0
.end method
