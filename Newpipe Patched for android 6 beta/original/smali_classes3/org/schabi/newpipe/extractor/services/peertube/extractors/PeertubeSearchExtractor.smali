.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "PeertubeSearchExtractor.java"


# instance fields
.field private final sepia:Z


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    .line 46
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;->sepia:Z

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    .line 69
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&start=0&count=12"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 63
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json data for search info"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 92
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->validate(Lcom/grack/nanojson/JsonObject;)V

    .line 93
    const-string v1, "total"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 95
    new-instance v3, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;->sepia:Z

    invoke-static {v3, v0, v4, v5}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->collectItemsFrom(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Z)V

    .line 98
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 99
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getNextPage(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0

    .line 101
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Unable to get PeerTube search info"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 52
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
    .locals 0

    .line 0
    return-void
.end method
