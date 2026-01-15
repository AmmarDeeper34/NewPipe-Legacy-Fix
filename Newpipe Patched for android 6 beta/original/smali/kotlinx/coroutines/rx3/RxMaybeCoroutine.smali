.class final Lkotlinx/coroutines/rx3/RxMaybeCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "RxMaybe.kt"


# instance fields
.field private final subscriber:Lio/reactivex/rxjava3/core/MaybeEmitter;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/rxjava3/core/MaybeEmitter;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 38
    iput-object p2, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/core/MaybeEmitter;

    return-void
.end method


# virtual methods
.method protected onCancelled(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 50
    :try_start_0
    iget-object p2, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/core/MaybeEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/MaybeEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    return-void

    :catchall_0
    move-exception p2

    .line 54
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx3/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method protected onCompleted(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 42
    :try_start_0
    iget-object p1, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/core/MaybeEmitter;

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/MaybeEmitter;->onComplete()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/core/MaybeEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 44
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/coroutines/rx3/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method
