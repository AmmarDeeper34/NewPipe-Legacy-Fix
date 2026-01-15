.class public final synthetic Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/PlayQueueActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    iput p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    iget v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$1:I

    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->$r8$lambda$tQF49LQcnCCCivp6b0YklCutF0A(Lorg/schabi/newpipe/player/PlayQueueActivity;ILorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
