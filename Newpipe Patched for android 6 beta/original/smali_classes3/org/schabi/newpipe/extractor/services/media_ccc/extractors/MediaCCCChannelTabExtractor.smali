.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;
.super Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
.source "MediaCCCChannelTabExtractor.java"


# instance fields
.field private conferenceData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$5fzYkuzFOvWg0Zrz5I1PBwpJk78(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 61
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 39
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 54
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 56
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "events"

    .line 57
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v3}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 60
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V

    .line 61
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 62
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 67
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->fetchConferenceData(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCChannelTabExtractor;->conferenceData:Lcom/grack/nanojson/JsonObject;

    :cond_0
    return-void
.end method
