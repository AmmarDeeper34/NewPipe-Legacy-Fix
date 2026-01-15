.class public final Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;
.super Ljava/lang/Object;
.source "ToolbarSearchLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final toolbarSearchClear:Landroid/widget/FrameLayout;

.field public final toolbarSearchClearIcon:Landroid/widget/ImageView;

.field public final toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeEditText;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchClear:Landroid/widget/FrameLayout;

    .line 37
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchClearIcon:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;
    .locals 4

    const v0, 0x7f0a03f4

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f0a03f5

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a03f7

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/views/NewPipeEditText;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeEditText;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
