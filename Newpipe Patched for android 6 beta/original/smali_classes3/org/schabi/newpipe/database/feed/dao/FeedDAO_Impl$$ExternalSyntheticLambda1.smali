.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    iput-object p3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$2:Lj$/time/OffsetDateTime;

    iput p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    iget-object v2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$2:Lj$/time/OffsetDateTime;

    iget v3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda1;->f$3:I

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->$r8$lambda$eOkXaFHQI5k0BKA3UKlajoBff8E(Ljava/lang/String;Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
