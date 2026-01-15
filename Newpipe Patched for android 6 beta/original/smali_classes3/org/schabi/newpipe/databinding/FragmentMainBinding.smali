.class public final Lorg/schabi/newpipe/databinding/FragmentMainBinding;
.super Ljava/lang/Object;
.source "FragmentMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

.field public final pager:Landroidx/viewpager/widget/ViewPager;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/ScrollableTabLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->mainTabLayout:Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 33
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentMainBinding;
    .locals 3

    const v0, 0x7f0a0214

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/views/ScrollableTabLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f0a02c2

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/databinding/FragmentMainBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/ScrollableTabLayout;Landroidx/viewpager/widget/ViewPager;)V

    return-object v0

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


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentMainBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
