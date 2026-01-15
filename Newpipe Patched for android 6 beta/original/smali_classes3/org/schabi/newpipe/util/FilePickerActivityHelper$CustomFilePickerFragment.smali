.class public Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;
.super Lcom/nononsenseapps/filepicker/FilePickerFragment;
.source "FilePickerActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/FilePickerActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilePickerFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackTop()Ljava/io/File;
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_START_PATH"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isBackTop()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 137
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;->getBackTop()Ljava/io/File;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->compareFiles(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->compareFiles(Ljava/io/File;Ljava/io/File;)I

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

.method protected isItemVisible(Ljava/io/File;)Z
    .locals 1

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->isItemVisible(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getNewFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1201de

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mToast:Landroid/widget/Toast;

    .line 107
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onClickOk(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 88
    invoke-super {p0, p1, p2}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 90
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 91
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    check-cast p2, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroidx/recyclerview/widget/SortedList;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroidx/recyclerview/widget/SortedList;)V

    .line 144
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p2, Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroidx/recyclerview/widget/SortedList;)V

    return-void
.end method
