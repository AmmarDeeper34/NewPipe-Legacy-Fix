.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "MediaCCCRecentKiosk.java"


# instance fields
.field private doc:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$D1fXIaAJj6O_2-9sHr6E6Pp_7Js(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;)Z
    .locals 4

    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk;->doc:Lcom/grack/nanojson/JsonObject;

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 55
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda1;-><init>()V

    .line 56
    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 58
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    .line 60
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v3}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 62
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda2;-><init>()V

    .line 63
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda3;-><init>()V

    .line 65
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 66
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 68
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "recent"

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 74
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 39
    const-string v0, "https://api.media.ccc.de/public/events/recent"

    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 39
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk;->doc:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Could not parse json."

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
