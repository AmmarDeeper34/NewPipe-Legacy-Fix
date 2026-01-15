.class public final Lorg/schabi/newpipe/databinding/FragmentSearchBinding;
.super Ljava/lang/Object;
.source "FragmentSearchBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final emptyStateView:Landroid/widget/LinearLayout;

.field public final errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

.field public final itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field public final loadingProgressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final searchMetaInfoSeparator:Landroid/view/View;

.field public final searchMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

.field public final suggestionsPanel:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->emptyStateView:Landroid/widget/LinearLayout;

    .line 61
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 62
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 64
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoSeparator:Landroid/view/View;

    .line 65
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 66
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsPanel:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentSearchBinding;
    .locals 13

    const v0, 0x7f0a00d0

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a013b

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0152

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    move-result-object v6

    const v0, 0x7f0a01fb

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a020e

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0348

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    const v0, 0x7f0a0349

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03aa

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03ab

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 152
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v12}, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 157
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

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
