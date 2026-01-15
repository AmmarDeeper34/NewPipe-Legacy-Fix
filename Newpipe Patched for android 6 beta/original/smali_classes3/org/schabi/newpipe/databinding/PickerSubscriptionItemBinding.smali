.class public final Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;
.super Ljava/lang/Object;
.source "PickerSubscriptionItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final selectedHighlight:Landroid/widget/FrameLayout;

.field public final thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final titleView:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 37
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 38
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->titleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;
    .locals 4

    const v0, 0x7f0a035a

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f0a03e8

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a03f0

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

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
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
