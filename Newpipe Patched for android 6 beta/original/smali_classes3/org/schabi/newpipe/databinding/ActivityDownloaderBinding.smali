.class public final Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;
.super Ljava/lang/Object;
.source "ActivityDownloaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final frame:Landroidx/fragment/app/FragmentContainerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->frame:Landroidx/fragment/app/FragmentContainerView;

    .line 32
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;
    .locals 3

    const v0, 0x7f0a01a3

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

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
    new-instance v2, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0, v1, v0}, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V

    return-object v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;
    .locals 2

    const v0, 0x7f0d001d

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityDownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
