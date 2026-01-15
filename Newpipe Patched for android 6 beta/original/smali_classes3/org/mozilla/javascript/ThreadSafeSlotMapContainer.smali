.class Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;
.super Lorg/mozilla/javascript/SlotMapContainer;
.source "ThreadSafeSlotMapContainer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final lock:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/SlotMapContainer;-><init>()V

    .line 19
    invoke-static {}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/locks/StampedLock;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/SlotMapContainer;-><init>(I)V

    .line 19
    invoke-static {}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/locks/StampedLock;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method


# virtual methods
.method public add(Lorg/mozilla/javascript/Slot;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->checkMapSize()V

    .line 107
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1}, Lorg/mozilla/javascript/SlotMap;->add(Lorg/mozilla/javascript/Slot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object p1, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 110
    throw p1
.end method

.method protected checkMapSize()V
    .locals 0

    .line 145
    invoke-super {p0}, Lorg/mozilla/javascript/SlotMapContainer;->checkMapSize()V

    return-void
.end method

.method public compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/mozilla/javascript/Slot;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/mozilla/javascript/SlotMap$SlotComputer<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 80
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2, p3}, Lorg/mozilla/javascript/SlotMap;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 83
    throw p1
.end method

.method public dirtySize()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->isEmpty()Z

    move-result v2

    .line 53
    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 59
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 62
    throw v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Slot;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->checkMapSize()V

    .line 70
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2, p3}, Lorg/mozilla/javascript/SlotMap;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 73
    throw p1
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2}, Lorg/mozilla/javascript/SlotMap;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 96
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2}, Lorg/mozilla/javascript/SlotMap;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 99
    throw p1
.end method

.method public readLock()J
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v2

    .line 31
    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 37
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 40
    throw v2
.end method

.method public unlockRead(J)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return-void
.end method
