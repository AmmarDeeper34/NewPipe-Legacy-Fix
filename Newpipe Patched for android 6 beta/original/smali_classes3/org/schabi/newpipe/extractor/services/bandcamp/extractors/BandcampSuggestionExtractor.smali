.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor;
.super Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.source "BandcampSuggestionExtractor.java"


# direct methods
.method public static synthetic $r8$lambda$UDvKjKG4EayA2tLdCnei0GRU1Vs(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-void
.end method


# virtual methods
.method public suggestionList(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 34
    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    .line 37
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v2

    const-string v3, "https://bandcamp.com/api/bcsearch_public_api/1/autocomplete_elastic"

    .line 40
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v5

    check-cast v5, Lcom/grack/nanojson/JsonStringWriter;

    const-string v6, "fan_id"

    const/4 v7, 0x0

    .line 43
    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v5

    check-cast v5, Lcom/grack/nanojson/JsonStringWriter;

    const-string v6, "full_page"

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v5

    check-cast v5, Lcom/grack/nanojson/JsonStringWriter;

    const-string v6, "search_filter"

    const-string v7, ""

    .line 45
    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v5

    check-cast v5, Lcom/grack/nanojson/JsonStringWriter;

    const-string v6, "search_text"

    .line 46
    invoke-virtual {v5, v6, p1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    .line 47
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    .line 48
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 38
    invoke-virtual {v1, v3, v4, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {v2, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 51
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "results"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 52
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 53
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 54
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    .line 56
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 58
    :catch_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
