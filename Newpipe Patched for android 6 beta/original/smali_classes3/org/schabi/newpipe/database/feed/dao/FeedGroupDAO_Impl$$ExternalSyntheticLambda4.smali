.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    iput-wide p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$1:J

    iget-object v3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->$r8$lambda$GAyVd6XVl-h2aozMe973rI_Mpuc(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;JLjava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
