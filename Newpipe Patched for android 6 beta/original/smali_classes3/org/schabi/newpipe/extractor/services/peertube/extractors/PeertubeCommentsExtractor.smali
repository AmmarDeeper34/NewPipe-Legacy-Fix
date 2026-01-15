.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "PeertubeCommentsExtractor.java"


# instance fields
.field private isReply:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    return-void
.end method

.method private collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 8

    .line 70
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_0

    .line 74
    move-object v3, v0

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 75
    const-string v0, "isDeleted"

    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v2, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;

    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 9

    .line 85
    const-string v0, "children"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    .line 89
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 90
    const-string v2, "comment"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 91
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    .line 92
    const-string v1, "isDeleted"

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v3, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;

    .line 94
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v8

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {p1, v3}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isReply()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/videos/watch/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/comment-threads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    .line 49
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?start=0&count=12"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    if-eqz p1, :cond_5

    .line 103
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 110
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v1

    const-string v2, "children"

    if-nez v1, :cond_4

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json data for comments info"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 120
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->validate(Lcom/grack/nanojson/JsonObject;)V

    .line 121
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 126
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    goto :goto_2

    .line 122
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    .line 123
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    goto :goto_2

    .line 129
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Unable to get PeerTube kiosk info"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 134
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    .line 136
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_2
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 144
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getNextPage(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 138
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json data for nested comments  info"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 104
    :cond_5
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
