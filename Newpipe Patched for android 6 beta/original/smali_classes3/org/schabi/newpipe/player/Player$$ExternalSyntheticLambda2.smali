.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$ZOsIFq1Ly2gKvnyOdP-Z8Q-TeWQ(ZLorg/schabi/newpipe/player/ui/PlayerUi;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
