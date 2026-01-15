.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$0:I

    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$1:I

    iput p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$0:I

    iget v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$1:I

    iget v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$2:I

    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$vG1fIpCBr8y0wxvy3EpwnEv9XNA(IIILorg/schabi/newpipe/player/ui/PlayerUi;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
