.class public final synthetic Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->$r8$lambda$oAjJ1TLxarbYEb1a_2bH18YFMCg(Ljava/lang/String;JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
