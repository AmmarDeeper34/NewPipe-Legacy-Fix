.class public final Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;
.super Ljava/lang/Object;
.source "LocalPlaylistHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field public final playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 36
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistStreamCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->playlistTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;
    .locals 4

    const v0, 0x7f0a02fe

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    move-result-object v0

    const v1, 0x7f0a0307

    .line 75
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v2, :cond_1

    const v1, 0x7f0a0308

    .line 81
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v1, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object v1

    :cond_0
    const v0, 0x7f0a0308

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0307

    .line 89
    :cond_2
    :goto_0
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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;
    .locals 2

    const v0, 0x7f0d0089

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/LocalPlaylistHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
