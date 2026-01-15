.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->$r8$lambda$UoYTWBzj6XfCHm7sXbYP7iA9r74(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;D)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method
