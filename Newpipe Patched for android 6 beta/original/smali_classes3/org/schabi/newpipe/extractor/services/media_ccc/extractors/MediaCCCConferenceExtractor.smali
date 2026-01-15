.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;
.super Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
.source "MediaCCCConferenceExtractor.java"


# instance fields
.field private conferenceData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$-1kiAPpMPIgwVElgnAQC6i5-MUc(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1

    .line 102
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;

    invoke-direct {v0, p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V

    return-object v0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method static fetchConferenceData(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.media.ccc.de/public/conferences/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 42
    :catch_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse json returned by URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAvatars()Ljava/util/List;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "logo_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getImageListFromLogoImageUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBanners()Ljava/util/List;
    .locals 1

    .line 56
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentChannelAvatars()Ljava/util/List;
    .locals 1

    .line 87
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getParentChannelName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, ""

    return-object v0
.end method

.method public getParentChannelUrl()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, ""

    return-object v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 5

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    .line 100
    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/grack/nanojson/JsonObject;)V

    const-string v0, "videos"

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->fetchConferenceData(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
