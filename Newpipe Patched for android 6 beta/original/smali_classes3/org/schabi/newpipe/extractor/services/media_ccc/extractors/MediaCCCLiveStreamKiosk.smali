.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKiosk;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "MediaCCCLiveStreamKiosk.java"


# instance fields
.field private doc:Lcom/grack/nanojson/JsonArray;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 11

    .line 38
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKiosk;->doc:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 40
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKiosk;->doc:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 41
    const-string v4, "isCurrentlyStreaming"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    const-string v4, "groups"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 43
    :goto_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 44
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "group"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "rooms"

    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 46
    :goto_2
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 47
    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v9

    .line 48
    new-instance v10, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;

    invoke-direct {v10, v3, v6, v9}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v10}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "live"

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 61
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getLiveStreams(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKiosk;->doc:Lcom/grack/nanojson/JsonArray;

    return-void
.end method
