.class public final Lorg/schabi/newpipe/databinding/ListStreamItemBinding;
.super Ljava/lang/Object;
.source "ListStreamItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemUploaderView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final itemVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/AnimatedProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 52
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 54
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemThumbnailView:Landroid/widget/ImageView;

    .line 56
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemUploaderView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 57
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListStreamItemBinding;
    .locals 11

    const v0, 0x7f0a01de

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01e1

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01e3

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    if-eqz v6, :cond_0

    .line 105
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a01e6

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a01e8

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a01e9

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    .line 125
    new-instance v2, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v10}, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/AnimatedProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object v2

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 130
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

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
