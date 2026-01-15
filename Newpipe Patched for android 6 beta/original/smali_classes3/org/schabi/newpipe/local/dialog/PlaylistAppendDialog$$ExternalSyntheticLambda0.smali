.class public final synthetic Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    return-void
.end method


# virtual methods
.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$drag(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$held(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;)V

    return-void
.end method

.method public final selected(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->$r8$lambda$Cyy2cZyxAGy1l2wQlWZVNubSJKQ(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method
