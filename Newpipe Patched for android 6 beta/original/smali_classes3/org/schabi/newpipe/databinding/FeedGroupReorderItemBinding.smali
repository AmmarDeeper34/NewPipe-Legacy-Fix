.class public final Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;
.super Ljava/lang/Object;
.source "FeedGroupReorderItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final groupIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final groupName:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final handle:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 36
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->handle:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;
    .locals 4

    const v0, 0x7f0a01ad

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a01ae

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a01b3

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
