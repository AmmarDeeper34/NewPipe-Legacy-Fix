.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$1:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$1:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda30;->f$2:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$lambda$R7RXT2uNex8VtefGlEtLAmgpuPY(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/local/playlist/PlayListShareMode;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
