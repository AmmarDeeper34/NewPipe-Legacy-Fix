.class public Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.source "LocalStatisticStreamItemHolder.java"


# instance fields
.field public final itemAdditionalDetails:Landroid/widget/TextView;

.field public final itemDurationView:Landroid/widget/TextView;

.field private final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemUploaderView:Landroid/widget/TextView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2P5PoCfl-f0Bs0zbtU3d6QJcIVQ(Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9ACxao9tGBLqZgEx_TUZGLkaIws(Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemAdditionalDetails:Landroid/widget/TextView;

    .line 69
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0084

    .line 57
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getStreamInfoDetailLine(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    .line 76
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getWatchCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortViewCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getLatestAccessDate()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Landroid/view/View;)Z
    .locals 0

    .line 131
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 132
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->held(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lj$/time/format/DateTimeFormatter;)V
    .locals 6

    .line 86
    instance-of p2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-nez p2, :cond_0

    return-void

    .line 89
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 91
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemUploaderView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/16 p2, 0x8

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f06007f

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getProgressMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 103
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 105
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getProgressMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    .line 105
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_0
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemAdditionalDetails:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 116
    invoke-direct {p0, p1, p3}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->getStreamInfoDetailLine(Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p3, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 123
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setLongClickable(Z)V

    .line 130
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public updateState(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 6

    .line 141
    instance-of p2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    if-nez p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 146
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    move-result p2

    const-wide/16 v0, 0x1f4

    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getProgressMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 148
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 149
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 150
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 151
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getProgressMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 150
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    return-void

    .line 153
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getProgressMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int p1, v2

    .line 153
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/4 p2, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void

    .line 157
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_3
    :goto_0
    return-void
.end method
