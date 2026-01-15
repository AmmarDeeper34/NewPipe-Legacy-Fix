.class public final Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "FeedGroupDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->getFeedGroupId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 54
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->getSubscriptionId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "INSERT OR IGNORE INTO `feed_group_subscription_join` (`group_id`,`subscription_id`) VALUES (?,?)"

    return-object v0
.end method
