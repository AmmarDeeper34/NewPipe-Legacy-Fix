.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "PeertubeStreamExtractor.java"


# instance fields
.field private final audioStreams:Ljava/util/List;

.field private final baseUrl:Ljava/lang/String;

.field private json:Lcom/grack/nanojson/JsonObject;

.field private final subtitles:Ljava/util/List;

.field private subtitlesException:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field private final videoStreams:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$MnQSxY1CPTlwI4ZkPStmL4jH9sQ(Lorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;)Z
    .locals 0

    .line 266
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_q-JQMWAOqLY39pa1p_goPeBiAs(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 3

    .line 487
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;-><init>()V

    const-string v1, "id"

    const/4 v2, -0x1

    .line 488
    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v0

    .line 489
    const-string v1, "playlistUrl"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p0

    .line 491
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 492
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 493
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitles:Ljava/util/List;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitlesException:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 72
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method private addNewAudioStream(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 591
    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 596
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    new-instance v5, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    sget-object v6, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 597
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v5

    .line 598
    invoke-virtual {v5, p5, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v5

    .line 599
    invoke-virtual {v5, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 600
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v5

    .line 601
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v5

    .line 596
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {p6}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    .line 607
    invoke-direct {p0, p1, p4, v0, p5}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getHlsPlaylistUrlFromFragmentedFileUrl(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 611
    :cond_0
    invoke-direct {p0, p1, p6}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getHlsPlaylistUrlFromMasterPlaylist(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 613
    :goto_0
    new-instance p5, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {p5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 614
    invoke-virtual {p5, v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p5

    .line 615
    invoke-virtual {p5, p2, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p2

    .line 616
    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p2

    .line 617
    invoke-virtual {p2, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p2

    .line 618
    invoke-virtual {p2, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p2

    .line 619
    invoke-virtual {p2, p6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setManifestUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p2

    .line 620
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p2

    .line 621
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    invoke-static {p2, p5}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 622
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_1
    const-string p2, "torrentUrl"

    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 629
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    new-instance p5, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {p5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 630
    invoke-virtual {p5, p3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p3

    .line 631
    invoke-virtual {p3, p1, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p1

    .line 632
    invoke-virtual {p1, p6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object p1

    .line 635
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p1

    .line 629
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private addNewVideoStream(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 645
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 646
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v8

    .line 647
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 652
    const-string v11, "hasAudio"

    invoke-virtual {v1, v11}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 653
    invoke-virtual {v1, v11}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 656
    :goto_0
    iget-object v12, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    new-instance v13, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    invoke-direct {v13}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;-><init>()V

    sget-object v14, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 657
    invoke-virtual {v13, v14}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v13

    .line 658
    invoke-virtual {v13, v4, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v13

    .line 659
    invoke-virtual {v13, v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v13

    .line 660
    invoke-virtual {v13, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v13

    .line 661
    invoke-virtual {v13, v8}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v13

    .line 662
    invoke-virtual {v13}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v13

    .line 656
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz p2, :cond_1

    .line 667
    invoke-direct {v0, v1, v3, v6, v4}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getHlsPlaylistUrlFromFragmentedFileUrl(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 669
    :cond_1
    invoke-direct {v0, v1, v5}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getHlsPlaylistUrlFromMasterPlaylist(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    :goto_1
    new-instance v6, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;-><init>()V

    sget-object v12, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 672
    invoke-virtual {v6, v13}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v6

    .line 673
    invoke-virtual {v6, v4, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 674
    invoke-virtual {v4, v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 675
    invoke-virtual {v4, v12}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 676
    invoke-virtual {v4, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 677
    invoke-virtual {v4, v8}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 678
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setManifestUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v4

    .line 679
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v4

    .line 680
    iget-object v5, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    invoke-static {v4, v5}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 681
    iget-object v5, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_2
    const-string v4, "torrentUrl"

    invoke-static {v1, v4}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 688
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    new-instance v5, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    invoke-direct {v5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;-><init>()V

    sget-object v6, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-virtual {v5, v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v3

    .line 690
    invoke-virtual {v3, v1, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 692
    invoke-virtual {v1, v6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 693
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 694
    invoke-virtual {v1, v8}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v1

    .line 688
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private collectStreamsFrom(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    .line 406
    :try_start_0
    const-string v0, "data"

    invoke-static {p2, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 412
    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_0

    .line 413
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 414
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 408
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not extract related videos"

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private extractLiveVideoStreams()V
    .locals 3

    .line 483
    const-class v0, Lcom/grack/nanojson/JsonObject;

    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "streamingPlaylists"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 484
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 485
    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 486
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 487
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    .line 498
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 500
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get video streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fetchSubApiContent(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 712
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    .line 713
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/videos/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 718
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 723
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 728
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 730
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json data for segments"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 724
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 725
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get segments from API. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get segments from API."

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHlsPlaylistUrlFromFragmentedFileUrl(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 571
    const-string v0, "fileDownloadUrl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 572
    const-string p2, "fileUrl"

    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 574
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-fragmented."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".m3u8"

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHlsPlaylistUrlFromMasterPlaylist(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 581
    const-string v0, "resolution.id"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getNumber(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 581
    const-string v0, "master"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRelatedItemsUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 376
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/search/videos"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v2, "start=0&count=8&sort=-createdAt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    const-string v3, "&tagsOneOf="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStreams()V
    .locals 5

    .line 506
    const-class v0, Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "files"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const-string v3, ""

    invoke-direct {p0, v1, v3}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamsFromArray(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    .line 513
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v3, "streamingPlaylists"

    .line 510
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 511
    new-instance v3, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 512
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 513
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 514
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    const-string v4, "playlistUrl"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamsFromArray(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void

    .line 517
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;)V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 389
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json data for related videos"

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 398
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->collectStreamsFrom(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    :cond_1
    return-void
.end method

.method private getStreamsFromArray(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    .locals 10

    .line 531
    const-class v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "fileUrl"

    :try_start_0
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-master.m3u8"

    .line 532
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 534
    :goto_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 535
    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 536
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 537
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    .line 541
    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "fileDownloadUrl"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 540
    :goto_2
    :try_start_1
    invoke-static {v4, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    .line 547
    :cond_2
    const-string v0, "resolution.label"

    invoke-static {v4, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 548
    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 550
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v3, p0

    move-object v9, p2

    .line 552
    invoke-direct/range {v3 .. v9}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->addNewAudioStream(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v3, p0

    move-object v9, p2

    .line 556
    invoke-direct/range {v3 .. v9}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->addNewVideoStream(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move-object p2, v9

    goto :goto_1

    :cond_5
    :goto_5
    return-void

    .line 561
    :goto_6
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get streams from array"

    invoke-direct {p2, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private loadSubtitles()V
    .locals 7

    .line 451
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v1/videos/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/captions"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 456
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 457
    const-string v1, "data"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 459
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    .line 460
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 461
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    const-string v3, "captionPath"

    invoke-static {v1, v3}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    const-string v3, "language.id"

    invoke-static {v1, v3}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 465
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 466
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitles:Ljava/util/List;

    new-instance v6, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;-><init>()V

    .line 467
    invoke-virtual {v6, v2, v4}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v2

    .line 468
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v2

    .line 469
    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setLanguageCode(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 470
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setAutoGenerated(Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    move-result-object v1

    .line 466
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 476
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get subtitles"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitlesException:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    :cond_1
    return-void
.end method

.method private setInitialData(Ljava/lang/String;)V
    .locals 2

    .line 440
    const-string v0, "Could not extract PeerTube stream data"

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 447
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->validate(Lcom/grack/nanojson/JsonObject;)V

    return-void

    .line 445
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 442
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "nsfw"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getBoolean(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioStreams()Ljava/util/List;
    .locals 2

    .line 213
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 222
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreams()V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .line 766
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "category.label"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 6

    .line 96
    const-string v0, "description"

    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_0

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    .line 104
    :try_start_1
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api/v1/videos/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/description"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v3

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 108
    invoke-static {v2, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :catch_0
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 98
    :catch_1
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getDislikeCount()J
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "dislikes"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 13

    .line 340
    const-string v0, "storyboards"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    :try_start_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->fetchSubApiContent(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 350
    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    if-eqz v3, :cond_0

    .line 351
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 352
    const-string v3, "storyboardPath"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    const-string v4, "spriteWidth"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 354
    const-string v4, "spriteHeight"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 355
    const-string v4, "totalWidth"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 356
    const-string v5, "totalHeight"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 357
    div-int v11, v4, v7

    .line 358
    div-int v12, v5, v8

    mul-int v9, v11, v12

    .line 360
    const-string v4, "spriteDuration"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v10, v2, 0x3e8

    .line 362
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/Frameset;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v5 .. v12}, Lorg/schabi/newpipe/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    .line 362
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 345
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Could not get frames"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 4

    .line 201
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 203
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v2, ""

    const-string v3, "playlistUrl"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    .line 204
    const-string v1, "files"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "streamingPlaylists"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 743
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.host"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .locals 3

    .line 778
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "language.id"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 2

    .line 772
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "licence.label"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "likes"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 737
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "name"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 2

    .line 749
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 759
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    .line 757
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    .line 755
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    .line 753
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    .line 751
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    .locals 4

    .line 278
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getTags()Ljava/util/List;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.name"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v3, "account.host"

    .line 282
    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/accounts/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/videos?start=0&count=8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getRelatedItemsUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 292
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 293
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;)V

    return-object v1
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 7

    .line 317
    const-string v0, "chapters"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    :try_start_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->fetchSubApiContent(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 326
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 327
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 328
    new-instance v4, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    const-string v5, "title"

    .line 329
    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timecode"

    .line 330
    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v5, v3}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    .line 328
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 322
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get stream segments"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "isLive"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getAvatarsFromOwnerAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channel.displayName"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channel.url"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitlesException:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitles:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;)V

    .line 266
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 267
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 263
    :cond_0
    throw v0
.end method

.method public getSubtitlesDefault()Ljava/util/List;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitlesException:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->subtitles:Ljava/util/List;

    return-object v0

    .line 254
    :cond_0
    throw v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .locals 2

    .line 308
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "support"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getStringListFromJsonArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publishedAt"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getThumbnailsFromPlaylistOrVideoItem(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 5

    .line 133
    const-string v0, "((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)"

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

    .line 82
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromInstant(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 3

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getAvatarsFromOwnerAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.displayName"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 5

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1

    .line 247
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 234
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->getStreams()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->extractLiveVideoStreams()V

    .line 242
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->json:Lcom/grack/nanojson/JsonObject;

    const-string v1, "views"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 427
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->baseUrl:Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/videos/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->setInitialData(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;->loadSubtitles()V

    return-void

    .line 432
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not extract PeerTube channel data"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
