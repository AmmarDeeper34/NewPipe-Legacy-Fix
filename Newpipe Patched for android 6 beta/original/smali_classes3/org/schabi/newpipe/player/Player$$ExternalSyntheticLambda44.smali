.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-boolean p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$1:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$yLOoAN-YP_E-J6lLfjBRToze9Og(Lorg/schabi/newpipe/player/Player;ZLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
