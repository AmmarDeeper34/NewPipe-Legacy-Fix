.class Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "BookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;II)V
    .locals 0

    .line 425
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 432
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p1

    const/16 p2, 0xc

    .line 435
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 434
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p2, p3

    .line 436
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

    .line 445
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->access$100(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 446
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_1

    instance-of p1, p2, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    if-nez p1, :cond_0

    instance-of p1, p2, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    if-eqz p1, :cond_3

    :cond_0
    instance-of p1, p3, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    if-nez p1, :cond_1

    instance-of p1, p3, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    if-nez p1, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 461
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 462
    iget-object p3, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p3}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->access$200(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/local/LocalItemListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->swapItems(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    iget-object p2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 464
    iget-object p2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->setHasChangesToSave()V

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method
