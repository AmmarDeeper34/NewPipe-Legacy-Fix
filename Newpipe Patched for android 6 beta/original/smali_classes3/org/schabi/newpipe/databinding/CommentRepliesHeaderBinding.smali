.class public final Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;
.super Ljava/lang/Object;
.source "CommentRepliesHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final authorAvatar:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final authorName:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final authorTouchArea:Landroid/view/View;

.field public final commentContent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final heartImage:Landroid/widget/ImageView;

.field public final pinnedImage:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final thumbsUpCount:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final thumbsUpImage:Landroid/widget/ImageView;

.field public final uploadDate:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorAvatar:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 59
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorTouchArea:Landroid/view/View;

    .line 61
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->commentContent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 62
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->heartImage:Landroid/widget/ImageView;

    .line 63
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->pinnedImage:Landroid/widget/ImageView;

    .line 64
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->thumbsUpCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 65
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->thumbsUpImage:Landroid/widget/ImageView;

    .line 66
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->uploadDate:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;
    .locals 13

    const v0, 0x7f0a0077

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0078

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0079

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0a00bb

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01b7

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02d0

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03e9

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03ea

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a040c

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v12, :cond_0

    .line 150
    new-instance v2, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v12}, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object v2

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;
    .locals 2

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
