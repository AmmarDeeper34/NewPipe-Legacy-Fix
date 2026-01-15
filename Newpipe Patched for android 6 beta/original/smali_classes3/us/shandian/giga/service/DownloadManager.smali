.class public Lus/shandian/giga/service/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/shandian/giga/service/DownloadManager$NetworkState;,
        Lus/shandian/giga/service/DownloadManager$MissionIterator;,
        Lus/shandian/giga/service/DownloadManager$MissionItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private final mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

.field mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field private final mMissionsFinished:Ljava/util/ArrayList;

.field private final mMissionsPending:Ljava/util/ArrayList;

.field private final mPendingMissionsDir:Ljava/io/File;

.field mPrefMaxRetry:I

.field mPrefMeteredDownloads:Z

.field mPrefQueueLimit:Z

.field private mSelfMissionsControl:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMissionsFinished(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 51
    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    .line 72
    new-instance v0, Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-direct {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 73
    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p4, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 75
    iput-object p3, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 76
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 77
    invoke-static {p1}, Lus/shandian/giga/service/DownloadManager;->getPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    .line 79
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->loadPendingMissions(Landroid/content/Context;)V

    return-void
.end method

.method private canDownloadInCurrentNetwork()Z
    .locals 3

    .line 498
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 499
    :cond_0
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    if-eqz v1, :cond_2

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getAnyMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;
    .locals 1

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getPendingMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 392
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/shandian/giga/get/Mission;

    monitor-exit p0

    return-object p1

    .line 393
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I
    .locals 7

    const/4 v0, 0x0

    .line 365
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 366
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    iget-object v1, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    .line 375
    :cond_1
    :goto_1
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    invoke-virtual {p1, v1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 376
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private getMainStorage(Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 3

    .line 585
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-object p1

    .line 586
    :cond_0
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-object p1

    .line 588
    :cond_1
    sget-object v0, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown download category, not [audio video]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getPendingDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 83
    const-string v0, "pending_downloads"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 86
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->testDir(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "path to pending downloads are not accessible"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPendingMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;
    .locals 3

    .line 347
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 348
    iget-object v2, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isDirectoryAvailable(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadFinishedMissions()Ljava/util/ArrayList;
    .locals 4

    .line 115
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/FinishedMission;

    .line 121
    iget-object v3, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v3, v2}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadPendingMissions(Landroid/content/Context;)V
    .locals 13

    .line 133
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    sget-object p1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "listFiles() returned null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto/16 :goto_4

    .line 146
    :cond_1
    invoke-static {p1}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 147
    sget-object v3, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' as temporal directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_c

    aget-object v6, v0, v5

    .line 150
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    .line 151
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 153
    :cond_3
    invoke-static {v6}, Lus/shandian/giga/util/Utility;->readFromFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lus/shandian/giga/get/DownloadMission;

    if-nez v7, :cond_4

    .line 156
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 161
    :cond_4
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 163
    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    .line 165
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 170
    :cond_5
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v8

    const/16 v9, 0x3f3

    if-eqz v8, :cond_6

    iget v8, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-eq v8, v9, :cond_6

    .line 172
    iget-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    if-nez v8, :cond_6

    .line 174
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 179
    :cond_6
    new-array v8, v4, [Ljava/lang/Thread;

    iput-object v8, v7, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 183
    :try_start_0
    iget-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-static {v8, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->deserialize(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/Context;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object v8

    iput-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 184
    invoke-virtual {v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 186
    sget-object v10, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load the file source of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v12}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const/4 v8, 0x0

    .line 191
    :goto_1
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 192
    iget-object v9, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    iget-boolean v9, v9, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    .line 194
    iget-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->delete()Z

    move-result v8

    if-nez v8, :cond_8

    .line 195
    sget-object v8, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to delete incomplete download file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    iput v4, v7, Lus/shandian/giga/get/DownloadMission;->psState:I

    const/16 v8, 0x3f0

    .line 199
    iput v8, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    goto :goto_2

    :cond_9
    if-nez v8, :cond_a

    .line 201
    invoke-virtual {p0, v7}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    .line 204
    invoke-virtual {v7}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_a

    .line 205
    invoke-virtual {v7, v2, v2, v9}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    .line 209
    :cond_a
    :goto_2
    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v8, :cond_b

    .line 210
    invoke-virtual {v8}, Lus/shandian/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    .line 211
    iget-object v8, v7, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-virtual {v8, v1}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 214
    :cond_b
    iput-object v6, v7, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 215
    iget v6, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v6, v7, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 216
    iget-object v6, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v6, v7, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 218
    iget-object v6, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 221
    :cond_c
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_d

    .line 222
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    new-instance v0, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    :goto_4
    return-void
.end method

.method static pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 569
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 570
    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 573
    :cond_1
    const-string v0, "muxing_tmp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 574
    invoke-static {v0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 577
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 578
    invoke-static {p0}, Lus/shandian/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 580
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not temporal directories are available"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static testDir(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 96
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lus/shandian/giga/util/Utility;->mkdir(Ljava/io/File;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testDir() cannot create the directory in path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, ".tmp"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 103
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 105
    :goto_0
    sget-object v2, Lus/shandian/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testDir() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public canRecoverMission(Lus/shandian/giga/get/DownloadMission;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 538
    :cond_0
    iget v1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    if-eqz p1, :cond_2

    .line 540
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkForExistingMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/service/MissionState;
    .locals 1

    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getPendingMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/DownloadMission;

    move-result-object v0

    if-nez v0, :cond_1

    .line 548
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 556
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    sget-object p1, Lus/shandian/giga/service/MissionState;->None:Lus/shandian/giga/service/MissionState;

    return-object p1

    .line 550
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 551
    sget-object p1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    monitor-exit p0

    return-object p1

    .line 553
    :cond_2
    iget-boolean p1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_3

    sget-object p1, Lus/shandian/giga/service/MissionState;->PendingRunning:Lus/shandian/giga/service/MissionState;

    goto :goto_0

    :cond_3
    sget-object p1, Lus/shandian/giga/service/MissionState;->Pending:Lus/shandian/giga/service/MissionState;

    :goto_0
    monitor-exit p0

    return-object p1

    .line 556
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deleteMission(Lus/shandian/giga/get/Mission;Z)V
    .locals 1

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 291
    :cond_0
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 297
    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    .line 299
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forgetFinishedDownloads()V
    .locals 3

    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    .line 491
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v2, v1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 493
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 1

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager;->getAnyMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/get/Mission;

    move-result-object p1

    if-nez p1, :cond_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 307
    :cond_0
    instance-of v0, p1, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 315
    invoke-virtual {p1}, Lus/shandian/giga/get/Mission;->delete()Z

    .line 316
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIterator()Lus/shandian/giga/service/DownloadManager$MissionIterator;
    .locals 2

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 482
    new-instance v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;-><init>(Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager-IA;)V

    return-object v0
.end method

.method getRunningMissionsCount()I
    .locals 4

    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    .line 402
    iget-boolean v3, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 405
    :cond_1
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleConnectivityState(Lus/shandian/giga/service/DownloadManager$NetworkState;Z)V
    .locals 2

    .line 503
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 505
    :cond_0
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:Lus/shandian/giga/service/DownloadManager$NetworkState;

    .line 506
    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_1

    goto :goto_3

    .line 508
    :cond_1
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_2

    goto :goto_3

    .line 512
    :cond_2
    iget-boolean p2, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    if-eqz p2, :cond_3

    sget-object p2, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 514
    :goto_0
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    .line 516
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 518
    :cond_5
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 519
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->pause()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 520
    :cond_6
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v1, :cond_4

    .line 521
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 522
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v0, :cond_4

    .line 525
    :cond_7
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public pauseAllMissions(Z)V
    .locals 3

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 413
    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 417
    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 418
    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, v1, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 421
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->pause()V

    goto :goto_0

    .line 423
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pauseMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 1

    .line 281
    iget-boolean v0, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1, v0}, Lus/shandian/giga/get/DownloadMission;->setEnqueued(Z)V

    .line 283
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->pause()V

    :cond_0
    return-void
.end method

.method public resumeMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 1

    .line 275
    iget-boolean v0, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_0
    return-void
.end method

.method runMissions()Z
    .locals 5

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 457
    :cond_0
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    .line 459
    :cond_1
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    .line 461
    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_2

    monitor-exit p0

    return v2

    .line 465
    :cond_3
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    .line 466
    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v4, :cond_4

    iget-boolean v4, v3, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 469
    :cond_5
    invoke-virtual {p0, v3}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    .line 470
    iget v3, v3, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    goto :goto_0

    .line 472
    :cond_6
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v1, :cond_7

    monitor-exit p0

    return v2

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    .line 476
    :cond_8
    monitor-exit p0

    return v1

    .line 477
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFinished(Lus/shandian/giga/get/DownloadMission;)V
    .locals 3

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    new-instance v1, Lus/shandian/giga/get/FinishedMission;

    invoke-direct {v1, p1}, Lus/shandian/giga/get/FinishedMission;-><init>(Lus/shandian/giga/get/DownloadMission;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->addFinishedMission(Lus/shandian/giga/get/DownloadMission;)V

    .line 446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startAllMissions()V
    .locals 3

    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 429
    iget-boolean v2, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 433
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 4

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 233
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 234
    iget v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v0, p1, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 238
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    iget-wide v2, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    .line 241
    :try_start_1
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 251
    :try_start_2
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 252
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {v1, p1}, Lus/shandian/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    .line 257
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    if-nez v1, :cond_1

    const/16 v0, 0x3e9

    .line 259
    iput v0, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 260
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DownloadMission.storage == NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 262
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 265
    :cond_1
    iget-boolean v1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v1

    if-ge v1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 267
    :cond_3
    :goto_2
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 270
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 242
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cant create download metadata file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    .line 244
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 248
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    goto :goto_0

    .line 270
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public tryRecover(Lus/shandian/giga/get/DownloadMission;)V
    .locals 3

    .line 320
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/shandian/giga/service/DownloadManager;->getMainStorage(Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v0

    .line 322
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->create()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->invalidate()V

    if-nez v0, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    iput-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    :cond_2
    :goto_0
    return-void
.end method

.method updateMaximumAttempts()V
    .locals 3

    .line 529
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    iget v2, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v2, v1, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 531
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
