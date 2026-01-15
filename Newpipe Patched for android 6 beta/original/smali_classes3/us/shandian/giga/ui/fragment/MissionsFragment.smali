.class public Lus/shandian/giga/ui/fragment/MissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MissionsFragment.java"


# instance fields
.field private mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field private mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mClear:Landroid/view/MenuItem;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mForceUpdate:Z

.field private mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mLinear:Z

.field private mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPause:Landroid/view/MenuItem;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStart:Landroid/view/MenuItem;

.field private mSwitch:Landroid/view/MenuItem;

.field private final requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public static synthetic $r8$lambda$8y0VmfU6UzQZoY7EEQ5Y4JQ6V_k(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->lambda$showClearDownloadHistoryPrompt$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tl1I6mukMyEZdQexntne3KiuLFI(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpea1PezH7pujAyVT8SzJt8Q4Gk(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->lambda$showClearDownloadHistoryPrompt$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAnuUIojNrpkp6L63rau_kmYPlY(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->lambda$showDeleteDownloadedFilesConfirmationPrompt$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/ui/adapter/MissionAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmpty(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAdapter(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/ui/adapter/MissionAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecoverMission(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdapterButtons(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateList(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    .line 57
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 58
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 70
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    .line 71
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    .line 72
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 73
    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$1;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private synthetic lambda$showClearDownloadHistoryPrompt$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 215
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    return-void
.end method

.method private synthetic lambda$showClearDownloadHistoryPrompt$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->showDeleteDownloadedFilesConfirmationPrompt()V

    return-void
.end method

.method private synthetic lambda$showDeleteDownloadedFilesConfirmationPrompt$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 228
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    return-void
.end method

.method private recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 4

    .line 264
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    .line 267
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 271
    :cond_0
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 276
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    :goto_1
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 281
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 282
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {v2, v3, p1, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MissionsFragment"

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {v1, p1, v0, v2}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private requestDownloadSaveAsResult(Landroidx/activity/result/ActivityResult;)V
    .locals 5

    .line 320
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-static {p1}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 334
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    new-instance v2, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v3, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v2, v1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 336
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 338
    :catch_0
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f1201e1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setAdapterButtons()V
    .locals 3

    .line 257
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setClearButton(Landroid/view/MenuItem;)V

    .line 260
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 3

    .line 233
    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 241
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    invoke-virtual {v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setLinear(Z)V

    .line 245
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 247
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 248
    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0800e0

    goto :goto_1

    :cond_1
    const v1, 0x7f08011e

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 251
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1201e7

    goto :goto_2

    :cond_2
    const v1, 0x7f12022d

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 252
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "linear"

    iget-boolean v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 157
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 145
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d00a0

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 105
    const-string p3, "linear"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 108
    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p2, 0x7f0a0209

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    const p2, 0x7f0a0252

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 116
    new-instance p3, Lus/shandian/giga/ui/fragment/MissionsFragment$2;

    invoke-direct {p3, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$2;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 128
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 130
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 164
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler$Callback;)V

    .line 167
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    .line 168
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 169
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onDestroy()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 172
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 191
    :sswitch_0
    iget-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 192
    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    return v1

    .line 198
    :sswitch_1
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManager;->startAllMissions()V

    return v1

    .line 201
    :sswitch_2
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    .line 202
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->refreshMissionItems()V

    .line 204
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 195
    :sswitch_3
    invoke-virtual {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->showClearDownloadHistoryPrompt()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b2 -> :sswitch_3
        0x7f0a02cc -> :sswitch_2
        0x7f0a038d -> :sswitch_1
        0x7f0a03b4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .line 308
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 310
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 311
    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 312
    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler$Callback;)V

    .line 313
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onPaused()V

    .line 316
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f0a03b4

    .line 177
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    const v0, 0x7f0a00b2

    .line 178
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    const v0, 0x7f0a038d

    .line 179
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    const v0, 0x7f0a02cc

    .line 180
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 182
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 290
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 292
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    .line 295
    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    if-eqz v0, :cond_0

    .line 296
    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 297
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->forceUpdate()V

    .line 300
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->addMissionEventListener(Landroid/os/Handler$Callback;)V

    .line 301
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 303
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_2
    return-void
.end method

.method public showClearDownloadHistoryPrompt()V
    .locals 3

    .line 210
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120098

    .line 211
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1200ab

    .line 212
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    .line 214
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    const v2, 0x7f1200e1

    .line 217
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public showDeleteDownloadedFilesConfirmationPrompt()V
    .locals 3

    .line 224
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200e2

    .line 225
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    const v2, 0x7f120332

    .line 227
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
