.class public final synthetic Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

.field public final synthetic f$1:Lorg/schabi/newpipe/error/UserAction;

.field public final synthetic f$2:Lorg/schabi/newpipe/RouterActivity$Choice;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/error/UserAction;

    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/RouterActivity$Choice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/error/UserAction;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/RouterActivity$Choice;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$lambda$zINcwTAWnPOZBqYqcxxMweEuOsA(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/error/UserAction;Lorg/schabi/newpipe/RouterActivity$Choice;Ljava/lang/Throwable;)V

    return-void
.end method
