.class Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->drag(Lorg/schabi/newpipe/database/LocalItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public drag(Lorg/schabi/newpipe/database/LocalItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->held(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public held(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 1

    .line 158
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$mshowLocalDialog(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V

    return-void

    .line 160
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$mshowRemoteDeleteDialog(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic selected(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->selected(Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public selected(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$1;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->access$000(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 141
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v1, :cond_0

    .line 142
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 143
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide v1

    .line 144
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openLocalPlaylistFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    return-void

    .line 146
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v1, :cond_1

    .line 147
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 150
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v1

    .line 151
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
