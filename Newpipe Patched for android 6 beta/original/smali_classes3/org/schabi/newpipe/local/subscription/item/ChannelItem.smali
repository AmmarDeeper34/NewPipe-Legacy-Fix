.class public final Lorg/schabi/newpipe/local/subscription/item/ChannelItem;
.super Lcom/xwray/groupie/Item;
.source "ChannelItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;,
        Lorg/schabi/newpipe/local/subscription/item/ChannelItem$WhenMappings;
    }
.end annotation


# instance fields
.field private gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

.field private final infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

.field private itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

.field private final subscriptionId:J


# direct methods
.method public static synthetic $r8$lambda$QV75hFYJj2evAH-R-8n5ZKNaIYc(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->bind$lambda$0$0(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tNsNkT2Uc802euBv1Kay6-wxEhY(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->bind$lambda$0$1(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;JLorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 1

    const-string v0, "infoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 16
    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->subscriptionId:J

    .line 17
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    .line 18
    iput-object p5, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;JLorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;Lorg/schabi/newpipe/util/OnClickGesture;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, -0x1

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 17
    sget-object p4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    :cond_1
    move-object v4, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;-><init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;JLorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;Lorg/schabi/newpipe/util/OnClickGesture;)V

    return-void
.end method

.method private static final bind$lambda$0$0(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-interface {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bind$lambda$0$1(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)Z
    .locals 0

    .line 46
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-interface {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final getDetailLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f120472

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    sget-object v4, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 58
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 59
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/xwray/groupie/GroupieViewHolder;I)V
    .locals 4

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a01e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 36
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "getContext(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->getDetailLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    sget-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    if-ne p2, v0, :cond_0

    .line 39
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 44
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p1}, Lcom/xwray/groupie/GroupieViewHolder;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public getId()J
    .locals 5

    .line 20
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->subscriptionId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-super {p0}, Lcom/xwray/groupie/Item;->getId()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLayout()I
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    sget-object v1, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0074

    return v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const v0, 0x7f0d0076

    return v0

    :cond_2
    const v0, 0x7f0d0075

    return v0
.end method

.method public getSpanSize(II)I
    .locals 1

    .line 65
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    sget-object v0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final setGesturesListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->gesturesListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method

.method public final setItemVersion(Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->itemVersion:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    return-void
.end method
