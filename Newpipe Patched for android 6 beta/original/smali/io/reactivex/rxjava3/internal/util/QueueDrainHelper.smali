.class public abstract Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# direct methods
.method public static createQueue(I)Lio/reactivex/rxjava3/operators/SimpleQueue;
    .locals 1

    if-gez p0, :cond_0

    .line 215
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    neg-int p0, p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;-><init>(I)V

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method static isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .locals 0

    .line 283
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 285
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static postComplete(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)V
    .locals 9

    .line 401
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    .line 406
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    if-eqz p0, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    const-wide/high16 p2, -0x8000000000000000L

    and-long v0, p0, p2

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    or-long v0, p0, p2

    .line 419
    invoke-virtual {v4, p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p2

    if-eqz p2, :cond_1

    cmp-long p2, p0, v6

    if-eqz p2, :cond_3

    .line 422
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .locals 9

    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    cmp-long v5, v2, p0

    if-eqz v5, :cond_3

    .line 332
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    .line 336
    :cond_1
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 339
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v4

    .line 343
    :cond_2
    invoke-interface {p2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    .line 351
    :cond_4
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 352
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v4

    .line 356
    :cond_5
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    neg-long v2, v2

    .line 360
    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    and-long/2addr p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-nez v6, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    and-long p0, v2, v0

    move-wide v7, v2

    move-wide v2, p0

    move-wide p0, v7

    goto :goto_0
.end method

.method public static postCompleteRequest(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z
    .locals 8

    .line 258
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, v0, v4

    .line 264
    invoke-static {v2, v3, p0, p1}, Lio/reactivex/rxjava3/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    or-long/2addr v2, v6

    .line 266
    invoke-virtual {p4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    or-long/2addr p0, v4

    .line 270
    invoke-static/range {p0 .. p5}, Lio/reactivex/rxjava3/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/rxjava3/functions/BooleanSupplier;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static request(Lorg/reactivestreams/Subscription;I)V
    .locals 2

    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 227
    :goto_0
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
