.class public abstract Lcom/jakewharton/rxbinding4/InitialValueObservable;
.super Lio/reactivex/rxjava3/core/Observable;
.source "InitialValueObservable.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInitialValue()Ljava/lang/Object;
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding4/InitialValueObservable;->subscribeListener(Lio/reactivex/rxjava3/core/Observer;)V

    .line 11
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/InitialValueObservable;->getInitialValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract subscribeListener(Lio/reactivex/rxjava3/core/Observer;)V
.end method
