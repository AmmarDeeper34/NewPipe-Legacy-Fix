.class public final Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;
.super Ljava/lang/Object;
.source "FragmentInstanceListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addInstanceButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final instanceHelpTV:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final instances:Landroidx/recyclerview/widget/RecyclerView;

.field public final loadingProgressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 41
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->addInstanceButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 42
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instanceHelpTV:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 43
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instances:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;
    .locals 8

    const v0, 0x7f0a005d

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01d5

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01d9

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a020e

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;
    .locals 2

    const v0, 0x7f0d005e

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
