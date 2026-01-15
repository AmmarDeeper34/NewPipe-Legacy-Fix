.class public final Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;
.super Ljava/lang/Object;
.source "DownloadLoadingDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loader:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;->loader:Landroid/widget/ProgressBar;

    .line 32
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;
    .locals 3

    const v0, 0x7f0a020c

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    const v0, 0x7f0a03f3

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    move-result-object v0

    .line 75
    new-instance v2, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0, v1, v0}, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V

    return-object v2

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DownloadLoadingDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
