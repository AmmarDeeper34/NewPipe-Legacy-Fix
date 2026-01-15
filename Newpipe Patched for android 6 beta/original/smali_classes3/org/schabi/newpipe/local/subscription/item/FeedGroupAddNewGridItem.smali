.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "FeedGroupAddNewGridItem.kt"


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
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;->bind(Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;I)V
    .locals 0

    .line 0
    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d004b

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupAddNewGridItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
