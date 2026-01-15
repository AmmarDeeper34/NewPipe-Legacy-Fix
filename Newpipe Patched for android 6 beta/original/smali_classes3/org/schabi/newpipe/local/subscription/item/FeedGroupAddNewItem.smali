.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "FeedGroupAddNewItem.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 8
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;->bind(Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;I)V
    .locals 0

    .line 0
    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d004c

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
