.class public final synthetic Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda5;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda5;->f$0:Landroid/content/Intent;

    check-cast p1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/PlayerService;->$r8$lambda$OwzMbITFYWTZgEWH16WZeR5At-A(Landroid/content/Intent;Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
