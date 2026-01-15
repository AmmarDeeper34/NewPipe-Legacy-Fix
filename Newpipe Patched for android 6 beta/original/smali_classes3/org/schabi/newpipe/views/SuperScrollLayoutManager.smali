.class public final Lorg/schabi/newpipe/views/SuperScrollLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SuperScrollLayoutManager.java"


# instance fields
.field private final focusables:Ljava/util/ArrayList;

.field private final handy:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    return-void
.end method

.method private getAbsoluteDirection(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    .line 141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x11

    if-eq p1, v2, :cond_2

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 146
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    const/16 v2, 0x21

    if-eq p1, v2, :cond_7

    const/16 v2, 0x82

    if-eq p1, v2, :cond_5

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v1

    .line 155
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    return v1

    :cond_a
    return v0
.end method

.method private getDistance(ILandroid/view/View;I)I
    .locals 0

    .line 165
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 170
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p2, p1

    mul-int p3, p3, p2

    return p3
.end method


# virtual methods
.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 67
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->getAbsoluteDirection(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_2

    if-gez v1, :cond_2

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    iget-object v4, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v4, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    invoke-virtual {v2, v4, p2, v5}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 103
    :try_start_0
    iget-object p2, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eq v6, p1, :cond_3

    if-ne v6, v2, :cond_4

    goto :goto_0

    :cond_4
    if-ne v6, v0, :cond_5

    goto :goto_0

    .line 114
    :cond_5
    invoke-direct {p0, v3, v6, v1}, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->getDistance(ILandroid/view/View;I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v7, :cond_6

    goto :goto_0

    :cond_6
    if-ge v7, v5, :cond_3

    move-object v4, v6

    move v5, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 125
    :cond_7
    iget-object p1, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object v4

    :goto_1
    iget-object p2, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 126
    throw p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p4}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 60
    :cond_1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method
