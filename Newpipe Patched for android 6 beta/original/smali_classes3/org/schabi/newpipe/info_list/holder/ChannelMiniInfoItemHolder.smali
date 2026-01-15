.class public Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "ChannelMiniInfoItemHolder.java"


# instance fields
.field private final itemAdditionalDetailView:Landroid/widget/TextView;

.field private final itemChannelDescriptionView:Landroid/widget/TextView;

.field private final itemThumbnailView:Landroid/widget/ImageView;

.field private final itemTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$iOLsnJmnqIMxATkVr3hcbnN5Rzg(Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t3j9hmUYY3gpy1Uo6klR5SLDIFo(Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0076

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;
    .locals 5

    .line 101
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 103
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v1

    .line 103
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 105
    invoke-virtual {v1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v2

    .line 105
    invoke-static {v1, v2, v3}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v1

    .line 108
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v1

    .line 111
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnChannelSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnChannelSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 68
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnChannelSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 69
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnChannelSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected getDescriptionMaxLineCount(Ljava/lang/String;)I
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 4

    .line 43
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 48
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 51
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_1

    .line 53
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemAdditionalDetailView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDetailLine(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 61
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 79
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->itemChannelDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDescriptionMaxLineCount(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_3
    :goto_1
    return-void
.end method
