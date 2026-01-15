.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "FeedGroupReorderItem.kt"


# instance fields
.field private final dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final groupId:J

.field private final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field private final name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$fEfdMM74nBGlUCd7j-Ska5dwaQE(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->bind$lambda$0(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    .line 17
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 19
    iput-object p5, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 7

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    return-void
.end method

.method private static final bind$lambda$0(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 41
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 42
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->bind(Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;I)V

    return-void
.end method

.method public bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    .line 40
    iget-object p2, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p2, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->handle:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;I)V
    .locals 1

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupName:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupIcon:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    iget-wide v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getDragDirs()I
    .locals 1

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public getId()J
    .locals 5

    .line 25
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 26
    invoke-super {p0}, Lcom/xwray/groupie/Item;->getId()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d004f

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FeedGroupReorderItem(groupId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dragCallback="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
