.class public final synthetic Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/AppDatabase_Impl;->$r8$lambda$SW1hzaHf2teH2Qa4aLp6Nx1iix8(Lorg/schabi/newpipe/database/AppDatabase_Impl;)Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    move-result-object v0

    return-object v0
.end method
