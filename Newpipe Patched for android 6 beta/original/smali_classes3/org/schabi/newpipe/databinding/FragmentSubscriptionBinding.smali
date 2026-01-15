.class public final Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;
.super Ljava/lang/Object;
.source "FragmentSubscriptionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyStateView:Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

.field public final errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

.field public final itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->emptyStateView:Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 36
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->errorPanel:Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 37
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;
    .locals 4

    const v0, 0x7f0a013b

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    move-result-object v0

    const v1, 0x7f0a0152

    .line 75
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    move-result-object v1

    const v2, 0x7f0a01fb

    .line 82
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 87
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0, v0, v1, v3}, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;Lorg/schabi/newpipe/databinding/ErrorPanelBinding;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v2

    :cond_0
    const v0, 0x7f0a01fb

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0152

    .line 90
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
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

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentSubscriptionBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
