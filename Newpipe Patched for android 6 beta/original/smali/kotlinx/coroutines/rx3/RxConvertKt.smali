.class public abstract Lkotlinx/coroutines/rx3/RxConvertKt;
.super Ljava/lang/Object;
.source "RxConvert.kt"


# direct methods
.method public static synthetic $r8$lambda$ux6ryHe0QtRHVhG400zgFTYfXLs(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/rx3/RxConvertKt;->asObservable$lambda$0(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final asObservable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1

    .line 103
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final asObservable$lambda$0(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 4

    .line 108
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p0

    .line 123
    new-instance p1, Lkotlinx/coroutines/rx3/RxCancellable;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/rx3/RxCancellable;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->setCancellable(Lio/reactivex/rxjava3/functions/Cancellable;)V

    return-void
.end method
