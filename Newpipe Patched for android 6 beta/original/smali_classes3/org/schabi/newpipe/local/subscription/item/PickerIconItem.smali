.class public final Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "PickerIconItem.kt"


# instance fields
.field private final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field private final iconRes:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 10
    check-cast p1, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->bind(Lorg/schabi/newpipe/databinding/PickerIconItemBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/PickerIconItemBinding;I)V
    .locals 0

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->iconView:Landroid/widget/ImageView;

    iget p2, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    return-object v0
.end method

.method public final getIconRes()I
    .locals 1

    .line 14
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d00d6

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerIconItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
