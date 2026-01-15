.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    check-cast p1, Ljava/lang/Double;

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->$r8$lambda$r6AN41DJYd6fyQKMGJVKwscIVn4(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/lang/Double;Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
