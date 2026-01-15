.class public final Lorg/schabi/newpipe/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final drawerLayout:Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;

.field public final fragmentHolder:Landroidx/fragment/app/FragmentContainerView;

.field public final fragmentPlayerHolder:Landroidx/fragment/app/FragmentContainerView;

.field private final rootView:Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

.field public final toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->rootView:Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->drawerLayout:Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;

    .line 40
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->fragmentHolder:Landroidx/fragment/app/FragmentContainerView;

    .line 41
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->fragmentPlayerHolder:Landroidx/fragment/app/FragmentContainerView;

    .line 42
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityMainBinding;
    .locals 8

    const v0, 0x7f0a012d

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a01a1

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01a2

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a03f3

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    move-result-object v7

    .line 98
    new-instance v2, Lorg/schabi/newpipe/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/databinding/ActivityMainBinding;-><init>(Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V

    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityMainBinding;
    .locals 2

    const v0, 0x7f0d001f

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->getRoot()Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->rootView:Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    return-object v0
.end method
