.class public final Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "ImportSubscriptionsHintPlaceholderItem.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 11
    check-cast p1, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;->bind(Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;I)V
    .locals 0

    .line 0
    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d007b

    return v0
.end method

.method public getSpanSize(II)I
    .locals 0

    .line 0
    return p1
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
