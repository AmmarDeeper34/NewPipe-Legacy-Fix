.class public final synthetic Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

.field public final synthetic f$5:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$1:J

    iput-boolean p4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$2:Z

    iput-boolean p5, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$3:Z

    iput-object p6, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    iput-object p7, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$5:Lj$/time/OffsetDateTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$1:J

    iget-boolean v3, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$2:Z

    iget-boolean v4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$3:Z

    iget-object v5, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$4:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    iget-object v6, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda7;->f$5:Lj$/time/OffsetDateTime;

    move-object v7, p1

    check-cast v7, Landroidx/sqlite/SQLiteConnection;

    invoke-static/range {v0 .. v7}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->$r8$lambda$-xnh-Zsg6PTv8Hw8GwhP9hgPBR0(Ljava/lang/String;JZZLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
