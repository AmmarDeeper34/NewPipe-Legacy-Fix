.class public final Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "PickerSubscriptionItem.kt"


# instance fields
.field private isSelected:Z

.field private final subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Z)V
    .locals 1

    const-string v0, "subscriptionEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 17
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->bind(Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;I)V
    .locals 1

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 25
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->titleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    const-string p2, "selectedHighlight"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 257
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getId()J
    .locals 2

    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d00d7

    return v0
.end method

.method public getSpanSize(II)I
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final getSubscriptionEntity()Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PickerSubscriptionItem(subscriptionEntity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isSelected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unbind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->unbind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V

    return-void
.end method

.method public unbind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1}, Lcom/xwray/groupie/Item;->unbind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 32
    iget-object p1, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateSelected(Landroid/view/View;Z)V
    .locals 10

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 43
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    move-result-object p1

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    const-string p1, "selectedHighlight"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-wide/16 v2, 0x96

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v1, p2

    invoke-static/range {v0 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
