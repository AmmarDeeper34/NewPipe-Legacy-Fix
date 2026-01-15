.class Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "PeertubeInstanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;II)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 265
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p1

    const/16 p2, 0xc

    .line 267
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p2, p3

    .line 268
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    mul-int p1, p1, p2

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 275
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 281
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 282
    iget-object p3, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->swapItems(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 299
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 301
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetselectedInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 303
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 306
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetselectedInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
