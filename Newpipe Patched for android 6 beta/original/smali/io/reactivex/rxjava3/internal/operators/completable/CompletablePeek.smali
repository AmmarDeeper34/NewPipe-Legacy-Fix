.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;
.super Lio/reactivex/rxjava3/core/Completable;
.source "CompletablePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

.field final onComplete:Lio/reactivex/rxjava3/functions/Action;

.field final onDispose:Lio/reactivex/rxjava3/functions/Action;

.field final onError:Lio/reactivex/rxjava3/functions/Consumer;

.field final onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

.field final onTerminate:Lio/reactivex/rxjava3/functions/Action;

.field final source:Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/CompletableSource;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;Lio/reactivex/rxjava3/functions/Action;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    .line 40
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    .line 41
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    .line 42
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    .line 43
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/rxjava3/functions/Action;

    .line 44
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onAfterTerminate:Lio/reactivex/rxjava3/functions/Action;

    .line 45
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onDispose:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->source:Lio/reactivex/rxjava3/core/CompletableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;

    invoke-direct {v1, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
