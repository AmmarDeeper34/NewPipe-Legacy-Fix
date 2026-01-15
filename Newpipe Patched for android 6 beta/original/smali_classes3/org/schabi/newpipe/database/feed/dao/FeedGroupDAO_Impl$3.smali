.class public final Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "FeedGroupDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 69
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 76
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$3;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/Converters;->integerOf(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)I

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 78
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 79
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getSortOrder()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 80
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "UPDATE OR IGNORE `feed_group` SET `uid` = ?,`name` = ?,`icon_id` = ?,`sort_order` = ? WHERE `uid` = ?"

    return-object v0
.end method
