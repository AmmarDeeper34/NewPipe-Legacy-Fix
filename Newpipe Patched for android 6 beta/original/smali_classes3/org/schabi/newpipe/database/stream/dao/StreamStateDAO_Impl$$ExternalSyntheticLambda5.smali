.class public final synthetic Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;->$r8$lambda$1c3OfvXQ41uBh_nBh0aLgBsoCS8(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
