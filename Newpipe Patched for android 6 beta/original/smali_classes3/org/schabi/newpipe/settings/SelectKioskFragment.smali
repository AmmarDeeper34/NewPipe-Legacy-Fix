.class public Lorg/schabi/newpipe/settings/SelectKioskFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectKioskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;,
        Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;
    }
.end annotation


# instance fields
.field private onSelectedListener:Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;

.field private selectKioskAdapter:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;


# direct methods
.method static bridge synthetic -$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectKioskFragment;Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment;->clickedItem(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

    .line 52
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;

    return-void
.end method

.method private clickedItem(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 90
    iget v1, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->serviceId:I

    iget-object v2, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskId:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;->onKioskSelected(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getMinWidthDialogTheme(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00f8

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01fb

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    :try_start_0
    new-instance p3, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectKioskFragment;)V

    iput-object p3, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 77
    const-string v0, "Selecting kiosk"

    invoke-static {p0, v0, p3}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    iget-object p3, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectKioskFragment$OnSelectedListener;

    return-void
.end method
