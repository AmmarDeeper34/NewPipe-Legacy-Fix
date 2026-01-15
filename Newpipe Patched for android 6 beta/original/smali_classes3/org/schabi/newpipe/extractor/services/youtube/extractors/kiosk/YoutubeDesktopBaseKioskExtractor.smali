.class abstract Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "YoutubeDesktopBaseKioskExtractor.java"


# instance fields
.field protected final browseId:Ljava/lang/String;

.field protected final params:Ljava/lang/String;

.field protected responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;


# direct methods
.method public static synthetic $r8$lambda$Iu6Ao0Fw9tHhuQ0MJ5268uzpCNE(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 120
    const-string v0, "appendContinuationItemsAction"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$djagIyE5eS3PcILVab_0kHJ6AfE(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 121
    const-string v0, "appendContinuationItemsAction"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xgBRptnQWT-lSpQx5F5inddr-BY(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    .line 142
    const-string v0, "richItemRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "content"

    .line 144
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    .line 146
    const-string v0, "videoRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    .line 148
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 147
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void

    .line 150
    :cond_0
    const-string v0, "gridVideoRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    .line 152
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 151
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void

    .line 153
    :cond_1
    const-string v0, "lockupViewModel"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    .line 156
    const-string v0, "contentType"

    .line 157
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "LOCKUP_CONTENT_TYPE_VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 48
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->browseId:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->params:Ljava/lang/String;

    return-void
.end method

.method private collectStreamItems(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5

    .line 133
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 136
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 141
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 164
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 165
    const-string v1, "continuationItemRenderer"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 166
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->getNextPageFrom(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    .line 173
    :cond_1
    :goto_0
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1
.end method

.method private getNextPageFrom(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;
    .locals 7

    .line 181
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    const-string v0, "continuationEndpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 186
    const-string v0, "continuationCommand"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "token"

    .line 187
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    .line 193
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    .line 194
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iput-object p2, v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    .line 197
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    .line 196
    invoke-static {v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "continuation"

    .line 200
    invoke-virtual {v0, v1, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 205
    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "https://www.youtube.com/youtubei/v1/browse?prettyPrint=false"

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-object v1
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "twoColumnBrowseResultsRenderer"

    .line 75
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "tabs"

    .line 76
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "tabRenderer"

    .line 78
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 79
    const-string v3, "content"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 82
    const-string v4, "sectionListRenderer"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v4, "itemSectionRenderer"

    .line 86
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "shelfRenderer"

    .line 89
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "gridRenderer"

    .line 91
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "items"

    .line 92
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    const-string v2, "richGridRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    .line 100
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const-string v2, "responseContext"

    .line 101
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "visitorData"

    .line 102
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->collectStreamItems(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    .line 66
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelHeader(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelName(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 112
    const-string v2, "browse"

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 115
    const-string v1, "onResponseReceivedActions"

    .line 116
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 120
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 121
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "continuationItems"

    .line 124
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->collectStreamItems(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page is null or doesn\'t contain a body"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 55
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->browseId:Ljava/lang/String;

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->params:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v2

    .line 55
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelResponse(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->responseData:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    return-void
.end method
