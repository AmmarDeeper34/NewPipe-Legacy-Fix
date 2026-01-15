.class final Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;
.super Ljava/lang/Object;
.source "DisposeOnCancel.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field final upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    .line 35
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/DisposeOnCancel;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
