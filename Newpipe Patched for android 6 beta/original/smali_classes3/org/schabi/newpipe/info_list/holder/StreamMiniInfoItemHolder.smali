.class public Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "StreamMiniInfoItemHolder.java"


# instance fields
.field public final itemDurationView:Landroid/widget/TextView;

.field private final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemUploaderView:Landroid/widget/TextView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$_EMdW_mOq4pVK8dCmc4ca1Qy-hM(Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->lambda$enableLongClick$1(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dmFRwfnM6Oi1am8HOzljxiM4XYk(Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 37
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0085

    .line 44
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private disableLongClick()V
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 153
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private enableLongClick(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$enableLongClick$1(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 144
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnStreamSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 145
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnStreamSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnStreamSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 94
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnStreamSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 8

    .line 50
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 55
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_3

    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06007f

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->loadStreamState(Lorg/schabi/newpipe/extractor/InfoItem;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    aget-object p1, p1, v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 71
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 73
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->getProgressMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int p1, v1

    .line 73
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    const p2, 0x7f120126

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0600a8

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 92
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget-object p1, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 109
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->disableLongClick()V

    return-void

    .line 105
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->enableLongClick(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
