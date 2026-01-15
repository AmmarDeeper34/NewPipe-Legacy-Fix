.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "BandcampStreamExtractor.java"


# instance fields
.field private albumJson:Lcom/grack/nanojson/JsonObject;

.field private current:Lcom/grack/nanojson/JsonObject;

.field private document:Lorg/jsoup/nodes/Document;


# direct methods
.method public static synthetic $r8$lambda$amz2Z26z-mIHCbaz8DKhJsw3PJA(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;
    .locals 1

    .line 204
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ihluonOm5uck0xNdPs4trhOEGqE(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method

.method public static getAlbumInfoJson(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 80
    :try_start_0
    const-string v0, "data-tralbum"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getJsonData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "JSON does not exist"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 82
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Faulty JSON; page likely does not contain album data"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAudioStreams()Ljava/util/List;
    .locals 4

    .line 156
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 157
    const-string v1, "mp3-128"

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v3, "trackinfo"

    .line 158
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "file"

    .line 160
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 162
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 163
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "tralbum-tags"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 204
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;-><init>()V

    .line 205
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const-string v1, ""

    .line 207
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 4

    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v1, "about"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v2, "lyrics"

    .line 150
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v3, "credits"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "\n\n"

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->nonEmptyAndNullJoin(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getLength()J
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "trackinfo"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "duration"

    .line 170
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v1, "license_type"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    const-string v0, "Unknown"

    return-object v0

    .line 233
    :pswitch_1
    const-string v0, "CC BY-SA 3.0"

    return-object v0

    .line 231
    :pswitch_2
    const-string v0, "CC BY 3.0"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "CC BY-ND 3.0"

    return-object v0

    .line 227
    :pswitch_4
    const-string v0, "CC BY-NC 3.0"

    return-object v0

    .line 225
    :pswitch_5
    const-string v0, "CC BY-NC-SA 3.0"

    return-object v0

    .line 223
    :pswitch_6
    const-string v0, "CC BY-NC-ND 3.0"

    return-object v0

    .line 221
    :pswitch_7
    const-string v0, "All rights reserved \u00a9"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;
    .locals 3

    .line 190
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;-><init>(I)V

    .line 191
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v2, "recommended-album"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 193
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 194
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 185
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 3

    .line 242
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "itemprop"

    const-string v2, "keywords"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;-><init>()V

    .line 244
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 245
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publish_date"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "art_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageId(JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->parseDate(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "band-photo"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 141
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const-string v1, ""

    .line 143
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 99
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

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1

    .line 180
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 1

    .line 175
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->document:Lorg/jsoup/nodes/Document;

    .line 58
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->getAlbumInfoJson(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 59
    const-string v0, "current"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->current:Lcom/grack/nanojson/JsonObject;

    .line 61
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    const-string v0, "trackinfo"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->albumJson:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "This track is not available without being purchased"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Page is actually an album, not a track"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
