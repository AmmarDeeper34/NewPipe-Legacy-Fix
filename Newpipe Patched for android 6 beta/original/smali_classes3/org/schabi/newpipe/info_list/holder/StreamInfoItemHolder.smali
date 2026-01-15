.class public Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;
.source "StreamInfoItemHolder.java"


# instance fields
.field public final itemAdditionalDetails:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;->itemAdditionalDetails:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0d0084

    .line 43
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getStreamInfoDetailLine(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Ljava/lang/String;
    .locals 5

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 68
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 70
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->listeningCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 73
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortWatchingCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 76
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/Localization;->shortViewCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, ""

    .line 80
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getTextualUploadDate()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v1, v2, p1}, Lorg/schabi/newpipe/util/Localization;->relativeTimeOrTextual(Landroid/content/Context;Lorg/schabi/newpipe/extractor/localization/DateWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 88
    :cond_3
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    .line 57
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 62
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;->itemAdditionalDetails:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;->getStreamInfoDetailLine(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
