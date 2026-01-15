.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;
.super Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.source "ChannelAboutFragment.java"


# instance fields
.field protected channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
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

.method constructor <init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    return-void
.end method


# virtual methods
.method protected getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 46
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceId()I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    return v0
.end method

.method protected getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p2, 0x8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 8

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailUploadDateView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 84
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(J)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const v6, 0x7f120281

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 83
    invoke-virtual/range {v2 .. v7}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 87
    :goto_0
    iget-object p1, v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 88
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object p1

    const p2, 0x7f120271

    .line 87
    invoke-virtual {p0, v3, v4, p2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 89
    iget-object p1, v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    move-result-object p1

    const p2, 0x7f120272

    .line 89
    invoke-virtual {p0, v3, v4, p2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    return-void
.end method
