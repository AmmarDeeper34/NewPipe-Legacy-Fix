.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;
.super Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;
.source "BandcampRadioStreamExtractor.java"


# instance fields
.field private showInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$tPbQYZWbeLeZaQdqfOEp14WKmFw()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 92
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method

.method static query(I)Lcom/grack/nanojson/JsonObject;
    .locals 4

    .line 52
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://bandcamp.com/api/bcweekly/1/get?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "could not get show data"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAudioStreams()Ljava/util/List;
    .locals 5

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v2, "audio_stream"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 131
    const-string v2, "mp3-128"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 133
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v3

    .line 134
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 135
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v2

    const/16 v3, 0x80

    .line 136
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v2

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    const-string v2, "opus-lo"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 142
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v3

    .line 143
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 144
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 145
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, ""

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 118
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "audio_duration"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 7

    .line 154
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 158
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    const-string v4, "title"

    .line 159
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timecode"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    .line 161
    const-string v4, "track_art_id"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImageUrl(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    .line 162
    const-string v4, "artist"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setChannelName(Ljava/lang/String;)V

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 186
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "published_date"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "show_image_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageId(JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 4

    .line 110
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    const/16 v1, 0x200

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "image_caption"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;-><init>()V

    .line 90
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 92
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    const-string v1, "Fan pages are not supported"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->query(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->showInfo:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
