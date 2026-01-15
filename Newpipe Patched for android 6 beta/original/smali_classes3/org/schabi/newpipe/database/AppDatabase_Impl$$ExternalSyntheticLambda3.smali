.class public final synthetic Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/AppDatabase_Impl$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/database/AppDatabase_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/AppDatabase_Impl;->$r8$lambda$rdXP_dXAarwoYbadS1pGqYm2yWI(Lorg/schabi/newpipe/database/AppDatabase_Impl;)Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    move-result-object v0

    return-object v0
.end method
