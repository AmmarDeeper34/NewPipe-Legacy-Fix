.class public abstract Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.super Ljava/lang/Object;
.source "PlayQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEBUG:Z


# instance fields
.field private backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private transient broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

.field private transient disposed:Z

.field private transient eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->DEBUG:Z

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_0

    .line 57
    iget-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized removeInternal(I)V
    .locals 3

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 348
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    if-le v0, p1, :cond_0

    .line 351
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-lt v0, v1, :cond_1

    .line 354
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 357
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 360
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 366
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_4
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized append(Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    .line 279
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 285
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 286
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued()Z

    move-result p1

    if-nez p1, :cond_1

    .line 287
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 90
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    return-void
.end method

.method public enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 p2, v0, 0x1

    .line 303
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 307
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    return-void
.end method

.method public equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 544
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 545
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 546
    iget-object v3, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 548
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z
    .locals 2

    .line 556
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public declared-synchronized error()V
    .locals 4

    monitor-enter p0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 339
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 340
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 341
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    iget-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 343
    :cond_0
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;-><init>(II)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract fetch()V
.end method

.method public getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 182
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStreams()Ljava/util/List;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public init()V
    .locals 2

    .line 74
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->eventBroadcast:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 76
    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->BUFFER:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->toFlowable(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 77
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playqueue/events/InitEvent;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/playqueue/events/InitEvent;-><init>()V

    .line 78
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    return-void
.end method

.method public abstract isComplete()Z
.end method

.method public isDisposed()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isShuffled()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized move(II)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_6

    if-gez p2, :cond_0

    goto :goto_3

    .line 387
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 393
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-ge p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    .line 395
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_3
    if-le p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    .line 397
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 400
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    const/4 v1, 0x0

    .line 401
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setAutoQueued(Z)V

    .line 402
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 388
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 385
    :cond_6
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyChange()V
    .locals 2

    monitor-enter p0

    .line 263
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized offsetIndex(I)V
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized previous()Z
    .locals 3

    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 520
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 526
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setIndex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->removeInternal(I)V

    .line 327
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setIndex(I)V
    .locals 3

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 151
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 154
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eq v0, p1, :cond_4

    .line 157
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;-><init>(II)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setRecovery(IJ)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 416
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0, p2, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setRecoveryPosition(J)V

    .line 421
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/events/RecoveryEvent;

    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/playqueue/events/RecoveryEvent;-><init>(IJ)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 417
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shuffle()V
    .locals 4

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 458
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 459
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 463
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 468
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 469
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 470
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 472
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;

    invoke-direct {v1, v0, v3}, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;-><init>(II)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized unsetRecovery(I)V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000000000000000L

    .line 433
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unshuffle()V
    .locals 4

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 489
    monitor-exit p0

    return-void

    .line 491
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 492
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    iput-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    const/4 v3, 0x0

    .line 495
    iput-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->backup:Ljava/util/List;

    .line 497
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 499
    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 501
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 503
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 504
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->history:Ljava/util/List;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->streams:Ljava/util/List;

    iget-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->queueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/player/playqueue/events/ReorderEvent;-><init>(II)V

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcast(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
