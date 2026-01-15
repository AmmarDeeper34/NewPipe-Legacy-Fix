.class public final Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;
.super Ljava/lang/Object;
.source "SettingsLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final settingsFragmentHolder:Landroidx/fragment/app/FragmentContainerView;

.field public final settingsToolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->settingsFragmentHolder:Landroidx/fragment/app/FragmentContainerView;

    .line 33
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->settingsToolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;
    .locals 3

    const v0, 0x7f0a0361

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0362

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    move-result-object v0

    .line 76
    new-instance v2, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0, v1, v0}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V

    return-object v2

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;
    .locals 2

    const v0, 0x7f0d00fd

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
