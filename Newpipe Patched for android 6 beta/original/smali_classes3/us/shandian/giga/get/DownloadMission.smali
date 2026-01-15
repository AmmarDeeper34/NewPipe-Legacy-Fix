.class public Lus/shandian/giga/get/DownloadMission;
.super Lus/shandian/giga/get/Mission;
.source "DownloadMission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/shandian/giga/get/DownloadMission$Lock;,
        Lus/shandian/giga/get/DownloadMission$Block;,
        Lus/shandian/giga/get/DownloadMission$HttpError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field final LOCK:Ljava/lang/Object;

.field private transient blockAcquired:[Z

.field blocks:[I

.field public current:I

.field public volatile done:J

.field public enqueued:Z

.field public errCode:I

.field public errObject:Ljava/lang/Exception;

.field volatile fallbackResumeOffset:J

.field private transient finishCount:I

.field public transient init:Ljava/lang/Thread;

.field public transient mHandler:Landroid/os/Handler;

.field public transient maxRetry:I

.field public transient metadata:Ljava/io/File;

.field public nearLength:J

.field public offsets:[J

.field public psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

.field public volatile psState:I

.field public recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

.field public volatile transient running:Z

.field public threadCount:I

.field public transient threads:[Ljava/lang/Thread;

.field public unknownLength:Z

.field public urls:[Ljava/lang/String;

.field private volatile transient writingToFile:Z

.field private transient writingToFileNext:J


# direct methods
.method public static synthetic $r8$lambda$IA0_L2vJSLZLqg0BQARF8wvRshk(Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->doPostprocessing()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/streams/io/StoredFileHelper;CLus/shandian/giga/postprocessing/Postprocessing;)V
    .locals 3

    .line 156
    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    const/4 v0, 0x3

    .line 130
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 150
    new-instance v2, Lus/shandian/giga/get/DownloadMission$Lock;

    invoke-direct {v2, v1}, Lus/shandian/giga/get/DownloadMission$Lock;-><init>(Lus/shandian/giga/get/DownloadMission-IA;)V

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 152
    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 154
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    .line 157
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 159
    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 160
    iput-char p3, p0, Lus/shandian/giga/get/Mission;->kind:C

    .line 161
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 162
    iput-boolean v2, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 163
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 164
    iput-object p2, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 165
    iput-object p4, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "urls array is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteThisFromFile()Z
    .locals 3

    .line 748
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const/4 v2, 0x0

    .line 750
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 751
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 752
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doPostprocessing()V
    .locals 10

    const/4 v0, -0x1

    .line 688
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, 0x0

    .line 689
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    .line 692
    invoke-direct {p0, v3}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 701
    :try_start_0
    iget-object v6, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v6, p0}, Lus/shandian/giga/postprocessing/Postprocessing;->run(Lus/shandian/giga/get/DownloadMission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v0, :cond_0

    const/4 v4, 0x2

    :cond_0
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v6

    .line 703
    :try_start_1
    const-string v7, "DownloadMission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Post-processing failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v9}, Lus/shandian/giga/postprocessing/Postprocessing;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    instance-of v7, v6, Ljava/io/InterruptedIOException;

    if-nez v7, :cond_6

    instance-of v7, v6, Ljava/nio/channels/ClosedByInterruptException;

    if-nez v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 710
    :cond_1
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_2

    iput v3, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :cond_2
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_3

    const/4 v4, 0x2

    :cond_3
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    move-object v1, v6

    .line 717
    :goto_0
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-eq v2, v0, :cond_5

    if-nez v1, :cond_4

    .line 718
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 719
    :cond_4
    invoke-virtual {p0, v3, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    .line 723
    :cond_5
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    :cond_6
    :goto_1
    const/16 v2, 0x3f0

    .line 706
    :try_start_2
    invoke-virtual {p0, v2, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v1, v0, :cond_7

    const/4 v4, 0x2

    :cond_7
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    return-void

    :goto_2
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v0, :cond_8

    const/4 v4, 0x2

    :cond_8
    invoke-direct {p0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 715
    throw v1
.end method

.method private initializer()V
    .locals 2

    .line 559
    new-instance v0, Lus/shandian/giga/get/DownloadInitializer;

    invoke-direct {v0, p0}, Lus/shandian/giga/get/DownloadInitializer;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    return-void
.end method

.method private joinForThreads(I)V
    .locals 6

    .line 794
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    if-lez p1, :cond_0

    .line 801
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 803
    const-string v0, "DownloadMission"

    const-string v1, "Initializer thread is still running"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 814
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 815
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 816
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 820
    :cond_3
    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 821
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    if-lez p1, :cond_5

    int-to-long v4, p1

    .line 825
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    .line 828
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A download thread is still running"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private notify(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private notifyPostProcessing(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 408
    const-string v0, "Failed"

    goto :goto_0

    .line 405
    :cond_0
    const-string v0, "Completed"

    goto :goto_0

    .line 402
    :cond_1
    const-string v0, "Running"

    .line 411
    :goto_0
    const-string v2, "DownloadMission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " postprocessing on "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_2

    .line 414
    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 421
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 422
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private pauseThreads()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v0, -0x1

    .line 518
    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    .line 519
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    return-void
.end method

.method private runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 762
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method private runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 783
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p2
.end method

.method private writeThisToFileAsync()V
    .locals 2

    .line 563
    new-instance v0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v1, -0x2

    invoke-direct {p0, v1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method acquireBlock()Lus/shandian/giga/get/DownloadMission$Block;
    .locals 5

    .line 179
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 180
    :goto_0
    :try_start_0
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 181
    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    .line 182
    new-instance v2, Lus/shandian/giga/get/DownloadMission$Block;

    invoke-direct {v2}, Lus/shandian/giga/get/DownloadMission$Block;-><init>()V

    .line 183
    iput v1, v2, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    .line 184
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aget v3, v3, v1

    iput v3, v2, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    .line 186
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 187
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete()Z
    .locals 2

    .line 527
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/shandian/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    :cond_0
    const/4 v0, 0x4

    .line 529
    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    .line 531
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->deleteThisFromFile()Z

    move-result v0

    .line 533
    invoke-super {p0}, Lus/shandian/giga/get/Mission;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method doRecover(I)V
    .locals 2

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to recover the mission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMission"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, p1, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 736
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    return-void

    .line 740
    :cond_0
    invoke-direct {p0, v1}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    .line 742
    new-instance v0, Lus/shandian/giga/get/DownloadMissionRecover;

    invoke-direct {v0, p0, p1}, Lus/shandian/giga/get/DownloadMissionRecover;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    const/4 p1, -0x3

    .line 743
    invoke-direct {p0, p1, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    aput-object p1, v0, v1

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    return-void
.end method

.method establishConnection(ILjava/net/HttpURLConnection;)V
    .locals 0

    .line 250
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_2

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_2

    const/16 p2, 0xcf

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1a0

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    const/16 p2, 0x12b

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    new-instance p2, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {p2, p1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p2

    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    new-instance p2, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {p2, p1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p2
.end method

.method public getLength()J
    .locals 5

    .line 627
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    aget-wide v1, v0, v2

    iget-wide v3, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v1, v3

    const/4 v3, 0x0

    .line 632
    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    .line 634
    iget-wide v3, p0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 628
    :cond_2
    :goto_1
    iget-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    return-wide v0
.end method

.method public hasInvalidStorage()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCorrupt()Z
    .locals 4

    .line 674
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v3, 0x3f1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public isFinished()Z
    .locals 2

    .line 584
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_0

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPsFailed()Z
    .locals 2

    .line 593
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 596
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    iget-boolean v0, v0, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    return v0
.end method

.method public isPsRunning()Z
    .locals 3

    .line 608
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_1

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRecovering()Z
    .locals 3

    .line 684
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    instance-of v1, v0, Lus/shandian/giga/get/DownloadMissionRecover;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public declared-synchronized notifyError(ILjava/lang/Exception;)V
    .locals 5

    monitor-enter p0

    .line 317
    :try_start_0
    const-string v0, "DownloadMission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyError() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x3eb

    const/16 v1, 0x3f2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/system/ErrnoException;

    if-eqz v3, :cond_1

    .line 319
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Landroid/system/ErrnoException;

    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    .line 320
    sget v4, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v3, v4, :cond_0

    move-object p2, v2

    const/16 p1, 0x3f2

    goto :goto_0

    .line 323
    :cond_0
    sget v4, Landroid/system/OsConstants;->EACCES:I

    if-ne v3, v4, :cond_1

    move-object p2, v2

    const/16 p1, 0x3eb

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 329
    :cond_1
    :goto_0
    instance-of v3, p2, Ljava/io/IOException;

    if-eqz v3, :cond_4

    .line 330
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Permission denied"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ENOSPC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3f2

    goto :goto_1

    .line 336
    :cond_3
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x3e9

    goto :goto_1

    :cond_4
    move v0, p1

    move-object v2, p2

    .line 342
    :goto_1
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 343
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/16 p1, 0x3f4

    if-eq v0, p1, :cond_6

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1f4

    if-lt v0, p1, :cond_5

    const/16 p1, 0x257

    if-le v0, p1, :cond_6

    :cond_5
    const/4 p1, 0x0

    .line 355
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    :cond_6
    :pswitch_0
    const/4 p1, 0x3

    .line 358
    invoke-direct {p0, p1}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    .line 360
    iget-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->pauseThreads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_7
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized notifyError(Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    .line 297
    :try_start_0
    const-string v0, "DownloadMission"

    const-string v1, "notifyError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e9

    .line 300
    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 301
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    const/16 p1, 0x3ec

    .line 302
    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 303
    :cond_1
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v0, :cond_2

    .line 304
    check-cast p1, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 305
    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    const/16 p1, 0x3ee

    .line 306
    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 307
    :cond_3
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    const/16 p1, 0x3ed

    .line 308
    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 309
    :cond_4
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_5

    const/16 p1, 0x3f4

    .line 310
    invoke-virtual {p0, p1, v1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x3ea

    .line 312
    invoke-virtual {p0, v0, p1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
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

.method declared-synchronized notifyFinished()V
    .locals 7

    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 365
    iget v2, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 371
    :try_start_1
    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 372
    array-length v1, v1

    if-ge v2, v1, :cond_1

    .line 374
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    aget-wide v3, v1, v0

    iget-wide v5, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 375
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->initializer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 380
    :cond_1
    :try_start_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-nez v0, :cond_2

    .line 381
    new-instance v0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    .line 382
    invoke-direct {p0, v3, v0}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Thread;

    aput-object v0, v2, v1

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 390
    :cond_2
    :try_start_3
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 391
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 392
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 394
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->deleteThisFromFile()Z

    const/4 v0, 0x2

    .line 395
    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method declared-synchronized notifyProgress(J)V
    .locals 5

    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v0, :cond_0

    .line 282
    iget-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 285
    :cond_0
    :goto_0
    iget-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 287
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 289
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    iget-wide v2, p0, Lus/shandian/giga/get/DownloadMission;->writingToFileNext:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    .line 291
    iget-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->done:J

    const-wide/32 v0, 0x80000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFileNext:J

    .line 292
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFileAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;
    .locals 3

    .line 222
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 224
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "Accept-Encoding"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 228
    const-string p2, "HEAD"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x7530

    .line 231
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_2

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    cmp-long p3, p5, v0

    if-lez p3, :cond_1

    .line 235
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 237
    :cond_1
    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method openConnection(ZJJ)Ljava/net/HttpURLConnection;
    .locals 9

    .line 218
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v3, v0, v1

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 4

    .line 487
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v1, 0x1

    .line 497
    invoke-direct {p0, v1}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    .line 499
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 502
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    .line 503
    :try_start_0
    invoke-virtual {p0, v0, v1, v3}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    .line 504
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    .line 513
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->pauseThreads()V

    return-void
.end method

.method public psContinue(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 653
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ef

    .line 654
    :goto_0
    iput p1, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 655
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method releaseBlock(II)V
    .locals 3

    .line 202
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 204
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    aput p2, v1, p1

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetState(ZZI)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 545
    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    .line 546
    iput p3, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 p3, 0x0

    .line 547
    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 v2, 0x0

    .line 548
    iput-boolean v2, p0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 549
    new-array v3, v2, [Ljava/lang/Thread;

    iput-object v3, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 550
    iput-wide v0, p0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 551
    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 552
    iput-object p3, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    if-eqz p1, :cond_0

    .line 554
    iput v2, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    :cond_0
    if-eqz p2, :cond_1

    .line 555
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    :cond_1
    return-void
.end method

.method public setEnqueued(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 644
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFileAsync()V

    return-void
.end method

.method public start()V
    .locals 7

    .line 430
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x2710

    .line 433
    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->joinForThreads(I)V

    .line 435
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v0, -0x1

    .line 436
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 438
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e9

    .line 439
    invoke-virtual {p0, v0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    .line 443
    :cond_1
    iget v0, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 444
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, v0}, Lus/shandian/giga/get/DownloadMission;->notify(I)V

    .line 450
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v4, p0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    const/16 v0, 0x3f5

    .line 451
    invoke-virtual {p0, v0}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    .line 455
    :cond_3
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-nez v3, :cond_4

    .line 456
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMission;->initializer()V

    return-void

    .line 460
    :cond_4
    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    .line 461
    iput v0, p0, Lus/shandian/giga/get/DownloadMission;->finishCount:I

    .line 462
    array-length v2, v3

    new-array v2, v2, [Z

    iput-object v2, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    .line 464
    array-length v2, v3

    if-ge v2, v1, :cond_5

    .line 465
    new-instance v2, Lus/shandian/giga/get/DownloadRunnableFallback;

    invoke-direct {v2, p0}, Lus/shandian/giga/get/DownloadRunnableFallback;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    invoke-direct {p0, v1, v2}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Thread;

    aput-object v2, v1, v0

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    return-void

    .line 468
    :cond_5
    array-length v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget v6, v3, v4

    if-ltz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-ge v5, v1, :cond_8

    .line 471
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    .line 475
    :cond_8
    iget v1, p0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 477
    :goto_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    add-int/lit8 v2, v0, 0x1

    .line 478
    new-instance v3, Lus/shandian/giga/get/DownloadRunnable;

    invoke-direct {v3, p0, v0}, Lus/shandian/giga/get/DownloadRunnable;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    invoke-direct {p0, v2, v3}, Lus/shandian/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method writeThisToFile()V
    .locals 2

    .line 571
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 573
    :cond_0
    invoke-static {v1, p0}, Lus/shandian/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    const/4 v1, 0x0

    .line 574
    iput-boolean v1, p0, Lus/shandian/giga/get/DownloadMission;->writingToFile:Z

    .line 575
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
