.class public final Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;
.super Ljava/lang/Object;
.source "PlaylistHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field public final playlistDescription:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playlistMeta:Landroid/widget/RelativeLayout;

.field public final playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final uploaderLayout:Landroid/widget/RelativeLayout;

.field public final uploaderName:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 58
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 59
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistMeta:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 62
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 64
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;
    .locals 13

    const v0, 0x7f0a02fe

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    move-result-object v4

    const v0, 0x7f0a0302

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0303

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0306

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0307

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0308

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a040d

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a040e

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a040f

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v12, :cond_0

    .line 150
    new-instance v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v12}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;
    .locals 2

    const v0, 0x7f0d00df

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
