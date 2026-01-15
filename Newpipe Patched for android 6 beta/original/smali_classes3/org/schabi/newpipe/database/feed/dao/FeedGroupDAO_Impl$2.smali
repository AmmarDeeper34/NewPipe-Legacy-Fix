.class public final Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;
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


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 57
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 63
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/Converters;->integerOf(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)I

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 65
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 66
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getSortOrder()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "INSERT OR ABORT INTO `feed_group` (`uid`,`name`,`icon_id`,`sort_order`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method
