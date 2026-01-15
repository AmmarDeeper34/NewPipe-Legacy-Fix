.class public final synthetic Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$$ExternalSyntheticLambda4;->f$3:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->$r8$lambda$VXb5d84I15a2YlFoop_Apu30vE8(Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    move-result-object p1

    return-object p1
.end method
