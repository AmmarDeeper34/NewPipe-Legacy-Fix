.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;
.super Lio/reactivex/rxjava3/core/Maybe;
.source "MaybeJust.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Maybe;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .locals 1

    .line 35
    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->disposed()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 36
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
