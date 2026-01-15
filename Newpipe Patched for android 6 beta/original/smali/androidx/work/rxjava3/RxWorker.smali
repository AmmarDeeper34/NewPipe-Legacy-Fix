.class public abstract Landroidx/work/rxjava3/RxWorker;
.super Landroidx/work/ListenableWorker;
.source "RxWorker.java"


# static fields
.field static final INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$MF0_FqbUzBPwsMb7ASkBIN7FFBQ(Landroidx/work/rxjava3/RxWorker;Lio/reactivex/rxjava3/core/Single;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->getBackgroundScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    const/4 v1, 0x1

    .line 194
    invoke-static {v0, v1, v1}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Landroidx/work/rxjava3/RxWorker$1;

    invoke-direct {v0, p0, p2}, Landroidx/work/rxjava3/RxWorker$1;-><init>(Landroidx/work/rxjava3/RxWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 198
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 214
    const-string p0, "converted single to future"

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroidx/work/impl/utils/SynchronousExecutor;

    invoke-direct {v0}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    sput-object v0, Landroidx/work/rxjava3/RxWorker;->INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private convert(Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 190
    new-instance v0, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/work/rxjava3/RxWorker$$ExternalSyntheticLambda0;-><init>(Landroidx/work/rxjava3/RxWorker;Lio/reactivex/rxjava3/core/Single;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract createWork()Lio/reactivex/rxjava3/core/Single;
.end method

.method protected getBackgroundScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundInfo()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->getForegroundInfo()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/rxjava3/RxWorker;->convert(Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->createWork()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/rxjava3/RxWorker;->convert(Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
