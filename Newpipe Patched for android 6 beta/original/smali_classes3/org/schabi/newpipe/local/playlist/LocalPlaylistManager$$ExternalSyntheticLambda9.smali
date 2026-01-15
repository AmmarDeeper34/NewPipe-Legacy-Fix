.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$2:J

    iput-object p5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$2:J

    iget-object v4, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->$r8$lambda$Rp_i0AROieWAbFk1mVu1iVDnDmc(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;JLjava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
