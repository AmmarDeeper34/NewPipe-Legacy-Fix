.class public final Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;
.super Ljava/lang/Object;
.source "StatisticPlaylistControlBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sortButton:Landroid/widget/RelativeLayout;

.field public final sortButtonIcon:Landroid/widget/ImageView;

.field public final sortButtonText:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->playlistControl:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 41
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButton:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonIcon:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->sortButtonText:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;
    .locals 8

    const v0, 0x7f0a02fe

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    move-result-object v4

    const v0, 0x7f0a0376

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0377

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0378

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;-><init>(Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;
    .locals 2

    const v0, 0x7f0d0103

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/StatisticPlaylistControlBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
