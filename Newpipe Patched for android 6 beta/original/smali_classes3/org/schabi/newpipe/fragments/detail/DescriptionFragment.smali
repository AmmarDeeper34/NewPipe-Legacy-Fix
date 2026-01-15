.class public Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;
.super Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.source "DescriptionFragment.java"


# instance fields
.field streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method

.method private addPrivacyMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamExtractor$Privacy:[I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f12027c

    goto :goto_0

    :cond_1
    const v0, 0x7f12027d

    goto :goto_0

    :cond_2
    const v0, 0x7f12027f

    goto :goto_0

    :cond_3
    const v0, 0x7f12027e

    :goto_0
    if-eqz v0, :cond_4

    const v5, 0x7f12027b

    .line 136
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 135
    invoke-virtual/range {v1 .. v6}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceId()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    return v0
.end method

.method protected getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 13

    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailUploadDateView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 72
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/Localization;->localizeUploadDate(Landroid/content/Context;Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailUploadDateView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v5, 0x7f120277

    .line 82
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getCategory()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 81
    invoke-virtual/range {v1 .. v6}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    .line 84
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 85
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLicence()Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const v11, 0x7f12027a

    .line 84
    invoke-virtual/range {v7 .. v12}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 87
    invoke-direct {p0, v8, v9}, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->addPrivacyMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 89
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 91
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const v11, 0x7f120270

    .line 90
    invoke-virtual/range {v7 .. v12}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 94
    :cond_2
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 96
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const v11, 0x7f120279

    .line 95
    invoke-virtual/range {v7 .. v12}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 99
    :cond_3
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 100
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSupportInfo()Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x1

    const v11, 0x7f120282

    .line 99
    invoke-virtual/range {v7 .. v12}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 101
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHost()Ljava/lang/String;

    move-result-object v12

    const v11, 0x7f120278

    .line 101
    invoke-virtual/range {v7 .. v12}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 104
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 105
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object p1

    const p2, 0x7f120284

    .line 104
    invoke-virtual {p0, v8, v9, p2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 106
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 107
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object p1

    const p2, 0x7f120285

    .line 106
    invoke-virtual {p0, v8, v9, p2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 108
    iget-object p1, v7, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 109
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    move-result-object p1

    const p2, 0x7f120280

    .line 108
    invoke-virtual {p0, v8, v9, p2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    return-void
.end method
