.class public Lcom/livefront/bridge/disk/FileDiskHandler;
.super Ljava/lang/Object;
.source "FileDiskHandler.java"

# interfaces
.implements Lcom/livefront/bridge/disk/DiskHandler;


# instance fields
.field private final mDirectory:Ljava/io/File;

.field private volatile mIsLoadedOrTimedOut:Z

.field private final mKeyByteMap:Ljava/util/Map;

.field private final mPendingLoadFuture:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 57
    const-string v1, "com.livefront.bridge"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/io/File;

    .line 60
    new-instance p1, Lcom/livefront/bridge/disk/FileDiskHandler$1;

    invoke-direct {p1, p0}, Lcom/livefront/bridge/disk/FileDiskHandler$1;-><init>(Lcom/livefront/bridge/disk/FileDiskHandler;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/livefront/bridge/disk/FileDiskHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->loadAllFiles()V

    return-void
.end method

.method private cancelFileLoading()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private deleteFilesByKey(Ljava/lang/String;)V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private getBytesFromDisk(Ljava/lang/String;)[B
    .locals 4

    .line 145
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getFileByKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 152
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    .line 160
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    :catch_1
    throw p1

    .line 165
    :catch_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-object v0
.end method

.method private getBytesInternal(Ljava/lang/String;)[B
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getBytesFromDisk(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getFileByKey(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 201
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 202
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p1
.end method

.method private getKeyForFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p1
.end method

.method private loadAllFiles()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->getKeyForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-direct {p0, v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->getBytesInternal(Ljava/lang/String;)[B

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private waitForFilesToLoad()V
    .locals 4

    .line 227
    iget-boolean v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->cancelFileLoading()V

    .line 78
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->deleteFilesByKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->cancelFileLoading()V

    .line 71
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/livefront/bridge/disk/FileDiskHandler;->deleteFilesByKey(Ljava/lang/String;)V

    return-void
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->waitForFilesToLoad()V

    .line 86
    invoke-direct {p0, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getBytesInternal(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/lang/String;[B)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    :catch_0
    throw p2

    .line 109
    :catch_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-void
.end method
