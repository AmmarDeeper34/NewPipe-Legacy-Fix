.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->$r8$lambda$5tI1mtnAyasnVsUs8jk8wMCMiMA(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
