.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SoundcloudStreamExtractor.java"


# instance fields
.field private isAvailable:Z

.field private track:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$6RdOFb5TeOgm4q7ZUG4i4obDTzU(Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    :try_start_0
    const-string v1, "preset"

    const-string v2, " "

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v2, "format"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v2, "protocol"

    .line 219
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 221
    const-string v2, "encrypted"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 227
    :cond_1
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 228
    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v2

    .line 230
    const-string v3, "hls"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 231
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v2, p2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 234
    :cond_2
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->getTranscodingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {v2, p0, p2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 236
    const-string p0, "mp3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 237
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    const/16 p0, 0x80

    .line 238
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    goto :goto_0

    .line 239
    :cond_3
    const-string p0, "opus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 240
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    const/16 p0, 0x40

    .line 241
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    goto :goto_0

    .line 242
    :cond_4
    const-string p0, "aac_160k"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 243
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    const/16 p0, 0xa0

    .line 244
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 250
    :goto_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    .line 251
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 252
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->isAvailable:Z

    return-void
.end method

.method private extractAudioStreams(Lcom/grack/nanojson/JsonArray;Ljava/util/List;)V
    .locals 2

    .line 207
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 208
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 209
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;Ljava/util/List;)V

    .line 210
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getTranscodingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 187
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?client_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "track_authorization"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&track_authorization="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 197
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 199
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse streamable URL"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAudioStreams()Ljava/util/List;
    .locals 3

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v2, "streamable"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->isAvailable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v2, "media"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "transcodings"

    .line 172
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->extractAudioStreams(Lcom/grack/nanojson/JsonArray;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Could not get audio streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "genre"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    .line 112
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 4

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "license"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLikeCount()J
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "likes_count"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "sharing"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    .locals 5

    .line 279
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 280
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api-v2.soundcloud.com/tracks/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/related?client_id="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 273
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 12

    .line 308
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "tag_list"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v8, v0, v6

    .line 313
    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_0

    .line 314
    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    if-eqz v7, :cond_2

    .line 317
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 318
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 325
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromTrackObject(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 5

    .line 122
    const-string v0, "(#t=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTimestampSeconds(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->parseDate(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAvatarUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUploaderName(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUploaderUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1

    .line 268
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 1

    .line 263
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playback_count"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUploaderVerified()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "verified"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->resolveFor(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->track:Lcom/grack/nanojson/JsonObject;

    .line 62
    const-string v0, "policy"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string v0, "ALLOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MONETIZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->isAvailable:Z

    .line 66
    const-string v0, "SNIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "BLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    const-string v0, "This track is not available in user\'s country"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content not available: policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method
