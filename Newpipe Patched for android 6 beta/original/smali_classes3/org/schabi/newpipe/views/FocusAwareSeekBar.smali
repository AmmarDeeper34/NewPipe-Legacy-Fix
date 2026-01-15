.class public final Lorg/schabi/newpipe/views/FocusAwareSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "FocusAwareSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;
    }
.end annotation


# instance fields
.field private listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

.field private final touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private treeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public static synthetic $r8$lambda$3Jq39UF9BRCn5nQNq_VhLS-0Gsw(Lorg/schabi/newpipe/views/FocusAwareSeekBar;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->lambda$new$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance p1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/FocusAwareSeekBar;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->releaseTrack()V

    :cond_0
    return-void
.end method

.method private releaseTrack()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/SeekBar;->onAttachedToWindow()V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 91
    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->touchModeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->treeObserver:Landroid/view/ViewTreeObserver;

    .line 103
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 76
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->releaseTrack()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->releaseTrack()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    invoke-direct {v1, p1, v0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;Lorg/schabi/newpipe/views/FocusAwareSeekBar-IA;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->listener:Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;

    .line 58
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
