.class public final synthetic Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

.field public final synthetic f$1:Lorg/schabi/newpipe/RouterActivity$Choice;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/RouterActivity$Choice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/RouterActivity$Choice;

    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
