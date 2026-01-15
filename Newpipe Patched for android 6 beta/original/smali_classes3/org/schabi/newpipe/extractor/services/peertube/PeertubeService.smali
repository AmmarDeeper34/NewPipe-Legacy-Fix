.class public Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "PeertubeService.java"


# instance fields
.field private instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;


# direct methods
.method public static synthetic $r8$lambda$S9ekYZSYgFPnMcyX3Ew7hNQIAY8(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    new-instance p2, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeTrendingExtractor;

    .line 159
    invoke-virtual {p1, p4}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeTrendingExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 48
    sget-object v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;-><init>(ILorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 3

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PeerTube"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 53
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .locals 2

    .line 107
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/video-channels/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 63
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1

    .line 117
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 68
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1

    .line 135
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 83
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    return-object v0
.end method

.method public getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;
    .locals 5

    .line 154
    const-string v0, "Trending"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    move-result-object v1

    .line 156
    new-instance v2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;)V

    .line 163
    new-instance v3, Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 168
    :try_start_0
    invoke-virtual {v3, v2, v1, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 169
    const-string v4, "Most liked"

    invoke-virtual {v3, v2, v1, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 171
    const-string v4, "Recently added"

    invoke-virtual {v3, v2, v1, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 172
    const-string v4, "Local"

    invoke-virtual {v3, v2, v1, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->setDefaultKiosk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .locals 1

    .line 123
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 73
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubePlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubePlaylistLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 4

    .line 88
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;

    .line 90
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "sepia_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {v1, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Z)V

    return-object v1
.end method

.method public getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 1

    .line 78
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeSearchQueryHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeSearchQueryHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 129
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 58
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;

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

    .line 95
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSuggestionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-object v0
.end method

.method public setInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    return-void
.end method
