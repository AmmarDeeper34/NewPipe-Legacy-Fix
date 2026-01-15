.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;
.super Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
.source "BandcampPlaylistExtractor.java"


# instance fields
.field private albumJson:Lcom/grack/nanojson/JsonObject;

.field private document:Lorg/jsoup/nodes/Document;

.field private name:Ljava/lang/String;

.field private trackInfo:Lcom/grack/nanojson/JsonArray;


# direct methods
.method public static synthetic $r8$lambda$Dt5Vlq8r_ydR1tEL6hbYJ7Y0L-g(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 5

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "trackInfo"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 127
    const-string v1, "tralbum-about"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 128
    const-string v2, "tralbum-credits"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v3, "license"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 130
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 131
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 125
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not find trackInfo in document"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    .line 150
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    const/4 v1, 0x0

    .line 152
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 157
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;

    .line 158
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 157
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    goto :goto_1

    .line 161
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;

    .line 162
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/util/List;)V

    .line 161
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStreamCount()J
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "art_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageId(JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "band-photo"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const-string v1, ""

    .line 107
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 92
    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->document:Lorg/jsoup/nodes/Document;

    .line 61
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->getAlbumInfoJson(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 62
    const-string v1, "trackinfo"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    .line 65
    :try_start_0
    const-string v0, "data-embed"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getJsonData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "album_title"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->name:Ljava/lang/String;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistExtractor;->trackInfo:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "Album needs to be purchased"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 69
    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "JSON does not exist"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 67
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Faulty JSON; page likely does not contain album data"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
