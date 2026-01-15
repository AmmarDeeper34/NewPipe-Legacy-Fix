.class public final Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;
.super Ljava/lang/Object;
.source "MpscLinkedQueue.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/SimplePlainQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    }
.end annotation


# instance fields
.field private final consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

.field private final producerNode:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;-><init>()V

    .line 38
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    .line 39
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 122
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method lpConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method lvConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->soNext(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .line 88
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lpConsumerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->lvNext()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v3

    .line 93
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    .line 95
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->soNext(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    return-object v3

    .line 98
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->lvProducerNode()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 100
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->lvNext()Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v3

    .line 105
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    .line 107
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;->soNext(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V

    return-object v3

    :cond_2
    return-object v2
.end method

.method spConsumerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->consumerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method xchgProducerNode(Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;)Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;->producerNode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue$LinkedQueueNode;

    return-object p1
.end method
