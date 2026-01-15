.class public Lorg/schabi/newpipe/fragments/BlankFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "BlankFragment.java"


# instance fields
.field errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 36
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    const-string p3, "NewPipe"

    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    const p3, 0x7f0d0052

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    if-eqz p2, :cond_0

    .line 46
    new-instance p2, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lorg/schabi/newpipe/error/ErrorPanelHelper;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 47
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    const p2, 0x7f0a0086

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->dispose()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 66
    const-string v0, "NewPipe"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
