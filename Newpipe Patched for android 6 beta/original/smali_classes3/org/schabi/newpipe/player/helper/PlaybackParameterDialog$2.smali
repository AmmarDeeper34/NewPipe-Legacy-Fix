.class Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;
.super Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;
.source "PlaybackParameterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getTempoOrPitchSeekbarChangeListener(Lorg/schabi/newpipe/util/SliderStrategy;Ljava/util/function/DoubleConsumer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field final synthetic val$newValueConsumer:Ljava/util/function/DoubleConsumer;

.field final synthetic val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$newValueConsumer:Ljava/util/function/DoubleConsumer;

    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;

    invoke-direct {p0}, Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 499
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$newValueConsumer:Ljava/util/function/DoubleConsumer;

    iget-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;

    invoke-interface {p3, p2}, Lorg/schabi/newpipe/util/SliderStrategy;->valueOf(I)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 500
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->-$$Nest$mupdateCallback(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    :cond_0
    return-void
.end method
