.class Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "ChooseTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;II)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 285
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p1

    const/16 p2, 0xc

    .line 288
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 287
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p2, p3

    .line 289
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

    .line 296
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgetselectedTabsAdapter(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 302
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 303
    iget-object p3, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgetselectedTabsAdapter(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->swapItems(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 320
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 321
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 322
    iget-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgetselectedTabsAdapter(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 324
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgettabList(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$fgetselectedTabsAdapter(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method
