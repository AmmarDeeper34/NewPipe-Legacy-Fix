.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "MediaCCCSearchExtractor.java"


# instance fields
.field private conferenceKiosk:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;

.field private doc:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 2

    .line 39
    const-string v0, "conferences"

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    .line 41
    :try_start_0
    new-instance p2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;

    .line 42
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->conferenceKiosk:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private searchConferences(Ljava/lang/String;Ljava/util/List;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V
    .locals 3

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 128
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;-><init>(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5

    .line 70
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 72
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    const-string v2, "conferences"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "all"

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->conferenceKiosk:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;

    .line 76
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-direct {p0, v1, v3, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->searchConferences(Ljava/lang/String;Ljava/util/List;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    const-string v3, "events"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->doc:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 88
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "release_date"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 89
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;

    .line 90
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 89
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 64
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 99
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public isCorrectedSearch()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const-string v1, "events"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "all"

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 112
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->doc:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    const-string v0, "conferences"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 119
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 120
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->conferenceKiosk:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceKiosk;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Could not parse JSON."

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
