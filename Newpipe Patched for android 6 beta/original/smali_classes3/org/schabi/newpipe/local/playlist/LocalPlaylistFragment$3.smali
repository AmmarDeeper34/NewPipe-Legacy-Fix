.class Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "LocalPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;II)V
    .locals 0

    .line 743
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 750
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p1

    const/16 p2, 0xc

    .line 753
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 752
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p2, p3

    .line 754
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    mul-int p1, p1, p2

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

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

    .line 761
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 762
    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->access$100(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 767
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 768
    iget-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->access$200(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->swapItems(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 770
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    .line 771
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$3;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method
