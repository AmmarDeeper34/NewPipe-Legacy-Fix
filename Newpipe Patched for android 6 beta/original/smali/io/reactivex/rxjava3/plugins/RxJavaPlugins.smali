.class public abstract Lio/reactivex/rxjava3/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex/rxjava3/functions/Consumer;

.field static volatile failNonBlockingScheduler:Z

.field static volatile lockdown:Z

.field static volatile onBeforeBlocking:Lio/reactivex/rxjava3/functions/BooleanSupplier;

.field static volatile onCompletableAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onCompletableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

.field static volatile onComputationHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onFlowableAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onFlowableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

.field static volatile onInitComputationHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onInitIoHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onInitNewThreadHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onInitSingleHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onIoHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onMaybeAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onMaybeSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

.field static volatile onObservableAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onObservableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

.field static volatile onParallelAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onParallelSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

.field static volatile onScheduleHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onSingleAssembly:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onSingleHandler:Lio/reactivex/rxjava3/functions/Function;

.field static volatile onSingleSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;


# direct methods
.method static apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1360
    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex/rxjava3/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1362
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1340
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1342
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 1392
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method static callRequireNonNull(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1376
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Supplier result can\'t be null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1378
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createExecutorScheduler(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1325
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public static initComputationScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 274
    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->callRequireNonNull(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 279
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initIoScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 290
    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    .line 293
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->callRequireNonNull(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initNewThreadScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 306
    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    .line 309
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->callRequireNonNull(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 311
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initSingleScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 322
    const-string v0, "Scheduler Supplier can\'t be null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    .line 325
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->callRequireNonNull(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0

    .line 327
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method static isBug(Ljava/lang/Throwable;)Z
    .locals 2

    .line 401
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/OnErrorNotImplementedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 405
    :cond_0
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    if-eqz v0, :cond_1

    return v1

    .line 409
    :cond_1
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    if-eqz v0, :cond_2

    return v1

    .line 414
    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    return v1

    .line 419
    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    return v1

    .line 423
    :cond_4
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    return v1

    .line 427
    :cond_5
    instance-of p0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isFailOnNonBlockingScheduler()Z
    .locals 1

    .line 173
    sget-boolean v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->failNonBlockingScheduler:Z

    return v0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/core/Completable;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    .line 1124
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1126
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Completable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/core/Flowable;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 1046
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1048
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Flowable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/core/Maybe;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 1030
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1032
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Maybe;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1

    .line 1078
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Observable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 1110
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1112
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Single;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/rxjava3/parallel/ParallelFlowable;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;
    .locals 1

    .line 1194
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onParallelAssembly:Lio/reactivex/rxjava3/functions/Function;

    if-eqz v0, :cond_0

    .line 1196
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    :cond_0
    return-object p0
.end method

.method public static onBeforeBlocking()Z
    .locals 1

    .line 1212
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onBeforeBlocking:Lio/reactivex/rxjava3/functions/BooleanSupplier;

    if-eqz v0, :cond_0

    .line 1215
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 1217
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onComputationScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 337
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 341
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 366
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/rxjava3/functions/Consumer;

    if-nez p0, :cond_0

    .line 369
    const-string p0, "onError called with a null Throwable."

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->isBug(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    new-instance v1, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 378
    :try_start_0
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 387
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 447
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 451
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 475
    const-string v0, "run is null"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 481
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static onSingleScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 491
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/rxjava3/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 495
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/core/Completable;Lio/reactivex/rxjava3/core/CompletableObserver;)Lio/reactivex/rxjava3/core/CompletableObserver;
    .locals 1

    .line 980
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 982
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/CompletableObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/core/MaybeObserver;)Lio/reactivex/rxjava3/core/MaybeObserver;
    .locals 1

    .line 997
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 999
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/MaybeObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/core/Observer;
    .locals 1

    .line 948
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 950
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Observer;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;)Lio/reactivex/rxjava3/core/SingleObserver;
    .locals 1

    .line 965
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 967
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/core/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 931
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 933
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/reactivestreams/Subscriber;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/rxjava3/parallel/ParallelFlowable;[Lorg/reactivestreams/Subscriber;)[Lorg/reactivestreams/Subscriber;
    .locals 1

    .line 1014
    sget-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onParallelSubscribe:Lio/reactivex/rxjava3/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 1016
    invoke-static {v0, p0, p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->apply(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/reactivestreams/Subscriber;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 1

    .line 558
    sget-boolean v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 561
    sput-object p0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/rxjava3/functions/Consumer;

    return-void

    .line 559
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2

    .line 435
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 437
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
