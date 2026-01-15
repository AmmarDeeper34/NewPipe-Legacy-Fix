.class public final Lorg/schabi/newpipe/player/ui/PlayerUiList;
.super Ljava/lang/Object;
.source "PlayerUiList.java"


# instance fields
.field final playerUis:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$O0W793unHI1es_r7n_Dv6LNoS6s(Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroyPlayer()V

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroy()V

    return-void
.end method

.method public varargs constructor <init>([Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    .line 21
    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getFragmentListener()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onFragmentListenerSet()V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayer()V

    .line 42
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayback()V

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public call(Ljava/util/function/Consumer;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroyAll(Ljava/lang/Class;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda2;-><init>()V

    .line 60
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public get(Ljava/lang/Class;)Lj$/util/Optional;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUiList;->playerUis:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 77
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 78
    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method
