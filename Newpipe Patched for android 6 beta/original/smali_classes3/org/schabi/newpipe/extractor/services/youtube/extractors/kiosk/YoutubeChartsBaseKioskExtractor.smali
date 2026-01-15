.class abstract Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "YoutubeChartsBaseKioskExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor$YoutubeChartsVideoInfoItemExtractor;
    }
.end annotation


# static fields
.field protected static final YT_CHARTS_SUPPORTED_COUNTRY_CODES:Ljava/util/Set;


# instance fields
.field protected browseResponse:Lcom/grack/nanojson/JsonObject;

.field protected final chartType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SSDQUymqNPRjgvVwzOJQVzTpELE(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 131
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor$YoutubeChartsVideoInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor$YoutubeChartsVideoInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 62

    .line 62
    const-string v60, "ZA"

    const-string v61, "ZW"

    const-string v1, "AE"

    const-string v2, "AR"

    const-string v3, "AT"

    const-string v4, "AU"

    const-string v5, "BE"

    const-string v6, "BO"

    const-string v7, "BR"

    const-string v8, "CA"

    const-string v9, "CH"

    const-string v10, "CL"

    const-string v11, "CO"

    const-string v12, "CR"

    const-string v13, "CZ"

    const-string v14, "DE"

    const-string v15, "DK"

    const-string v16, "DO"

    const-string v17, "EC"

    const-string v18, "EE"

    const-string v19, "EG"

    const-string v20, "ES"

    const-string v21, "FI"

    const-string v22, "FR"

    const-string v23, "GB"

    const-string v24, "GT"

    const-string v25, "HN"

    const-string v26, "HU"

    const-string v27, "ID"

    const-string v28, "IE"

    const-string v29, "IL"

    const-string v30, "IN"

    const-string v31, "IS"

    const-string v32, "IT"

    const-string v33, "JP"

    const-string v34, "KE"

    const-string v35, "KR"

    const-string v36, "LU"

    const-string v37, "MX"

    const-string v38, "NG"

    const-string v39, "NI"

    const-string v40, "NL"

    const-string v41, "NO"

    const-string v42, "NZ"

    const-string v43, "PA"

    const-string v44, "PE"

    const-string v45, "PL"

    const-string v46, "PT"

    const-string v47, "PY"

    const-string v48, "RO"

    const-string v49, "RS"

    const-string v50, "RU"

    const-string v51, "SA"

    const-string v52, "SE"

    const-string v53, "SV"

    const-string v54, "TR"

    const-string v55, "TZ"

    const-string v56, "UA"

    const-string v57, "UG"

    const-string v58, "US"

    const-string v59, "UY"

    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->YT_CHARTS_SUPPORTED_COUNTRY_CODES:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 81
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->chartType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->browseResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "sectionListRenderer"

    .line 119
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "musicAnalyticsSectionRenderer"

    .line 122
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "content"

    .line 123
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "videos"

    .line 124
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoViews"

    .line 126
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 128
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 130
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;)V

    .line 131
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 134
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 140
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 6

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    .line 91
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebMusicAnalyticsChartsClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v2

    const-string v3, "browseId"

    const-string v4, "FEmusic_analytics_charts_home"

    .line 95
    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->chartType:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perspective=CHART_DETAILS&chart_params_country_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&chart_params_chart_type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v3, "query"

    invoke-virtual {v2, v3, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 102
    new-instance v2, Ljava/util/HashMap;

    const-string v3, "https://charts.youtube.com"

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 103
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v3, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    const-string v3, "https://charts.youtube.com/youtubei/v1/browse?alt=json&prettyPrint=false"

    invoke-virtual {v1, v3, v2, v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->browseResponse:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
