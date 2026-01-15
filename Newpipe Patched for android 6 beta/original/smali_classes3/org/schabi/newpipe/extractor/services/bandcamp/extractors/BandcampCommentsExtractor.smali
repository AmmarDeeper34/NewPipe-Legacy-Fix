.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "BandcampCommentsExtractor.java"


# instance fields
.field private document:Lorg/jsoup/nodes/Document;


# direct methods
.method public static synthetic $r8$lambda$9z8NCa4VHnhELOTweKlO8BM7OiI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p1
.end method

.method public static synthetic $r8$lambda$H4n1kIpsRdGYssdNDD-5PC66D0g()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 122
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get token"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$qDwNZBuAI5CU5UmwaQ86YoPGzEU(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "token"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private fetchReviewsData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 6

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    const-string v1, "https://bandcamp.com/api/tralbumcollectors/2/reviews"

    .line 103
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 104
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v3

    check-cast v3, Lcom/grack/nanojson/JsonStringWriter;

    const-string v4, "tralbum_type"

    const-string v5, "t"

    .line 105
    invoke-virtual {v3, v4, v5}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v3

    check-cast v3, Lcom/grack/nanojson/JsonStringWriter;

    const-string v4, "tralbum_id"

    .line 106
    invoke-virtual {v3, v4, p1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "token"

    .line 107
    invoke-virtual {p1, v3, p2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string p2, "count"

    const/4 v3, 0x7

    .line 108
    invoke-virtual {p1, p2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string p2, "exclude_fan_ids"

    .line 109
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    .line 110
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 101
    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 112
    :goto_0
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not fetch reviews"

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getNextPageToken(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;
    .locals 2

    .line 117
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 118
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 119
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 120
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 121
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 122
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getTrackId()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "meta[name=bc-page-properties]"

    .line 127
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "content"

    .line 128
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 129
    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 7

    .line 53
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 55
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v2, "collectors-data"

    .line 56
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "data-blob"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 57
    const-string v2, "reviews"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 60
    new-instance v5, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_0

    .line 64
    :cond_0
    const-string v3, "more_reviews_available"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    .line 68
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->getTrackId()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->getNextPageToken(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    new-instance v4, Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v1, v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v0, v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v3
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 7

    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 81
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-direct {p0, v1, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->fetchReviewsData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 83
    const-string v2, "results"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 86
    new-instance v5, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_0

    .line 90
    :cond_0
    const-string v3, "more_available"

    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    .line 94
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    new-instance v3, Lorg/schabi/newpipe/extractor/Page;

    .line 95
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->getNextPageToken(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0, v3}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->document:Lorg/jsoup/nodes/Document;

    return-void
.end method
