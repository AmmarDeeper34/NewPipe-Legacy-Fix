.class public final Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;
.super Ljava/lang/Object;
.source "FeedGroupCardItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final title:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->icon:Landroid/widget/ImageView;

    .line 33
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->title:Lorg/schabi/newpipe/views/NewPipeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;
    .locals 3

    const v0, 0x7f0a01c0

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a03ec

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
