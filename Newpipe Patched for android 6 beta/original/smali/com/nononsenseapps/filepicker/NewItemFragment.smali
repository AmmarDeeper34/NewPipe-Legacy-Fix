.class public abstract Lcom/nononsenseapps/filepicker/NewItemFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NewItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment;->listener:Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nononsenseapps/filepicker/NewItemFragment;)Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment;->listener:Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 37
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    sget v0, Lcom/nononsenseapps/filepicker/R$layout;->nnf_dialog_folder_name:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/R$string;->nnf_new_folder:I

    .line 39
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/R$string;->nnf_new_folder_cancel:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/R$string;->nnf_new_folder_ok:I

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/nononsenseapps/filepicker/NewItemFragment$1;

    invoke-direct {v0, p0}, Lcom/nononsenseapps/filepicker/NewItemFragment$1;-><init>(Lcom/nononsenseapps/filepicker/NewItemFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public setListener(Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/NewItemFragment;->listener:Lcom/nononsenseapps/filepicker/NewItemFragment$OnNewFolderListener;

    return-void
.end method

.method protected abstract validateName(Ljava/lang/String;)Z
.end method
