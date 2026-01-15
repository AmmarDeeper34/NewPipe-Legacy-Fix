.class public final Lorg/schabi/newpipe/views/AnimatedProgressBar;
.super Landroid/widget/ProgressBar;
.source "AnimatedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;
    }
.end annotation


# instance fields
.field private animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public declared-synchronized setProgressAnimated(I)V
    .locals 2

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-direct {p0}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->cancelAnimation()V

    .line 31
    new-instance v0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;-><init>(Lorg/schabi/newpipe/views/AnimatedProgressBar;FF)V

    iput-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
