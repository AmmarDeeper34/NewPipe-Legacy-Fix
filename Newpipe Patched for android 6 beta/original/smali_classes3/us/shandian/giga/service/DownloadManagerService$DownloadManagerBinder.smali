.class public Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
.super Landroid/os/Binder;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/service/DownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadManagerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lus/shandian/giga/service/DownloadManagerService;


# direct methods
.method public constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addMissionEventListener(Landroid/os/Handler$Callback;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public askForSavePath()Z
    .locals 3

    .line 553
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmPrefs(Lus/shandian/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const v2, 0x7f120119

    .line 554
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 553
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearDownloadNotifications()V
    .locals 3

    .line 568
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadDoneNotification(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x3e9

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 571
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadDoneList(Lus/shandian/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 572
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0, v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadDoneCount(Lus/shandian/giga/service/DownloadManagerService;I)V

    .line 574
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotification(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 575
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 576
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmNotificationManager(Lus/shandian/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 575
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V

    goto :goto_0

    .line 578
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmFailedDownloads(Lus/shandian/giga/service/DownloadManagerService;)Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 579
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputdownloadFailedNotificationID(Lus/shandian/giga/service/DownloadManagerService;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public enableNotifications(Z)V
    .locals 1

    .line 584
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0, p1}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fputmDownloadNotificationEnable(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method

.method public getDownloadManager()Lus/shandian/giga/service/DownloadManager;
    .locals 1

    .line 539
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getMainStorageAudio()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 1

    .line 549
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public getMainStorageVideo()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 1

    .line 544
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmManager(Lus/shandian/giga/service/DownloadManagerService;)Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public removeMissionEventListener(Landroid/os/Handler$Callback;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-static {v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$fgetmEchoObservers(Lus/shandian/giga/service/DownloadManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
