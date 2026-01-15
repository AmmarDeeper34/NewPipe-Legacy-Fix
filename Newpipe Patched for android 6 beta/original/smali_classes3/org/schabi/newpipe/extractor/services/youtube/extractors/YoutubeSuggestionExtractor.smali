.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;
.super Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.source "YoutubeSuggestionExtractor.java"


# direct methods
.method public static synthetic $r8$lambda$0PGvmjYVxwmCSZRt0DstWIX5JkA(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_5evLeyiC2RQwIrDEUkZFevPRv8(Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-void
.end method


# virtual methods
.method public suggestionList(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 56
    const-class v0, Lcom/grack/nanojson/JsonArray;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://suggestqueries-clients6.youtube.com/complete/search?client=youtube&ds=yt&gl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&q="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&xhr=t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v2, "https://www.youtube.com"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Origin"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "Referer"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 67
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getArray(I)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 85
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 86
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 87
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 88
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 89
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse JSON response"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 77
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Empty response received"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 71
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response type (got \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", excepted a JSON response) (response code "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
