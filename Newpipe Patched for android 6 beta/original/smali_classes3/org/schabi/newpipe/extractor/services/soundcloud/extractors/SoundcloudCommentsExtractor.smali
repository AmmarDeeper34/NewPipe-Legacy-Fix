.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "SoundcloudCommentsExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private collectStreamsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonArray;)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 76
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5

    .line 52
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 65
    const-string v1, "collection"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsExtractor;->collectStreamsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonArray;)V

    .line 66
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    const-string v3, "next_href"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsExtractor;->getPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudCommentsExtractor;->getPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0

    .line 0
    return-void
.end method
