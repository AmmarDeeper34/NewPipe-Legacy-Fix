.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "FeedGroupCardItem.kt"


# instance fields
.field private final groupId:J

.field private final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 11
    iput-wide p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    .line 12
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 3

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 10
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->bind(Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;I)V
    .locals 1

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->title:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    iget-wide v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getGroupId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    return-wide v0
.end method

.method public getId()J
    .locals 5

    .line 18
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 19
    invoke-super {p0}, Lcom/xwray/groupie/Item;->getId()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d004e

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeedGroupCardItem(groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
