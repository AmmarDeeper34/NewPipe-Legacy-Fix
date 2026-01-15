.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;
.super Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampStreamInfoItemExtractor;
.source "BandcampPlaylistStreamInfoItemExtractor.java"


# instance fields
.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;

.field private substituteCovers:Ljava/util/List;

.field private final track:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 36
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->substituteCovers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampStreamInfoItemExtractor;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->track:Lcom/grack/nanojson/JsonObject;

    .line 28
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 29
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->substituteCovers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->substituteCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 78
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 80
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not download cover art location"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->substituteCovers:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampPlaylistStreamInfoItemExtractor;->track:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title_link"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampStreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
