.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$1:J

    iput-wide p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$1:J

    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;->f$2:J

    move-object v5, p1

    check-cast v5, Landroidx/sqlite/SQLiteConnection;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->$r8$lambda$96d4ohjRG7x6zZ9eOZYXG-L3H7o(Ljava/lang/String;JJLandroidx/sqlite/SQLiteConnection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
