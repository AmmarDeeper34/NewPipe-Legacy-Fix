.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMusicExtractor;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;
.source "YoutubeTrendingMusicExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 1

    .line 18
    const-string v0, "TRENDING_VIDEOS"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 13
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "Trending Music Videos"

    return-object v0
.end method

.method public bridge synthetic getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 24
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->YT_CHARTS_SUPPORTED_COUNTRY_CODES:Ljava/util/Set;

    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V

    return-void

    .line 26
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedContentInCountryException;

    const-string v0, "YouTube Charts doesn\'t support this country for trending music videos charts"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedContentInCountryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
