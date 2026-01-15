.class public final Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;
.super Ljava/lang/Object;
.source "SubscriptionGroupsHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headerSort:Landroid/widget/ImageButton;

.field public final headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final headerToggleViewMode:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageButton;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    .line 37
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;
    .locals 4

    const v0, 0x7f0a01b4

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    const v0, 0x7f0a01b5

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a01b6

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageButton;)V

    return-object v0

    .line 89
    :cond_0
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


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
