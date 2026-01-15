.class public Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.source "LocalPlaylistStreamItemHolder.java"


# instance fields
.field private final itemAdditionalDetailsView:Landroid/widget/TextView;

.field public final itemDurationView:Landroid/widget/TextView;

.field private final itemHandleView:Landroid/view/View;

.field private final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0F8itObZoJ3GkABSngzqiY4KQo0(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k7wEUTISBJJSdoTlr-cuKCUPQbI(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->lambda$updateFromItem$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJ6xD6Usa-NagAoByiaBDTnPDe4(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->lambda$getOnTouchListener$2(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemHandleView:Landroid/view/View;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/LocalItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0088

    .line 48
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/schabi/newpipe/local/LocalItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getOnTouchListener(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 131
    new-instance v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    return-object v0
.end method

.method private synthetic lambda$getOnTouchListener$2(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 133
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 135
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lorg/schabi/newpipe/util/OnClickGesture;->drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$updateFromItem$0(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)Z
    .locals 0

    .line 97
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 98
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
    .locals 5

    .line 55
    instance-of p2, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 60
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-static {p3}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide p2

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    .line 66
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    iget-object p3, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/schabi/newpipe/local/LocalItemBuilder;

    invoke-virtual {p3}, Lorg/schabi/newpipe/local/LocalItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p3

    const v3, 0x7f06007f

    invoke-static {p3, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getProgressMillis()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_1

    .line 74
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 76
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getProgressMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int p3, v0

    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p3, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 89
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setLongClickable(Z)V

    .line 96
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemHandleView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->getOnTouchListener(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public updateState(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 6

    .line 109
    instance-of p2, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-nez p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 114
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DependentPreferenceHelper;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    move-result p2

    const-wide/16 v0, 0x1f4

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getProgressMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 116
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 117
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 118
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getProgressMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 118
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    return-void

    .line 121
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getProgressMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int p1, v2

    .line 121
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/4 p2, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void

    .line 125
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 126
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    :cond_3
    :goto_0
    return-void
.end method
