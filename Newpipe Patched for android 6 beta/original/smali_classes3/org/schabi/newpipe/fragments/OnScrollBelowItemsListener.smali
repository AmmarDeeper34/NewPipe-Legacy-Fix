.class public abstract Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "OnScrollBelowItemsListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 15
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-lez p3, :cond_2

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    .line 21
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 24
    instance-of v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 25
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    goto :goto_0

    .line 27
    :cond_0
    instance-of v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 28
    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p2

    if-eqz p2, :cond_1

    .line 30
    array-length v1, p2

    if-lez v1, :cond_1

    .line 31
    aget p2, p2, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p3, p2

    if-lt p3, v0, :cond_2

    .line 36
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;->onScrolledDown(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    return-void
.end method

.method public abstract onScrolledDown(Landroidx/recyclerview/widget/RecyclerView;)V
.end method
