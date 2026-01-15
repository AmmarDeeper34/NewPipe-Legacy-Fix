.class Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;
.super Ljava/lang/Object;
.source "LocalPlaylistFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->drag(Lorg/schabi/newpipe/database/LocalItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public drag(Lorg/schabi/newpipe/database/LocalItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->held(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public held(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 1

    .line 192
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showInfoItemDialog(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic selected(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->selected(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public selected(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 8

    .line 183
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 184
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->access$000(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 186
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 185
    invoke-static/range {v1 .. v7}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_0
    return-void
.end method
