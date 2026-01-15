.class public final synthetic Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda0;->f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    move-object v5, p1

    check-cast v5, Landroidx/sqlite/SQLiteConnection;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->$r8$lambda$1vvSKJgbZF7syjBrVQ1g8uUYeDw(Ljava/lang/String;Ljava/lang/String;JLorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
