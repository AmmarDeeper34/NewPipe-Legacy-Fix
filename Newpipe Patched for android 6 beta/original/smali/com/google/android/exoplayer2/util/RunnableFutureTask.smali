.class public abstract Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.super Ljava/lang/Object;
.source "RunnableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cancelLock:Ljava/lang/Object;

.field private canceled:Z

.field private exception:Ljava/lang/Exception;

.field private final finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final started:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private workThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final blockUntilFinished()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final blockUntilStarted()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelWork()V

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 102
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 104
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 91
    monitor-exit v0

    return p1

    .line 105
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected cancelWork()V
    .locals 0

    .line 0
    return-void
.end method

.method protected abstract doWork()Ljava/lang/Object;
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 81
    iget-object p3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-eqz v1, :cond_0

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    const/4 v0, 0x0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->doWork()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 133
    :try_start_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 142
    throw v1

    :catchall_4
    move-exception v0

    .line 141
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 127
    :goto_1
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method
