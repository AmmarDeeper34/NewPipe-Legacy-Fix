.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;
.super Lio/reactivex/rxjava3/core/Maybe;
.source "MaybeEmpty.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# static fields
.field public static final INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Maybe;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .locals 0

    .line 29
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
