.class public final Lorg/schabi/newpipe/views/player/CircleClipTapView;
.super Landroid/view/View;
.source "CircleClipTapView.kt"


# instance fields
.field private arcSize:F

.field private backgroundPaint:Landroid/graphics/Paint;

.field private heightPx:I

.field private isLeft:Z

.field private shapePath:Landroid/graphics/Path;

.field private widthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->backgroundPaint:Landroid/graphics/Paint;

    .line 19
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    const/high16 p2, 0x42a00000    # 80.0f

    .line 20
    iput p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->backgroundPaint:Landroid/graphics/Paint;

    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p2, 0x30000000

    .line 29
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 33
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 34
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 36
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updatePathShape()V
    .locals 9

    .line 55
    iget v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 57
    iget-object v1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 59
    iget-boolean v1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    int-to-float v3, v3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 62
    :goto_1
    iget-object v4, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v4, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    int-to-float v1, v1

    iget v5, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    sub-float v5, v0, v5

    mul-float v5, v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    iget-object v2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    .line 65
    iget v4, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    add-float v5, v0, v4

    mul-float v5, v5, v1

    add-float/2addr v5, v3

    .line 66
    iget v6, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    int-to-float v7, v6

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v0, v4

    mul-float v1, v1, v0

    add-float/2addr v1, v3

    int-to-float v0, v6

    .line 64
    invoke-virtual {v2, v5, v7, v1, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    iget v1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 78
    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 79
    iput p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 80
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    return-void
.end method

.method public final updateArcSize(Landroid/view/View;)V
    .locals 1

    const-string v0, "baseView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x41366666    # 11.4f

    div-float/2addr p1, v0

    .line 41
    iget v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    .line 43
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    return-void
.end method

.method public final updatePosition(Z)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    .line 50
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    :cond_0
    return-void
.end method
