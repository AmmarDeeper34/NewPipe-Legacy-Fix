.class Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;
.super Landroid/view/animation/Animation;
.source "AnimatedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/AnimatedProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressBarAnimation"
.end annotation


# instance fields
.field private final from:F

.field private final progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field private final to:F


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/views/AnimatedProgressBar;FF)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 53
    iput p2, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->from:F

    .line 54
    iput p3, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->to:F

    const-wide/16 p1, 0x1f4

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 62
    iget p2, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->from:F

    iget v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->to:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 63
    iget-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
