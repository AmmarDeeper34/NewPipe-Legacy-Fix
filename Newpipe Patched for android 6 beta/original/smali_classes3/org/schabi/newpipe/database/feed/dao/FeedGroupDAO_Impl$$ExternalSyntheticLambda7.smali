.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    iput-object p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->$r8$lambda$KObFHEAydnuU9dsQNwY3xBKgAq0(Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
