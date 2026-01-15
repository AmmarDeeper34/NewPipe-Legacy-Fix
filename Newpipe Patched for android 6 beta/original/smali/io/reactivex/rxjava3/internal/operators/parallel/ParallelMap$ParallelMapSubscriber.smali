.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;
.super Ljava/lang/Object;
.source "ParallelMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelMapSubscriber"
.end annotation


# instance fields
.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;

.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 86
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    .line 143
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    .line 134
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null value"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->cancel()V

    .line 120
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 104
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
