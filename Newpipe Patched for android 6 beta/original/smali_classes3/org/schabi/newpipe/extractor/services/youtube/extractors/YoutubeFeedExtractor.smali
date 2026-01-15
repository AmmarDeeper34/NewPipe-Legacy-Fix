.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;
.super Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
.source "YoutubeFeedExtractor.java"


# instance fields
.field private document:Lorg/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 3

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.youtube.com/channel/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > entry"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 52
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 53
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedInfoItemExtractor;

    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > author > name"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, ""

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > author > uri"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 70
    const-string v1, ""

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v2, "feed > link[rel*=alternate]"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    return-void

    .line 41
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "Could not get feed: 404 - not found"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
