.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingPodcastsEpisodesExtractor;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;
.source "YoutubeTrendingPodcastsEpisodesExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 6

    .line 11
    const-string v4, "FEpodcasts_destination"

    const-string v5, "qgcCCAM%3D"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 6
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeDesktopBaseKioskExtractor;->onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V

    return-void
.end method
