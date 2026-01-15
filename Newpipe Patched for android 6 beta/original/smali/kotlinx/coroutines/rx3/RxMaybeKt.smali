.class public abstract Lkotlinx/coroutines/rx3/RxMaybeKt;
.super Ljava/lang/Object;
.source "RxMaybe.kt"


# direct methods
.method public static synthetic $r8$lambda$VPuAD5XQTSUdQ8xPCcM_zDJgulo(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lio/reactivex/rxjava3/core/MaybeEmitter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/rx3/RxMaybeKt;->rxMaybeInternal$lambda$1(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lio/reactivex/rxjava3/core/MaybeEmitter;)V

    return-void
.end method

.method public static final rxMaybe(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 20
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/rx3/RxMaybeKt;->rxMaybeInternal(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maybe context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final rxMaybeInternal(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 29
    new-instance v0, Lkotlinx/coroutines/rx3/RxMaybeKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/rx3/RxMaybeKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->create(Lio/reactivex/rxjava3/core/MaybeOnSubscribe;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method private static final rxMaybeInternal$lambda$1(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lio/reactivex/rxjava3/core/MaybeEmitter;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 31
    new-instance p1, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/rxjava3/core/MaybeEmitter;)V

    .line 32
    new-instance p0, Lkotlinx/coroutines/rx3/RxCancellable;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/rx3/RxCancellable;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {p3, p0}, Lio/reactivex/rxjava3/core/MaybeEmitter;->setCancellable(Lio/reactivex/rxjava3/functions/Cancellable;)V

    .line 33
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {p1, p0, p1, p2}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
