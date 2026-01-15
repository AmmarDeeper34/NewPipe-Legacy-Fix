.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field public final synthetic f$1:Ljava/util/function/DoubleConsumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$1:Ljava/util/function/DoubleConsumer;

    iput p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$1:Ljava/util/function/DoubleConsumer;

    iget v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->$r8$lambda$dgRVb478RreUNeCaaZJLWJoVS7A(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;ILandroid/view/View;)V

    return-void
.end method
