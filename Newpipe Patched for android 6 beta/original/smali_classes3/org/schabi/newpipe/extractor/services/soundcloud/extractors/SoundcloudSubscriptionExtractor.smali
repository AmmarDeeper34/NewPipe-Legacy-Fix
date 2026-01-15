.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;
.super Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.source "SoundcloudSubscriptionExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;)V
    .locals 1

    .line 26
    sget-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V

    return-void
.end method

.method private getUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 62
    :cond_0
    const-string p1, "soundcloud.com/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://soundcloud.com/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toSubscriptionItems(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 76
    new-instance v2, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public fromChannelUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->getUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api-v2.soundcloud.com/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/followings?client_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&limit=200"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 51
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;-><init>(I)V

    const/16 v1, 0x9c4

    .line 53
    invoke-static {v1, v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUsersFromApiMinItems(ILorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->toSubscriptionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 38
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v0, "Channel url is null"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRelatedUrl()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "https://soundcloud.com/you"

    return-object v0
.end method
