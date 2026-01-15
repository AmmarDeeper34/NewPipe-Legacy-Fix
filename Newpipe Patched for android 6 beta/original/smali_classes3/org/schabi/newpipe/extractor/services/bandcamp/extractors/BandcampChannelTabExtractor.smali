.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;
.super Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
.source "BandcampChannelTabExtractor.java"


# instance fields
.field private discography:Lcom/grack/nanojson/JsonArray;

.field private final filter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 28
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "albums"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "tracks"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    const-string p1, "track"

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->filter:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported channel tab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_1
    const-string p1, "album"

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->filter:Ljava/lang/String;

    return-void
.end method

.method public static fromDiscography(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;
    .locals 1

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 46
    iput-object p2, v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->discography:Lcom/grack/nanojson/JsonArray;

    return-object v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5

    .line 61
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 63
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->discography:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 65
    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    if-nez v3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 70
    const-string v3, "item_type"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->filter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    const-string v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "track"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampDiscographStreamInfoItemExtractor;

    .line 79
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampDiscographStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;

    .line 83
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 88
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->discography:Lcom/grack/nanojson/JsonArray;

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getArtistDetails(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "discography"

    .line 54
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->discography:Lcom/grack/nanojson/JsonArray;

    :cond_0
    return-void
.end method
