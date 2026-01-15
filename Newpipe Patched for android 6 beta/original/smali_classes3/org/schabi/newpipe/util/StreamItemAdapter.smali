.class public Lorg/schabi/newpipe/util/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    }
.end annotation


# instance fields
.field private final hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

.field private final secondaryStreams:Landroidx/collection/SparseArrayCompat;

.field private final streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V
    .locals 2

    .line 73
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 66
    iput-object p2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter;->checkHasAnyVideoOnlyStreamWithNoSecondaryStream()Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    return-void
.end method

.method private checkHasAnyVideoOnlyStreamWithNoSecondaryStream()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 211
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 212
    instance-of v3, v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v3, :cond_0

    .line 213
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 120
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0104

    move-object/from16 v6, p3

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    const v5, 0x7f0a042a

    .line 124
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0398

    .line 125
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0399

    .line 126
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a039a

    .line 127
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 129
    invoke-virtual/range {p0 .. p1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v9

    .line 130
    iget-object v10, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v10, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getFormat(I)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v10

    .line 135
    instance-of v11, v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    const/16 v12, 0x8

    if-eqz v11, :cond_3

    .line 136
    move-object v11, v9

    check-cast v11, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 137
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v13

    .line 139
    iget-boolean v14, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    if-eqz v14, :cond_5

    .line 140
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v11

    const/4 v14, 0x4

    if-eqz v11, :cond_2

    .line 141
    iget-object v11, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v11, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    if-eqz p4, :cond_5

    goto/16 :goto_3

    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_2
    if-eqz p4, :cond_5

    goto/16 :goto_3

    .line 152
    :cond_3
    instance-of v11, v9, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    const v13, 0x7f1204a2

    if-eqz v11, :cond_6

    .line 153
    move-object v11, v9

    check-cast v11, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 154
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v14

    if-lez v14, :cond_4

    .line 155
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "kbps"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    move-object v13, v11

    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v14, 0x8

    goto :goto_3

    .line 159
    :cond_6
    instance-of v11, v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v11, :cond_7

    .line 160
    move-object v11, v9

    check-cast v11, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    move-result-object v13

    .line 161
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 162
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f120071

    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    if-nez v10, :cond_8

    .line 166
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 168
    :cond_8
    invoke-virtual {v10}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 172
    :goto_3
    iget-object v11, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v11, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v11, v15, v17

    if-lez v11, :cond_a

    .line 173
    iget-object v11, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v11, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    if-eqz v11, :cond_9

    .line 175
    invoke-virtual {v11}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v11

    iget-object v15, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 176
    invoke-virtual {v15, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v15

    add-long/2addr v11, v15

    .line 177
    invoke-static {v11, v12}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 179
    :cond_9
    iget-object v11, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v11, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getFormattedSize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 183
    :cond_a
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_5
    instance-of v1, v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v1, :cond_b

    .line 187
    check-cast v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    if-nez v10, :cond_c

    const v1, 0x7f1204a1

    .line 190
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 191
    :cond_c
    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v10, v1, :cond_d

    .line 193
    const-string v1, "opus"

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 195
    :cond_d
    invoke-virtual {v10}, Lorg/schabi/newpipe/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :goto_6
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v4
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllSecondary()Landroidx/collection/SparseArrayCompat;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 108
    move-object p1, p3

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
