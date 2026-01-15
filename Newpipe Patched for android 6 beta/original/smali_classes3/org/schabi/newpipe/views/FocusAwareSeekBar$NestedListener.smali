.class final Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;
.super Ljava/lang/Object;
.source "FocusAwareSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/FocusAwareSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NestedListener"
.end annotation


# instance fields
.field private final delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field isSeeking:Z


# direct methods
.method private constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;Lorg/schabi/newpipe/views/FocusAwareSeekBar-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 127
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 137
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->isSeeking:Z

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusAwareSeekBar$NestedListener;->delegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
