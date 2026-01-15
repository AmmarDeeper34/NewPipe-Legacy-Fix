.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;
.super Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek$MaybePeekObserver;
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

.field final onCompleteCall:Lio/reactivex/rxjava3/functions/Action;

.field final onDisposeCall:Lio/reactivex/rxjava3/functions/Action;

.field final onErrorCall:Lio/reactivex/rxjava3/functions/Consumer;

.field final onSubscribeCall:Lio/reactivex/rxjava3/functions/Consumer;

.field final onSuccessCall:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;)V

    .line 46
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onSubscribeCall:Lio/reactivex/rxjava3/functions/Consumer;

    .line 47
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onSuccessCall:Lio/reactivex/rxjava3/functions/Consumer;

    .line 48
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onErrorCall:Lio/reactivex/rxjava3/functions/Consumer;

    .line 49
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onCompleteCall:Lio/reactivex/rxjava3/functions/Action;

    .line 50
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    .line 51
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onDisposeCall:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek$MaybePeekObserver;

    invoke-direct {v1, p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek$MaybePeekObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
