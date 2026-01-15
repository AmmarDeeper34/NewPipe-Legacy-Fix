.class public final Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;
.super Ljava/lang/Object;
.source "FragmentDescriptionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrier:Landroidx/constraintlayout/widget/Barrier;

.field public final constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final detailDescriptionNoteView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final detailMetadataLayout:Landroid/widget/LinearLayout;

.field public final detailSelectDescriptionButton:Landroid/widget/ImageView;

.field public final detailUploadDateView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 54
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->barrier:Landroidx/constraintlayout/widget/Barrier;

    .line 55
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionNoteView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 57
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 58
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailMetadataLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    .line 60
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailUploadDateView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;
    .locals 11

    const v0, 0x7f0a0080

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00bf

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00f6

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a00f7

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a00fd

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0102

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a010f

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    .line 132
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v10}, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;
    .locals 2

    const v0, 0x7f0d005a

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
