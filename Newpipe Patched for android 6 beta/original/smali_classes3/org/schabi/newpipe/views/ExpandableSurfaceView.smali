.class public Lorg/schabi/newpipe/views/ExpandableSurfaceView;
.super Landroid/view/SurfaceView;
.source "ExpandableSurfaceView.java"


# instance fields
.field private baseHeight:I

.field private maxHeight:I

.field private resizeMode:I

.field private scaleX:F

.field private scaleY:F

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 14
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 15
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 18
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    return-void
.end method


# virtual methods
.method public getResizeMode()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 71
    iget p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 72
    iget p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 26
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 27
    iget p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_3

    .line 31
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 32
    iget p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget v3, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    if-eqz v3, :cond_2

    iget v4, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    :goto_1
    if-eqz p1, :cond_8

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    int-to-float v2, p1

    int-to-float v4, v3

    div-float v5, v2, v4

    div-float v6, p2, v5

    sub-float/2addr v6, v1

    .line 44
    iput v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 45
    iput v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    .line 47
    iget v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    if-nez v1, :cond_5

    cmpl-float v0, v6, v0

    if-lez v0, :cond_4

    div-float/2addr v2, p2

    float-to-int v3, v2

    goto :goto_2

    :cond_4
    mul-float v4, v4, p2

    float-to-int p1, v4

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    cmpg-float v0, v6, v0

    if-gez v0, :cond_6

    div-float/2addr v5, p2

    .line 55
    iput v5, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    goto :goto_2

    :cond_6
    div-float/2addr p2, v5

    .line 57
    iput p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    :cond_7
    :goto_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 61
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 62
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    .line 103
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView$$ExternalSyntheticBackport0;->m(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeights(II)V
    .locals 1

    .line 80
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 83
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 84
    iput p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 89
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
