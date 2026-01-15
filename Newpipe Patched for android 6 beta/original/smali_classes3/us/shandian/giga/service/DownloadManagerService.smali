.class public Lus/shandian/giga/service/DownloadManagerService;
.super Landroid/app/Service;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
    }
.end annotation


# instance fields
.field private downloadDoneCount:I

.field private downloadDoneList:Ljava/lang/StringBuilder;

.field private downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

.field private downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

.field private downloadFailedNotificationID:I

.field private icDownloadDone:Landroid/graphics/Bitmap;

.field private icDownloadFailed:Landroid/graphics/Bitmap;

.field private icLauncher:Landroid/graphics/Bitmap;

.field private mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDownloadNotificationEnable:Z

.field private final mEchoObservers:Ljava/util/List;

.field private final mFailedDownloads:Landroidx/collection/SparseArrayCompat;

.field private mForeground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLock:Lorg/schabi/newpipe/player/helper/LockManager;

.field private mLockAcquired:Z

.field private mManager:Lus/shandian/giga/service/DownloadManager;

.field private mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpenDownloadList:Landroid/app/PendingIntent;

.field private final mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$FjTAV5EihEO85Zyy0xFxDrZa33A(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xhi0AfYJVdU-4EPCDsbTuPbHSr8(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->lambda$onStartCommand$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCDNdxiTSnv5hOdyl_hlq3IjkDw(Lus/shandian/giga/service/DownloadManagerService;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadDoneList(Lus/shandian/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadDoneNotification(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadFailedNotification(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedDownloads(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/collection/SparseArrayCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefs(Lus/shandian/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdownloadDoneCount(Lus/shandian/giga/service/DownloadManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDownloadNotificationEnable(Lus/shandian/giga/service/DownloadManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    .line 94
    iput-boolean v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 96
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 97
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    .line 103
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 105
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    new-instance v2, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 108
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    .line 109
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lorg/schabi/newpipe/player/helper/LockManager;

    const/16 v0, 0x3ea

    .line 111
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 112
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private handleConnectivityState(Z)V
    .locals 7

    .line 292
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 295
    const-string v1, "DownloadManagerService"

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    .line 297
    const-string v2, "Active network [connectivity is unavailable]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 300
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    .line 303
    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    goto :goto_0

    :cond_1
    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->Operating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    goto :goto_0

    .line 305
    :cond_2
    sget-object v4, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    .line 307
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active network [connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " metered="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 310
    :goto_1
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    if-nez v1, :cond_3

    return-void

    .line 311
    :cond_3
    invoke-virtual {v1, v0, p1}, Lus/shandian/giga/service/DownloadManager;->handleConnectivityState(Lus/shandian/giga/service/DownloadManager$NetworkState;Z)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 257
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 259
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    .line 261
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    if-eq v2, v1, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->notifyFailedDownload(Lus/shandian/giga/get/DownloadMission;)V

    .line 274
    invoke-direct {p0, v4}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 275
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v2, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->notifyMediaScanner(Landroid/net/Uri;)V

    .line 264
    iget-object v2, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->notifyFinishedDownload(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->setFinished(Lus/shandian/giga/get/DownloadMission;)V

    .line 266
    invoke-direct {p0, v4}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 267
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->runMissions()Z

    move-result v2

    invoke-virtual {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {p0, v4}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 270
    :cond_5
    invoke-virtual {p0, v1}, Lus/shandian/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 282
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_6

    .line 283
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 285
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler$Callback;

    .line 286
    invoke-interface {v2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_7
    return v1
.end method

.method private handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f120116

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f120117

    .line 317
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p2, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    iput v1, p1, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 322
    :goto_1
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManager;->updateMaximumAttempts()V

    return-void

    :cond_1
    const v0, 0x7f120115

    .line 323
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    return-void

    :cond_2
    const v0, 0x7f120118

    .line 325
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    return-void

    :cond_3
    const p1, 0x7f120111

    .line 327
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 328
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainVideoStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object p2

    iput-object p2, p1, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-void

    :cond_4
    const p1, 0x7f12010b

    .line 329
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 330
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainAudioStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object p2

    iput-object p2, p1, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    :cond_5
    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/content/Intent;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->startMission(Landroid/content/Intent;)V

    return-void
.end method

.method private loadMainAudioStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 2

    const v0, 0x7f12010b

    .line 509
    const-string v1, "audio"

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 5

    .line 513
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const-string v4, "DownloadManagerService"

    if-ne v1, v3, :cond_1

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old save path style present: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v0, v1

    .line 524
    :cond_1
    :try_start_0
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, p0, v1, p2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the storage of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f1202fe

    const/4 p2, 0x1

    .line 527
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-object v2
.end method

.method private loadMainVideoStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 2

    const v0, 0x7f120111

    .line 505
    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroidx/core/app/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private manageLock(Z)V
    .locals 1

    .line 494
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lorg/schabi/newpipe/player/helper/LockManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/LockManager;->acquireWifiAndCpu()V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lorg/schabi/newpipe/player/helper/LockManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/LockManager;->releaseWifiAndCpu()V

    .line 501
    :goto_0
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    return-void
.end method

.method private notifyMediaScanner(Landroid/net/Uri;)V
    .locals 2

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startMission(Landroid/content/Context;[Ljava/lang/String;Lorg/schabi/newpipe/streams/io/StoredFileHelper;CILorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;[Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 2

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.RUN"

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.urls"

    .line 368
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DownloadManagerService.extra.kind"

    .line 369
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.threads"

    .line 370
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.postprocessingName"

    .line 371
    invoke-virtual {p1, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.postprocessingArgs"

    .line 372
    invoke-virtual {p1, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.nearLength"

    .line 373
    invoke-virtual {p1, p3, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.recoveryInfo"

    .line 374
    invoke-virtual {p1, p3, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.storageParentPath"

    .line 375
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getParentUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.storagePath"

    .line 376
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.storageTag"

    .line 377
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "DownloadManagerService.extra.streamInfo"

    .line 378
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    .line 380
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startMission(Landroid/content/Intent;)V
    .locals 14

    .line 384
    const-string v0, "DownloadManagerService.extra.urls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "DownloadManagerService.extra.storagePath"

    const-class v2, Landroid/net/Uri;

    invoke-static {p1, v1, v2}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 386
    const-string v3, "DownloadManagerService.extra.storageParentPath"

    invoke-static {p1, v3, v2}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 387
    const-string v3, "DownloadManagerService.extra.threads"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 388
    const-string v5, "DownloadManagerService.extra.kind"

    const/16 v6, 0x3f

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v5

    .line 389
    const-string v6, "DownloadManagerService.extra.postprocessingName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    const-string v7, "DownloadManagerService.extra.postprocessingArgs"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 391
    const-string v8, "DownloadManagerService.extra.nearLength"

    const-wide/16 v9, 0x0

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 392
    const-string v10, "DownloadManagerService.extra.storageTag"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 393
    const-string v11, "DownloadManagerService.extra.streamInfo"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 394
    const-string v12, "DownloadManagerService.extra.recoveryInfo"

    const-class v13, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-static {p1, v12, v13}, Landroidx/core/content/IntentCompat;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 396
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :try_start_0
    new-instance v12, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-direct {v12, p0, v2, v1, v10}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 409
    :cond_0
    invoke-static {v6, v7, v11}, Lus/shandian/giga/postprocessing/Postprocessing;->getAlgorithm(Ljava/lang/String;[Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lus/shandian/giga/postprocessing/Postprocessing;

    move-result-object v1

    .line 411
    :goto_0
    new-instance v2, Lus/shandian/giga/get/DownloadMission;

    invoke-direct {v2, v0, v12, v5, v1}, Lus/shandian/giga/get/DownloadMission;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/streams/io/StoredFileHelper;CLus/shandian/giga/postprocessing/Postprocessing;)V

    .line 412
    iput v3, v2, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    .line 413
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 414
    iput-wide v8, v2, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    const/4 v0, 0x0

    .line 415
    new-array v0, v0, [Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lus/shandian/giga/get/MissionRecoveryInfo;

    iput-object p1, v2, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v1, :cond_1

    .line 418
    invoke-static {p0}, Lus/shandian/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lus/shandian/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 420
    :cond_1
    invoke-direct {p0, v4}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 422
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->startMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void

    :catch_0
    move-exception p1

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public notifyFailedDownload(Lus/shandian/giga/get/DownloadMission;)V
    .locals 4

    .line 465
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 468
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 470
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v1, :cond_1

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108008a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 472
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f120320

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 473
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 474
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 476
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 479
    :cond_1
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f120107

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 480
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 481
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 482
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 481
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 484
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyFinishedDownload(Ljava/lang/String;)V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 430
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080082

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 434
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f120320

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 436
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "org.schabi.newpipe.reset_download_finished"

    .line 438
    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "org.schabi.newpipe.open_downloads_finished"

    .line 439
    invoke-direct {p0, v2}, Lus/shandian/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 442
    :cond_1
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    if-ne v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 447
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 448
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 449
    invoke-static {p0, v2}, Lorg/schabi/newpipe/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    .line 450
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 448
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 457
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/Localization;->downloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 458
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 461
    :goto_0
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 253
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 139
    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-direct {v0, p0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 140
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 144
    new-instance v0, Lus/shandian/giga/service/DownloadManager;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainVideoStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v2

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainAudioStorage()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lus/shandian/giga/service/DownloadManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 149
    invoke-static {p0, v1, v0, v2, v1}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 155
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120320

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 156
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x1080081

    .line 157
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f1202a1

    .line 159
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f1202a2

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    .line 164
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 166
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 169
    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$1;

    invoke-direct {v0, p0}, Lus/shandian/giga/service/DownloadManagerService$1;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 180
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 182
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f120115

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f120116

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f120118

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lorg/schabi/newpipe/player/helper/LockManager;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/LockManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lorg/schabi/newpipe/player/helper/LockManager;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 224
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 230
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 232
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 234
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, v1}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 239
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 241
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 243
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    :cond_1
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    :cond_2
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_3
    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 248
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 199
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got intent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DownloadManagerService"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 202
    const-string v0, "android.intent.action.RUN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lus/shandian/giga/service/DownloadManagerService$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/service/DownloadManagerService;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_5

    .line 205
    const-string p1, "org.schabi.newpipe.reset_download_finished"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "org.schabi.newpipe.open_downloads_finished"

    if-nez p1, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 207
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 210
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.MAIN"

    .line 211
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x10000000

    .line 212
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return p2

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateForegroundState(Z)V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    .line 338
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 340
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 343
    :goto_0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 345
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    return-void
.end method
