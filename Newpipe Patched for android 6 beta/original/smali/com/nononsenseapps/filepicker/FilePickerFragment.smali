.class public Lcom/nononsenseapps/filepicker/FilePickerFragment;
.super Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequestedPath:Ljava/io/File;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field protected showHiddenItems:Z


# direct methods
.method public static synthetic $r8$lambda$gs15dDQAbearhd6tc8CyMjiDm-A(Lcom/nononsenseapps/filepicker/FilePickerFragment;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->mRequestedPath:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->refresh(Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/nononsenseapps/filepicker/R$string;->nnf_permission_external_write_denied:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mListener:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$OnFilePickedListener;

    if-eqz p0, :cond_1

    .line 98
    invoke-interface {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$OnFilePickedListener;->onCancelled()V

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->showHiddenItems:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->mRequestedPath:Ljava/io/File;

    .line 86
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/nononsenseapps/filepicker/FilePickerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment;)V

    .line 87
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method protected compareFiles(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 335
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFullPath(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFullPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getFullPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoader()Landroidx/loader/content/Loader;
    .locals 2

    .line 199
    new-instance v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public getName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParent(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getParent(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Ljava/io/File;
    .locals 2

    .line 174
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getRoot()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected handlePermission(Ljava/io/File;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->mRequestedPath:Ljava/io/File;

    .line 79
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic handlePermission(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->handlePermission(Ljava/io/File;)V

    return-void
.end method

.method protected hasPermission(Ljava/io/File;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic hasPermission(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->hasPermission(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public isDir(Ljava/io/File;)Z
    .locals 0

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDir(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->isDir(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method protected isItemVisible(Ljava/io/File;)Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment;->showHiddenItems:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 317
    :cond_0
    invoke-super {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isItemVisible(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onNewFolder(Ljava/lang/String;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->refresh(Ljava/lang/Object;)V

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/nononsenseapps/filepicker/R$string;->nnf_create_folder_error:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->toUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
