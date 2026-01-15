.class final Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;
.super Ljava/lang/Object;
.source "InstantPeriodicTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field static final CANCELLED:Ljava/util/concurrent/FutureTask;


# instance fields
.field final executor:Ljava/util/concurrent/ExecutorService;

.field final first:Ljava/util/concurrent/atomic/AtomicReference;

.field final rest:Ljava/util/concurrent/atomic/AtomicReference;

.field runner:Ljava/lang/Thread;

.field final task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->CANCELLED:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->task:Ljava/lang/Runnable;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->first:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->rest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 53
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    .line 54
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->setRest(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 57
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    .line 58
    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 59
    throw v1
.end method

.method public dispose()V
    .locals 6

    .line 66
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->first:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->CANCELLED:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 68
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->rest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    .line 72
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->first:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->CANCELLED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setFirst(Ljava/util/concurrent/Future;)V
    .locals 2

    .line 83
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->first:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 84
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->CANCELLED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 88
    :cond_2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->first:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding1;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method setRest(Ljava/util/concurrent/Future;)V
    .locals 2

    .line 96
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->rest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 97
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->CANCELLED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/InstantPeriodicTask;->rest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding1;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
