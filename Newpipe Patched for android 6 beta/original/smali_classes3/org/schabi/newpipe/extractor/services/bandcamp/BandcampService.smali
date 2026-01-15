.class public Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "BandcampService.java"


# direct methods
.method public static synthetic $r8$lambda$P92Gg8gtjt_h-Z8T4xuNM6IbCJM(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    new-instance p2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;

    const-string p3, "https://bandcamp.com/api/bcweekly/3/list"

    .line 127
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$lT-c4CGZl3Drgr5ShJ3shk_F0xU(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance p2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampFeaturedExtractor;

    const-string p3, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    .line 117
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampFeaturedExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Bandcamp"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .locals 1

    .line 145
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 70
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1

    .line 150
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 75
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelTabLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelTabLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1

    .line 172
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 90
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampCommentsLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampCommentsLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;
    .locals 5

    .line 110
    const-string v0, "Featured"

    new-instance v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 111
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;

    move-result-object v2

    .line 114
    :try_start_0
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    invoke-virtual {v1, v3, v2, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 124
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v4, "Radio"

    invoke-virtual {v1, v3, v2, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->setDefaultKiosk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .locals 1

    .line 159
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 80
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 1

    .line 95
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 1

    .line 85
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampSearchQueryHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampSearchQueryHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 164
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 65
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionExtractor()Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
    .locals 1

    .line 100
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-object v0
.end method
