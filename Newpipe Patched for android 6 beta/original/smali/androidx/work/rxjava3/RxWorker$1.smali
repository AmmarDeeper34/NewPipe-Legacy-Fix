.class Landroidx/work/rxjava3/RxWorker$1;
.super Ljava/lang/Object;
.source "RxWorker.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/rxjava3/RxWorker;->convert(Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/rxjava3/RxWorker;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method constructor <init>(Landroidx/work/rxjava3/RxWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 198
    iput-object p1, p0, Landroidx/work/rxjava3/RxWorker$1;->this$0:Landroidx/work/rxjava3/RxWorker;

    iput-object p2, p0, Landroidx/work/rxjava3/RxWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/work/rxjava3/RxWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    .line 201
    iget-object v0, p0, Landroidx/work/rxjava3/RxWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/work/rxjava3/RxWorker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/work/rxjava3/RxWorker$1$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/rxjava3/disposables/Disposable;)V

    sget-object p1, Landroidx/work/rxjava3/RxWorker;->INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/work/rxjava3/RxWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method
