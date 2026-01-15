.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;
.super Ljava/lang/Object;
.source "YoutubeStreamHelper.java"


# direct methods
.method private static addPlaybackContext(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V
    .locals 1

    .line 247
    const-string v0, "playbackContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string v0, "contentPlaybackContext"

    .line 248
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string v0, "signatureTimestamp"

    .line 249
    invoke-virtual {p0, v0, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p2, "referer"

    .line 250
    invoke-virtual {p0, p2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    return-void
.end method

.method private static addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 234
    const-string v0, "videoId"

    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    if-eqz p2, :cond_0

    .line 237
    const-string p1, "cpn"

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 240
    :cond_0
    const-string p1, "contentCheckOk"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "racyCheckOk"

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    return-void
.end method

.method public static getAndroidReelPlayerResponse(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 8

    .line 162
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofAndroidClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    .line 165
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 169
    iget-object v7, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 170
    const-string v4, "https://youtubei.googleapis.com/youtubei/v1/"

    move-object v2, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    .line 173
    invoke-static {v1, v2, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 176
    const-string p1, "playerRequest"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 177
    invoke-static {p0, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string p3, "disablePlayerResponse"

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, p3, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 181
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 185
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&id="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&$fields=playerResponse"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1, v3, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 188
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "playerResponse"

    .line 190
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static getIosPlayerResponse(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;
    .locals 7

    .line 200
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofIosClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    .line 203
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 207
    iget-object p4, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 208
    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v2, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 210
    iput-object p0, p4, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    .line 212
    invoke-static {v1, v2, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 215
    invoke-static {p0, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 225
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&id="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1, v3, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private static getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 265
    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "2"

    .line 266
    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 265
    const-string v1, "User-Agent"

    const-string v2, "X-Goog-Api-Format-Version"

    invoke-static {v1, p0, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getWebEmbeddedPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;I)Lcom/grack/nanojson/JsonObject;
    .locals 7

    .line 91
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebEmbeddedPlayerClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    .line 93
    new-instance v3, Ljava/util/HashMap;

    const-string p4, "56"

    const-string v1, "1.20250121.00.00"

    .line 94
    invoke-static {p4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    invoke-direct {v3, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 95
    const-string p4, "https://www.youtube.com"

    invoke-static {p4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {v3, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    iget-object p4, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    .line 102
    const-string v4, "https://www.youtube.com/youtubei/v1/"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 104
    iput-object p0, p4, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    .line 106
    invoke-static {v1, v2, v0, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 109
    invoke-static {p0, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, v5, p5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->addPlaybackContext(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V

    .line 117
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 122
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p1

    const-string p2, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-virtual {p1, p2, v3, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static getWebMetadataPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 8

    .line 55
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    .line 56
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    .line 58
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v3

    .line 62
    iget-object v7, v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 63
    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    .line 66
    invoke-static {v1, v2, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 69
    invoke-static {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 78
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p1

    const-string p2, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,playabilityStatus,storyboards,videoDetails"

    invoke-virtual {p1, p2, v3, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method
