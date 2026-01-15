.class public final Lorg/schabi/newpipe/databinding/DialogTitleBinding;
.super Ljava/lang/Object;
.source "DialogTitleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final itemRoot:Landroid/widget/RelativeLayout;

.field public final itemTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 36
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->itemRoot:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->itemTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogTitleBinding;
    .locals 4

    const v0, 0x7f0a01de

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v1, :cond_1

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a01e7

    .line 76
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v3, :cond_0

    .line 81
    new-instance p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object p0

    :cond_0
    const v0, 0x7f0a01e7

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogTitleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/DialogTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/DialogTitleBinding;
    .locals 2

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DialogTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
