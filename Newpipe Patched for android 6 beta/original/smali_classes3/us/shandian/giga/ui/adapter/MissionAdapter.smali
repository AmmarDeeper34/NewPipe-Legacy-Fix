.class public Lus/shandian/giga/ui/adapter/MissionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MissionAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;,
        Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;,
        Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;
    }
.end annotation


# instance fields
.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private mClear:Landroid/view/MenuItem;

.field private final mContext:Landroid/content/Context;

.field private final mDeleter:Lus/shandian/giga/ui/common/Deleter;

.field private final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field private final mEmptyMessage:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHidden:Ljava/util/ArrayList;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field private mLayout:I

.field private mPauseButton:Landroid/view/MenuItem;

.field private final mPendingDownloadsItems:Ljava/util/ArrayList;

.field private mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

.field private mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private mStartButton:Landroid/view/MenuItem;

.field private final mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$2Z5DSiAAai0OdIgtkaQAg9TbzJY(Lus/shandian/giga/ui/adapter/MissionAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updater()V

    return-void
.end method

.method public static synthetic $r8$lambda$6HXtBtEaXX9VvSBgEB3n9cYDdl0(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$showError$0(Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJsq2BfGv6Ukc6mqh6EKE-8cH-M(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$clearFinishedDownloads$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$emuUWZdZhoZXSjh77UP1B3iJ2GA(Lorg/schabi/newpipe/streams/io/StoredFileHelper;I)Ljava/lang/String;
    .locals 0

    .line 709
    invoke-static {p0, p1}, Lus/shandian/giga/util/Utility;->checksum(Lorg/schabi/newpipe/streams/io/StoredFileHelper;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iU5x_8bBpwysJs3NHtsZXVdpBG0(Lus/shandian/giga/ui/adapter/MissionAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->deleteFinishedDownloads()V

    return-void
.end method

.method public static synthetic $r8$lambda$ljbNd0GbiYNOZHiE90brOEcvMec(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 552
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$sQjvxvcuTfQvugYbIj7yLrv4NHg(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->lambda$handlePopupItem$4(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lus/shandian/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->handlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mviewWithFileProvider(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/Mission;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->viewWithFileProvider(Lus/shandian/giga/get/Mission;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/shandian/giga/service/DownloadManager;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 123
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 124
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d009e

    .line 128
    iput v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    .line 130
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    .line 134
    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManager;->getIterator()Lus/shandian/giga/service/DownloadManager$MissionIterator;

    move-result-object v6

    iput-object v6, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 136
    new-instance v1, Lus/shandian/giga/ui/common/Deleter;

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p4

    invoke-direct/range {v1 .. v7}, Lus/shandian/giga/ui/common/Deleter;-><init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V

    iput-object v1, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 138
    iput-object v2, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 142
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    .line 143
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    return-void
.end method

.method private checkEmptyMessageVisibility()V
    .locals 2

    .line 775
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getOldListSize()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 776
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkInvalidFile(Lus/shandian/giga/get/Mission;)Z
    .locals 2

    .line 420
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 422
    :cond_0
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f120294

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private deleteFinishedDownloads()V
    .locals 5

    .line 615
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 617
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 618
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    if-eqz v1, :cond_1

    .line 621
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    .line 622
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v1, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 624
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;
    .locals 3

    .line 427
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 428
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .locals 6

    .line 629
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 631
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    .line 632
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sparse-switch p2, :sswitch_data_0

    goto :goto_2

    .line 637
    :sswitch_0
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string p2, "--.-%"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    .line 653
    :sswitch_1
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 654
    invoke-virtual {v2, v1}, Lus/shandian/giga/get/DownloadMission;->psContinue(Z)V

    goto :goto_1

    .line 656
    :cond_2
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    .line 657
    iget-object p1, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 658
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

    invoke-interface {p1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    goto :goto_1

    .line 660
    :cond_3
    invoke-virtual {p0, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V

    :goto_1
    return v1

    .line 647
    :sswitch_2
    iget-object p2, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 648
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 649
    invoke-virtual {v2, p2}, Lus/shandian/giga/get/DownloadMission;->setEnqueued(Z)V

    .line 650
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return v1

    .line 641
    :sswitch_3
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->pauseMission(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    .line 644
    :sswitch_4
    invoke-direct {p0, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;)V

    return v1

    .line 664
    :sswitch_5
    invoke-virtual {v2, v3}, Lus/shandian/giga/get/DownloadMission;->psContinue(Z)V

    return v3

    :cond_4
    :goto_2
    sparse-switch p2, :sswitch_data_1

    return v3

    .line 722
    :sswitch_6
    :try_start_0
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    iget-object p2, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->getIntentByLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x1000000

    .line 723
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 726
    const-string p2, "MissionAdapter"

    const-string v0, "Selected item has a invalid source"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v1

    .line 671
    :sswitch_7
    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->shareFile(Lus/shandian/giga/get/Mission;)V

    return v1

    .line 687
    :sswitch_8
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 688
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v2

    if-nez v2, :cond_5

    .line 689
    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f120294

    invoke-static {p2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 690
    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    invoke-virtual {p2, p1, v1}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 691
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return v1

    .line 694
    :cond_5
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    .line 695
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 696
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1201ea

    .line 698
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v4, 0x7f08012d

    .line 700
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f12029b

    .line 701
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1202a4

    .line 702
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 703
    invoke-virtual {v2, v3, v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 704
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x1e38e

    .line 707
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 706
    invoke-virtual {p1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 708
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v3, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/streams/io/StoredFileHelper;I)V

    .line 709
    invoke-static {v3}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 710
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 711
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda4;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/app/NotificationManager;)V

    .line 712
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 708
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return v1

    .line 681
    :sswitch_9
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {p1, v0, v3}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 682
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 683
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    return v1

    .line 675
    :sswitch_a
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {p1, v0, v1}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 676
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 677
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0096 -> :sswitch_5
        0x7f0a0150 -> :sswitch_4
        0x7f0a02cb -> :sswitch_3
        0x7f0a031a -> :sswitch_2
        0x7f0a032b -> :sswitch_1
        0x7f0a0389 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f0a00e0 -> :sswitch_a
        0x7f0a00e2 -> :sswitch_9
        0x7f0a0230 -> :sswitch_8
        0x7f0a0243 -> :sswitch_7
        0x7f0a0363 -> :sswitch_8
        0x7f0a0379 -> :sswitch_6
    .end sparse-switch
.end method

.method private isNotFinite(D)Z
    .locals 1

    .line 840
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$clearFinishedDownloads$2(Landroid/view/View;)V
    .locals 2

    .line 596
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 597
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    .line 599
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 602
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    const-string v0, "deleteFinishedDownloads"

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handlePopupItem$4(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 1

    .line 713
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x1e38e

    .line 714
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private synthetic lambda$showError$0(Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 548
    sget-object p3, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, p1, p3, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    return-void
.end method

.method private static resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;
    .locals 3

    .line 405
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 411
    :cond_0
    iget-object p0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 412
    const-string v0, "*/*"

    if-nez p0, :cond_1

    return-object v0

    .line 414
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method private resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;
    .locals 2

    .line 391
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 395
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 392
    const-string p1, "org.schabi.newpipe.provider"

    invoke-static {v0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private static setButtonVisible(Landroid/view/MenuItem;Z)V
    .locals 1

    .line 787
    invoke-interface {p0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 788
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private shareFile(Lus/shandian/giga/get/Mission;)V
    .locals 3

    .line 365
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lus/shandian/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "android.intent.extra.STREAM"

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 372
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_1

    .line 376
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f120408

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showError(Lus/shandian/giga/get/DownloadMission;)V
    .locals 6

    .line 468
    iget v0, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0xcc

    const/16 v2, 0x258

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x194

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_3

    const v1, 0x7f1201e1

    packed-switch v0, :pswitch_data_0

    if-lt v0, v3, :cond_0

    if-ge v0, v2, :cond_0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 529
    const-string v4, "(not_decelerated_error_code)"

    goto :goto_0

    .line 531
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, p1, v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    return-void

    :pswitch_0
    const v1, 0x7f120149

    goto :goto_0

    :pswitch_1
    const v1, 0x7f120162

    goto :goto_0

    :pswitch_2
    const v1, 0x7f120155

    goto :goto_0

    :pswitch_3
    const v1, 0x7f120150

    goto :goto_0

    :pswitch_4
    const v1, 0x7f120154

    goto :goto_0

    .line 503
    :pswitch_5
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

    const v1, 0x7f120153

    invoke-direct {p0, p1, v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    return-void

    :pswitch_6
    const v1, 0x7f120147

    goto :goto_0

    :pswitch_7
    const v1, 0x7f120164

    goto :goto_0

    :pswitch_8
    const v1, 0x7f120161

    goto :goto_0

    :pswitch_9
    const v1, 0x7f120358

    goto :goto_0

    .line 509
    :pswitch_a
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 510
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, p1, v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    return-void

    :cond_2
    const v1, 0x7f12029d

    goto :goto_0

    :pswitch_b
    const v1, 0x7f12014a

    goto :goto_0

    :pswitch_c
    const v1, 0x7f120152

    goto :goto_0

    :cond_3
    const v1, 0x7f12014d

    goto :goto_0

    :cond_4
    const v1, 0x7f12014c

    goto :goto_0

    :cond_5
    const v1, 0x7f12014b

    .line 537
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_6

    .line 540
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 542
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 545
    :goto_1
    iget-object v4, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v4, :cond_8

    iget v4, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-lt v4, v3, :cond_7

    if-lt v4, v2, :cond_8

    .line 547
    :cond_7
    new-instance v2, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;I)V

    const v1, 0x7f12015e

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 552
    :cond_8
    new-instance v1, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda6;-><init>()V

    const v2, 0x7f120332

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 553
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V
    .locals 8

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 559
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v1, :cond_0

    .line 563
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const/16 v5, 0x20

    .line 564
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :try_start_0
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v6, v1

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 577
    :goto_2
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    iget-object p1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 578
    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->throwableToStringList(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 577
    invoke-static {v1, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_14

    .line 241
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v3, v2, Lus/shandian/giga/get/FinishedMission;

    if-eqz v3, :cond_0

    goto/16 :goto_a

    .line 243
    :cond_0
    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    .line 244
    iget-wide v3, v2, Lus/shandian/giga/get/DownloadMission;->done:J

    long-to-double v3, v3

    .line 245
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v5

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 247
    iget v9, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 252
    :goto_0
    iget-object v10, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isRecovering()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez v9, :cond_2

    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-boolean v13, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v10, v13}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 255
    iget-boolean v10, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_4

    .line 257
    iget-object v10, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v10, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v23, v15

    move-wide v15, v13

    move-wide/from16 v13, v23

    goto :goto_3

    :cond_4
    move-wide v15, v13

    long-to-double v13, v5

    div-double v13, v3, v13

    :goto_3
    if-eqz v9, :cond_6

    .line 263
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-direct {v0, v13, v14}, Lus/shandian/giga/ui/adapter/MissionAdapter;->isNotFinite(D)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :cond_5
    invoke-virtual {v9, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    .line 264
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const v10, 0x7f12029d

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 265
    :cond_6
    invoke-direct {v0, v13, v14}, Lus/shandian/giga/ui/adapter/MissionAdapter;->isNotFinite(D)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 266
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v10, "--.-%"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 268
    :cond_7
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v17, v17, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v12

    const-string v10, "%.2f%%"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v9, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v9, v13, v14}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    .line 273
    :goto_4
    invoke-static {v5, v6}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 275
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v11

    if-nez v11, :cond_13

    iget v11, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v13, 0x3f1

    if-ne v11, v13, :cond_8

    goto/16 :goto_9

    .line 278
    :cond_8
    iget-boolean v11, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v11, :cond_a

    .line 279
    iget-boolean v11, v2, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    if-eqz v11, :cond_9

    const v11, 0x7f1203a2

    goto :goto_5

    :cond_9
    const v11, 0x7f12034a

    goto :goto_5

    .line 280
    :cond_a
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v11

    if-eqz v11, :cond_b

    const v11, 0x7f120384

    goto :goto_5

    .line 282
    :cond_b
    invoke-virtual {v2}, Lus/shandian/giga/get/DownloadMission;->isRecovering()Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f1203ad

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_d

    .line 290
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    const-string v3, "("

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->-$$Nest$mresetSpeedMeasure(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return-void

    .line 295
    :cond_d
    iget-wide v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const-wide/16 v17, 0x0

    cmp-long v11, v13, v17

    if-gez v11, :cond_e

    .line 296
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iput-wide v7, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 298
    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    return-void

    :cond_e
    sub-long v13, v7, v13

    move-wide/from16 v19, v13

    .line 303
    iget-wide v12, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    sub-double v21, v3, v12

    cmpl-double v14, v12, v3

    if-lez v14, :cond_f

    .line 306
    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 307
    iget-object v1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_f
    cmpl-double v12, v21, v15

    if-lez v12, :cond_14

    cmp-long v12, v19, v17

    if-lez v12, :cond_14

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v21, v21, v12

    move-wide/from16 v12, v19

    long-to-double v12, v12

    div-double v12, v21, v12

    double-to-float v12, v12

    .line 315
    iget v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    if-gez v13, :cond_10

    .line 316
    iget-object v13, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    invoke-static {v13, v12}, Ljava/util/Arrays;->fill([FF)V

    const/4 v11, 0x0

    .line 317
    iput v11, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    move v14, v12

    goto :goto_7

    :cond_10
    move v14, v12

    const/4 v13, 0x0

    .line 319
    :goto_6
    iget-object v15, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    array-length v11, v15

    if-ge v13, v11, :cond_11

    .line 320
    aget v11, v15, v13

    add-float/2addr v14, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 322
    :cond_11
    array-length v11, v15

    int-to-float v11, v11

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v11, v13

    div-float/2addr v14, v11

    :goto_7
    float-to-double v13, v14

    .line 325
    invoke-static {v13, v14}, Lus/shandian/giga/util/Utility;->formatSpeed(D)Ljava/lang/String;

    move-result-object v11

    .line 328
    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v2, :cond_12

    .line 329
    const-string v2, ""

    goto :goto_8

    :cond_12
    long-to-double v5, v5

    sub-double/2addr v5, v3

    div-double/2addr v5, v13

    .line 331
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v13, v3

    invoke-static {v13, v14}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lus/shandian/giga/util/Utility;->stringifySeconds(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_8
    iget-object v5, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iput-wide v7, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 338
    iput-wide v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 339
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    iget v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    aput v12, v2, v3

    .line 341
    array-length v2, v2

    if-lt v4, v2, :cond_14

    const/4 v11, 0x0

    iput v11, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    return-void

    .line 276
    :cond_13
    :goto_9
    iget-object v1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_a
    return-void
.end method

.method private updater()V
    .locals 5

    .line 829
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 831
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    invoke-direct {p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    const-string v2, "updater"

    const-wide/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private viewWithFileProvider(Lus/shandian/giga/get/Mission;)V
    .locals 3

    .line 346
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lus/shandian/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 355
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 356
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 358
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10000001

    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openIntentInApp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public applyChanges()V
    .locals 2

    .line 735
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->start()V

    .line 736
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 737
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->end()V

    .line 739
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    .line 740
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public checkMasterButtonsVisibility()V
    .locals 5

    .line 780
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasValidPendingMissions()[Z

    move-result-object v0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMasterButtonsVisibility() running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " paused="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-boolean v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MissionAdapter"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    aget-boolean v2, v0, v2

    invoke-static {v1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setButtonVisible(Landroid/view/MenuItem;Z)V

    .line 783
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    aget-boolean v0, v0, v3

    invoke-static {v1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setButtonVisible(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method public clearFinishedDownloads(Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 583
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 584
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getOldListSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 585
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object v0

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v0, Lus/shandian/giga/get/FinishedMission;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 587
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hide(Lus/shandian/giga/get/Mission;)V

    .line 588
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 593
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/Localization;->deletedDownloadCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 594
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 595
    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    const v1, 0x7f12049d

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 604
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 605
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 607
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    const-string v1, "deleteFinishedDownloads"

    const-wide/16 v2, 0x1388

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 609
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManager;->forgetFinishedDownloads()V

    .line 610
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    :cond_4
    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 744
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->start()V

    .line 745
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->end()V

    .line 747
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 748
    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->-$$Nest$mresetSpeedMeasure(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 231
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getOldListSize()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 236
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialAtItem(I)I

    move-result p1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 435
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 439
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 449
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 452
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    .line 460
    invoke-direct {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return v4

    .line 456
    :cond_3
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return v4
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 180
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;

    move-result-object p2

    .line 182
    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_3

    .line 183
    iget p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->special:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p2, 0x7f120296

    goto :goto_0

    .line 189
    :cond_1
    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const p2, 0x7f120295

    .line 192
    :goto_0
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 196
    :cond_3
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 197
    iput-object p2, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    .line 199
    iget-object v0, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-char v1, v0, Lus/shandian/giga/get/Mission;->kind:C

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lus/shandian/giga/util/Utility;->getFileType(CLjava/lang/String;)Lus/shandian/giga/util/Utility$FileType;

    move-result-object v0

    .line 201
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getIconForFileType(Lus/shandian/giga/util/Utility$FileType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    iget-object v2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lus/shandian/giga/util/Utility;->getBackgroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I

    move-result v2

    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lus/shandian/giga/util/Utility;->getForegroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/ui/common/ProgressDrawable;->setColors(II)V

    .line 206
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_6

    .line 207
    iget-object p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast p2, Lus/shandian/giga/get/DownloadMission;

    .line 208
    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-boolean v1, p2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --.- kB/s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_4
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    iget-boolean p2, p2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-eqz p2, :cond_5

    const p2, 0x7f120460

    goto :goto_1

    :cond_5
    const p2, 0x7f120346

    :goto_1
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 213
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 214
    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 218
    :cond_6
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 219
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/ui/common/ProgressDrawable;->setProgress(D)V

    .line 221
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    iget-object v1, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-wide v1, v1, Lus/shandian/giga/get/Mission;->length:J

    invoke-static {v1, v2}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/util/Date;

    iget-object p2, p2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-wide v2, p2, Lus/shandian/giga/get/Mission;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 225
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 155
    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V

    return-object p2

    .line 152
    :cond_0
    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00a1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 800
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 801
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->dispose()V

    return-void
.end method

.method public onPaused()V
    .locals 2

    .line 810
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 811
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    const-string v1, "updater"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 805
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->resume()V

    .line 806
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    const-string v2, "updater"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 162
    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 165
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 172
    :cond_1
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    .line 174
    invoke-static {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->-$$Nest$mresetSpeedMeasure(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return-void
.end method

.method public recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 6

    .line 815
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->getViewHolder(Ljava/lang/Object;)Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 818
    iput-object v1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 819
    invoke-virtual {p1, v3, v1, v2}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    .line 821
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v2, "--.-%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v0, v3}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 825
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager;->resumeMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void
.end method

.method public refreshMissionItems()V
    .locals 3

    .line 792
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 793
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    check-cast v2, Lus/shandian/giga/get/DownloadMission;

    iget-boolean v2, v2, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    invoke-direct {p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 795
    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->-$$Nest$mresetSpeedMeasure(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClearButton(Landroid/view/MenuItem;)V
    .locals 1

    .line 759
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    :cond_0
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    return-void
.end method

.method public setLinear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0d009f

    goto :goto_0

    :cond_0
    const p1, 0x7f0d009e

    .line 755
    :goto_0
    iput p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    return-void
.end method

.method public setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 768
    :goto_1
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 769
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 771
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_2
    return-void
.end method

.method public setRecover(Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;

    return-void
.end method
