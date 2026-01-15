.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "SoundcloudChartsExtractor.java"


# instance fields
.field private initialFetchCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field private initialFetchNextPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 91
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchNextPageUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 83
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 82
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 37
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchNextPageUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 45
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-v2.soundcloud.com/charts?genre=soundcloud:genres:all-music&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&kind=trending"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSupportedCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&region=soundcloud:regions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    if-nez v0, :cond_2

    move-object v0, p1

    :cond_2
    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchNextPageUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 63
    :catch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChartsExtractor;->initialFetchNextPageUrl:Ljava/lang/String;

    return-void
.end method
