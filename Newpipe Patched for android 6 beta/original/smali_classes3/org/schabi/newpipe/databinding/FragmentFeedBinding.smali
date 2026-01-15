.class public final Lorg/schabi/newpipe/databinding/FragmentFeedBinding;
.super Ljava/lang/Object;
.source "FragmentFeedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyStateView:Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

.field public final errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

.field public final itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field public final loadingProgressBar:Landroid/widget/ProgressBar;

.field public final loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final newItemsLoadedButton:Landroid/widget/Button;

.field public final refreshIcon:Landroid/widget/ImageView;

.field public final refreshInfoContainer:Landroid/widget/LinearLayout;

.field public final refreshRootView:Landroid/widget/RelativeLayout;

.field public final refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 72
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->emptyStateView:Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 73
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 74
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 76
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 77
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    .line 78
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshIcon:Landroid/widget/ImageView;

    .line 79
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshInfoContainer:Landroid/widget/LinearLayout;

    .line 80
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 81
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 82
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 83
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentFeedBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a013b

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    move-result-object v5

    const v1, 0x7f0a0152

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    move-result-object v6

    const v1, 0x7f0a01fb

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a020e

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    const v1, 0x7f0a020f

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0281

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0321

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0322

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0323

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0324

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0325

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a03b1

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v16, :cond_0

    .line 187
    new-instance v3, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v16}, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-object v3

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
