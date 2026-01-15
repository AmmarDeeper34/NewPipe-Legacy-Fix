.class public Lorg/schabi/newpipe/views/NewPipeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NewPipeRecyclerView.java"


# instance fields
.field private allowDpadScroll:Z

.field private final focusRect:Landroid/graphics/Rect;

.field private final tempFocus:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 51
    invoke-direct {p0}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->init()V

    return-void
.end method

.method private arrowScroll(I)Z
    .locals 5

    const/16 v0, 0x11

    const/16 v1, -0x64

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    const/16 v1, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v4

    .line 189
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v4

    .line 192
    :cond_1
    invoke-virtual {p0, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_3

    return v4

    .line 210
    :cond_3
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 198
    :cond_5
    invoke-virtual {p0, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 201
    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_7

    return v4

    .line 204
    :cond_7
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    return v2
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method private isOutside(Landroid/view/View;)Z
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tryFocusFinder(I)Z
    .locals 7

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 151
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 156
    iget-object v3, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 158
    iget-object v3, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 160
    iget-object v3, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 161
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->isOutside(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    return v4

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :goto_0
    if-eq v3, v1, :cond_3

    .line 171
    iget-object v5, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object v5, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 175
    iget-object v5, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v5, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    .line 180
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->isOutside(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    return v1

    .line 120
    :cond_1
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    if-eq p1, p0, :cond_3

    const/16 v2, 0x82

    if-ne p2, v2, :cond_3

    .line 127
    iget-boolean v2, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    if-nez v2, :cond_3

    .line 128
    const-string p1, "NewPipeRecyclerView"

    const-string p2, "Consuming downward scroll: content load in progress"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 132
    :cond_3
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tryFocusFinder(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    return v1

    .line 141
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public setFocusScrollAllowed(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    return-void
.end method
