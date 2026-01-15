.class public final synthetic Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda24;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda24;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    check-cast p1, Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->$r8$lambda$D1NvLE5EJuENpRFeC_sZHfXHaDg(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
