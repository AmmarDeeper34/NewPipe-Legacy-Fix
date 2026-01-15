.class public final Lorg/schabi/newpipe/databinding/ItemMetadataBinding;
.super Ljava/lang/Object;
.source "ItemMetadataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final metadataTypeView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 32
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataTypeView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemMetadataBinding;
    .locals 3

    const v0, 0x7f0a024d

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a024f

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v2, :cond_0

    .line 74
    new-instance v0, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemMetadataBinding;
    .locals 2

    const v0, 0x7f0d006d

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemMetadataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
