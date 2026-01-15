.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;->f$0:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;->f$0:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda29;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$lambda$PoxXUxpPiHtXutycAtBU99CLvWE(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/util/List;)Lio/reactivex/rxjava3/core/SingleSource;

    move-result-object p1

    return-object p1
.end method
