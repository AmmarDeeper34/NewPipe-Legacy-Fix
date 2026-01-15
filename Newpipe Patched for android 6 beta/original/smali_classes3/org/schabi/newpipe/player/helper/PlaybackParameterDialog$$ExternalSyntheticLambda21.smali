.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field public final synthetic f$1:Ljava/util/function/DoubleConsumer;

.field public final synthetic f$2:Ljava/util/function/DoubleSupplier;

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$1:Ljava/util/function/DoubleConsumer;

    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$2:Ljava/util/function/DoubleSupplier;

    iput-wide p4, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$3:D

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$1:Ljava/util/function/DoubleConsumer;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$2:Ljava/util/function/DoubleSupplier;

    iget-wide v3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$3:D

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->$r8$lambda$1_YoRV0plKMVMPsPRP6xeJNlvUk(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;DLandroid/view/View;)V

    return-void
.end method
