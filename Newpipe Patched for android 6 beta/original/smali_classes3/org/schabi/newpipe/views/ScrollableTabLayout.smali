.class public Lorg/schabi/newpipe/views/ScrollableTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "ScrollableTabLayout.java"


# instance fields
.field private layoutWidth:I

.field private prevVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->layoutWidth:I

    const/16 p1, 0x8

    .line 19
    iput p1, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->prevVisibility:I

    return-void
.end method

.method private hasMultipleTabs()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private remeasureTabs()V
    .locals 6

    .line 111
    iget v0, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->prevVisibility:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->layoutWidth:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 121
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_3
    iget v0, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->layoutWidth:I

    if-le v3, v0, :cond_4

    .line 129
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->setMode(I)V

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->setMode(I)V

    return-void
.end method

.method private setMode(I)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void
.end method


# virtual methods
.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 53
    invoke-direct {p0}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->hasMultipleTabs()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->remeasureTabs()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 37
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 39
    invoke-direct {p0}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->remeasureTabs()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 46
    iput p1, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->layoutWidth:I

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    .line 81
    iget p1, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->prevVisibility:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/schabi/newpipe/views/ScrollableTabLayout;->remeasureTabs()V

    .line 84
    :cond_0
    iput p2, p0, Lorg/schabi/newpipe/views/ScrollableTabLayout;->prevVisibility:I

    :cond_1
    return-void
.end method
