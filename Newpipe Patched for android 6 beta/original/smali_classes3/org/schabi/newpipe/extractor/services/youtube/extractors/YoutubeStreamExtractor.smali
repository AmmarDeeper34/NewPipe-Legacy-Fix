.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "YoutubeStreamExtractor.java"


# static fields
.field private static fetchIosClient:Z

.field private static poTokenProvider:Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;


# instance fields
.field private ageLimit:I

.field private androidCpn:Ljava/lang/String;

.field private androidStreamingData:Lcom/grack/nanojson/JsonObject;

.field private androidStreamingUrlsPoToken:Ljava/lang/String;

.field private html5Cpn:Ljava/lang/String;

.field private html5StreamingData:Lcom/grack/nanojson/JsonObject;

.field private html5StreamingUrlsPoToken:Ljava/lang/String;

.field private iosCpn:Ljava/lang/String;

.field private iosStreamingData:Lcom/grack/nanojson/JsonObject;

.field private iosStreamingUrlsPoToken:Ljava/lang/String;

.field private nextResponse:Lcom/grack/nanojson/JsonObject;

.field private playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerResponse:Lcom/grack/nanojson/JsonObject;

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field private videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$01xeIZ-QZ3EK0cgo4FFlxohh3sI(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 480
    const-string v0, "segmentedLikeDislikeButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 481
    const-string v0, "likeButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 482
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 483
    const-string v0, "toggleButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 484
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "defaultButtonViewModel"

    .line 485
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "buttonViewModel"

    .line 486
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1U_u-dDQDlrHRfv7QV-s_bLPtqI(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;)Lj$/util/Optional;
    .locals 1

    .line 227
    const-string v0, "dd MMM yyyy"

    .line 227
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7OrY9lnnCXTD2CBbaCRZZWHjglk(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 1624
    const-string v0, "engagementPanelSectionListRenderer"

    .line 1625
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    .line 1626
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "macroMarkersListRenderer"

    .line 1627
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    .line 1628
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8hXX0SKtG7rurTx8IdTxijoMwQY(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 313
    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9YsqYravCDa0gwNRSOjs-U7H3MQ(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1619
    const-string v0, "engagementPanelSectionListRenderer"

    .line 1621
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "panelIdentifier"

    .line 1622
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1619
    const-string v0, "engagement-panel-macro-markers-description-chapters"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CUW_QxMdcDHTgox-W6VcjXJUDU8(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 2

    .line 307
    const-string v0, "runs"

    .line 308
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 309
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 311
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 312
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GFSFsTj6jn7lDtv-EqJa_6kRcEg(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3

    .line 230
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse upload date \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$KDW9ISwiHx99uDepVAehh4KHNgk(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 487
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$MBwqI4ttgoT8thaj7bN0aZoEisM(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1169
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OC58NASRpMrYbolBK29KNxBjBM0(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 2

    .line 300
    const-string v0, "metadataRowRenderer"

    .line 301
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    .line 302
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 303
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 305
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 306
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QQTRf6ZYEI4HaKADK_xJ1OALAiU(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/InfoItemExtractor;
    .locals 2

    .line 786
    const-string v0, "compactVideoRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    .line 788
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    return-object v1

    .line 789
    :cond_0
    const-string v0, "compactRadioRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;

    .line 791
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 792
    :cond_1
    const-string v0, "compactPlaylistRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;

    .line 794
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 795
    :cond_2
    const-string v0, "lockupViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 796
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 797
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    const-string v1, "LOCKUP_CONTENT_TYPE_PLAYLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "LOCKUP_CONTENT_TYPE_PODCAST"

    .line 799
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 802
    :cond_3
    const-string v1, "LOCKUP_CONTENT_TYPE_VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 803
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;

    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    return-object v0

    .line 800
    :cond_4
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RE5YOS9BvaXfyi16ez5i0h-KlhQ(Lj$/time/LocalDate;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    .line 228
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Lj$/time/LocalDate;->atStartOfDay()Lj$/time/LocalDateTime;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/LocalDateTime;Z)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$UWRwLt9cSqw3UjZUMdDe6tr8IU0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 426
    const-string v0, "segmentedLikeDislikeButtonRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "likeButton"

    .line 427
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "toggleButtonRenderer"

    .line 428
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VI4LSIxgPFVbRgFnwAulOQksnfY(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1353
    :try_start_0
    const-string v0, "itag"

    invoke-virtual {p5, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v4

    .line 1354
    iget-object v5, v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v5, p1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v3, p5

    .line 1355
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->buildAndAddItagInfoToList(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YJx5RdevKezTHh4mKPRRM7E6nn8(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 1

    .line 1211
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZNzVNLMzal9qxvTHvW144IgRF_M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1642
    const-string v0, "macroMarkersListItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dGG_9zY5DQ5CBWFRcKsEPoYZIGk(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    .line 1253
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 1254
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1255
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1256
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1257
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAverageBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1258
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAudioTrackId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1259
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAudioTrackName(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1260
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAudioLocale(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1261
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v1

    .line 1262
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setItagItem(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    move-result-object v0

    .line 1264
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v1, :cond_0

    .line 1266
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1269
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 1272
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ef2C46wEc98djOlxRQuRPS1xRR4(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 429
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kx4L1oZdAw5V5mGy0flCwwQlYz0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1170
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qIXG58sp5F_Cjogg92Y_oTuobaI(Ljava/lang/String;)Z
    .locals 1

    .line 314
    const-string v0, "Age-restricted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wry0VUk0NJ0IkkFLCIYyeoUA58w(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    .line 1315
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;-><init>()V

    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 1316
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 1317
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 1318
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object v1

    .line 1319
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p1

    .line 1320
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setItagItem(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    move-result-object p1

    .line 1322
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getResolutionString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    const-string v0, ""

    .line 1323
    :goto_0
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    .line 1326
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1329
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    .line 1332
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x0coF5dTZFo2C71qXkaIXIEiVkw(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/utils/Pair;)Lj$/util/stream/Stream;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 1207
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1208
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1202
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getStreamsFromStreamingDataKey(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    const/4 p1, -0x1

    .line 126
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    return-void
.end method

.method private buildAndAddItagInfoToList(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 6

    .line 1375
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1376
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1379
    :cond_0
    const-string v1, "signatureCipher"

    .line 1380
    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    const-string v3, "cipher"

    invoke-virtual {p2, v3, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1386
    :cond_1
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->compatParseMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1387
    const-string v3, "s"

    .line 1388
    invoke-static {v1, v3, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1387
    invoke-static {p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->deobfuscateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1389
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "sp"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    :goto_0
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->getUrlWithThrottlingParameterDeobfuscated(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cpn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_2

    .line 1406
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pot="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1409
    :cond_2
    const-string p5, "initRange"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p5

    .line 1410
    const-string p6, "indexRange"

    invoke-virtual {p2, p6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p6

    .line 1411
    const-string v0, "mimeType"

    invoke-virtual {p2, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1412
    const-string v1, "codecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1413
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 1415
    :goto_1
    const-string v1, "bitrate"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setBitrate(I)V

    .line 1416
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setWidth(I)V

    .line 1417
    const-string v1, "height"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setHeight(I)V

    .line 1418
    const-string v1, "start"

    const-string v4, "-1"

    invoke-virtual {p5, v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitStart(I)V

    .line 1419
    const-string v5, "end"

    invoke-virtual {p5, v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitEnd(I)V

    .line 1420
    invoke-virtual {p6, v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexStart(I)V

    .line 1421
    invoke-virtual {p6, v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexEnd(I)V

    .line 1422
    const-string p5, "quality"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setQuality(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setCodec(Ljava/lang/String;)V

    .line 1424
    const-string p5, "isDrc"

    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5, p6}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIsDrc(Ljava/lang/Boolean;)V

    .line 1425
    const-string p5, "lastModified"

    invoke-virtual {p2, p5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p5

    invoke-virtual {p3, p5, p6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setLastModified(J)V

    .line 1426
    const-string p5, "xtags"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setXtags(Ljava/lang/String;)V

    .line 1428
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p5, p6, :cond_4

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p5, p6, :cond_5

    .line 1429
    :cond_4
    const-string p5, "targetDurationSec"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setTargetDurationSec(I)V

    .line 1432
    :cond_5
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 p6, 0x0

    if-eq p4, p5, :cond_9

    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_6

    goto :goto_2

    .line 1434
    :cond_6
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_a

    .line 1436
    const-string p4, "audioSampleRate"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setSampleRate(I)V

    .line 1437
    const-string p4, "audioChannels"

    const/4 p5, 0x2

    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioChannels(I)V

    .line 1445
    const-string p4, "audioTrack"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p5

    const-string v0, "id"

    .line 1446
    invoke-virtual {p5, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1447
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1448
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackId(Ljava/lang/String;)V

    .line 1449
    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1453
    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 1452
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/utils/LocaleCompat;->forLanguageTag(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object p5

    .line 1454
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda25;

    invoke-direct {v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    invoke-virtual {p5, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1456
    :cond_7
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractAudioTrackType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V

    .line 1459
    :cond_8
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p4

    const-string p5, "displayName"

    .line 1460
    invoke-virtual {p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1459
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackName(Ljava/lang/String;)V

    goto :goto_3

    .line 1433
    :cond_9
    :goto_2
    const-string p4, "fps"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setFps(I)V

    .line 1464
    :cond_a
    :goto_3
    const-string p4, "contentLength"

    const-wide/16 v0, -0x1

    .line 1465
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    .line 1464
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setContentLength(J)V

    .line 1466
    const-string p4, "approxDurationMs"

    .line 1467
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    .line 1466
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setApproxDurationMs(J)V

    .line 1469
    new-instance p4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-direct {p4, p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 1471
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p3, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p1, p3, :cond_b

    .line 1472
    const-string p1, "type"

    invoke-virtual {p2, p1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FORMAT_STREAM_TYPE_OTF"

    .line 1473
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 1472
    invoke-virtual {p4, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    return-object p4

    .line 1480
    :cond_b
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p1, p2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    return-object p4
.end method

.method private static checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V
    .locals 6

    .line 885
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 886
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 890
    :cond_0
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    const-string v2, "login_required"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "This age-restricted video cannot be watched anonymously"

    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    .line 894
    const-string v2, "messages"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 895
    const-string v4, "private"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 896
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    const-string v0, "This video is private"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 898
    :cond_2
    const-string v2, "age"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 899
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 904
    :cond_4
    :goto_0
    const-string v2, "unplayable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    if-eqz v1, :cond_c

    .line 906
    const-string v2, "Music Premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 910
    const-string v2, "payment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 914
    const-string v2, "members-only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 919
    const-string v2, "unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 920
    const-string v0, "errorScreen"

    .line 921
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "playerErrorMessageRenderer"

    .line 922
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "subreason"

    .line 923
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 920
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 924
    const-string v0, "country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 925
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    const-string v0, "This video is not available in client\'s country."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :cond_6
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 929
    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_7
    const-string p0, "age-restricted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    .line 934
    :cond_8
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 915
    :cond_9
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "This video is only available for members of the channel of this video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 911
    :cond_a
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "This video is a paid video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 907
    :cond_b
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;-><init>()V

    throw p0

    .line 940
    :cond_c
    :goto_1
    const-string p0, "\""

    const-string v2, ": \""

    if-eqz v1, :cond_d

    const-string v3, "a bot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 941
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/SignInConfirmNotBotException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YouTube probably temporarily blocked this IP, got error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/exceptions/SignInConfirmNotBotException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_d
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_2
    return-void
.end method

.method private fetchAndroidClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V
    .locals 0

    .line 1032
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    .line 1036
    invoke-static {p2, p1, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getAndroidReelPlayerResponse(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 1044
    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1045
    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 1047
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1048
    const-string p2, "captions"

    .line 1049
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    .line 1050
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private fetchHtml5Client(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;)V
    .locals 3

    .line 954
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5Cpn:Ljava/lang/String;

    .line 956
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getWebMetadataPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 959
    invoke-static {v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->throwExceptionIfPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 963
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 967
    const-string v1, "microformat"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "playerMicroformatRenderer"

    .line 968
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 970
    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 972
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isVideoAgeRestricted(Lcom/grack/nanojson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    invoke-interface {p4, p3}, Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;->getWebEmbedClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;

    :goto_0
    const/4 p4, 0x0

    .line 973
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchHtml5EmbedClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V

    return-void

    .line 977
    :cond_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method private fetchHtml5EmbedClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V
    .locals 6

    .line 1000
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5Cpn:Ljava/lang/String;

    .line 1005
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    .line 1003
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getWebEmbeddedPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 1009
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 1013
    const-string p2, "playabilityStatus"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V

    .line 1015
    invoke-static {p1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1019
    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingData:Lcom/grack/nanojson/JsonObject;

    .line 1020
    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    .line 1021
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    return-void

    .line 1016
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p2, "WEB_EMBEDDED_PLAYER player response is not valid"

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fetchIosClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V
    .locals 1

    .line 1068
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateContentPlaybackNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosCpn:Ljava/lang/String;

    .line 1070
    invoke-static {p2, p1, p3, v0, p4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeStreamHelper;->getIosPlayerResponse(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 1073
    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1074
    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 1076
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1077
    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    .line 1078
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getAudioStreamBuilderHelper()Ljava/util/function/Function;
    .locals 1

    .line 1251
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;)V

    return-object v0
.end method

.method private getDurationFromFirstAdaptiveFormat(Ljava/util/List;)I
    .locals 2

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 338
    const-string v1, "adaptiveFormats"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "approxDurationMs"

    .line 344
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    nop

    goto :goto_0

    .line 351
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get duration"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1182
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5Cpn:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v5, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidCpn:Ljava/lang/String;

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    new-instance v6, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosCpn:Ljava/lang/String;

    iget-object v8, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/schabi/newpipe/extractor/utils/Pair;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-static {v5}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;)V

    .line 1202
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 1209
    invoke-interface {p1, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda3;

    invoke-direct {p2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 1210
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 1218
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " streams"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ManifestUrl"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 662
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 663
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    if-nez p0, :cond_2

    .line 671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?pot="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 679
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private getStreamsFromStreamingDataKey(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lj$/util/stream/Stream;
    .locals 6

    if-eqz p2, :cond_1

    .line 1344
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 1349
    new-instance p3, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p3, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 1350
    new-instance p3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda14;-><init>()V

    .line 1364
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 1345
    :cond_1
    :goto_0
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method private getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 1161
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    .line 1162
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1163
    const-string v2, "results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1164
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1165
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 1166
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1167
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1168
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 1171
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    .line 1172
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    return-object p1
.end method

.method private getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1141
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 1145
    :cond_0
    const-string v0, "videoPrimaryInfoRenderer"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1151
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 1155
    :cond_0
    const-string v0, "videoSecondaryInfoRenderer"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoInfoRenderer(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;
    .locals 1

    .line 1313
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V

    return-object v0
.end method

.method private static isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    .line 1124
    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoId"

    .line 1125
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isVideoAgeRestricted(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 1130
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    const-string v1, ""

    .line 1131
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "age"

    .line 1132
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J
    .locals 4

    .line 423
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 424
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 425
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda17;-><init>()V

    .line 426
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda18;-><init>()V

    .line 429
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 430
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    if-eqz p0, :cond_2

    .line 436
    const-string v0, "accessibilityData"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 438
    const-string v2, "label"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    const-string v3, "accessibility"

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 443
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 449
    const-string v1, "defaultText"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 450
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 451
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 452
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "no likes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    if-eqz v0, :cond_3

    .line 468
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 470
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" as a long"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 464
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get like count from accessibility data"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J
    .locals 4

    .line 477
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 478
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 479
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda15;-><init>()V

    .line 480
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda16;-><init>()V

    .line 487
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 488
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    if-eqz p0, :cond_1

    .line 495
    const-string v0, "accessibilityText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 503
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 505
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" as a long"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 497
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not find buttonViewModel\'s accessibilityText string"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not find buttonViewModel object"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Lj$/util/Optional;
    .locals 1

    .line 237
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object p2

    .line 238
    invoke-static {p1, p2}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 240
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public static setPoTokenProvider(Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;)V
    .locals 0

    .line 1716
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;

    return-void
.end method

.method private setStreamType()V
    .locals 3

    .line 753
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "liveStreamability"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "isPostLiveDvr"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void

    .line 758
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method

.method private static throwExceptionIfPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 984
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->isPlayerResponseNotValid(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 990
    :cond_0
    const-string p1, "playabilityStatus"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->checkPlayabilityStatus(Lcom/grack/nanojson/JsonObject;)V

    .line 991
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "WEB player response is not valid"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 3

    .line 288
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    .line 293
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    .line 294
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rows"

    .line 295
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 299
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda9;-><init>()V

    .line 300
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda10;-><init>()V

    .line 307
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda11;-><init>()V

    .line 313
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda12;-><init>()V

    .line 314
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 316
    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    return v0
.end method

.method public getAudioStreams()Ljava/util/List;
    .locals 4

    .line 684
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 685
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 686
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getAudioStreamBuilderHelper()Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "audio"

    .line 685
    const-string v3, "adaptiveFormats"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 3

    .line 1572
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "category"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 4

    .line 623
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 626
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/schabi/newpipe/extractor/utils/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 628
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "mpd_version=7"

    .line 626
    const-string v2, "dash"

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 4

    .line 260
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 263
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v2, 0x1

    .line 262
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 270
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "attributedDescription"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->attributedDescriptionToHtml(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 275
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v2, "videoDetails"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "shortDescription"

    .line 276
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 824
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "errorScreen"

    .line 825
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playerErrorMessageRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "reason"

    .line 826
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 824
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 19

    .line 1504
    const-string v0, "$M"

    const-string v1, "playerLiveStoryboardSpecRenderer"

    move-object/from16 v2, p0

    :try_start_0
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v4, "storyboards"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 1506
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    const-string v1, "playerStoryboardSpecRenderer"

    .line 1505
    :goto_0
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1512
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 1515
    :cond_1
    const-string v3, "spec"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1517
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1520
    :cond_2
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1521
    aget-object v4, v1, v3

    .line 1522
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x1

    .line 1524
    :goto_1
    array-length v8, v1

    if-ge v6, v8, :cond_7

    .line 1525
    aget-object v8, v1, v6

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1526
    array-length v9, v8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    const/4 v9, 0x5

    aget-object v10, v8, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v10, 0x2

    .line 1529
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v10, 0x3

    .line 1530
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/4 v10, 0x4

    .line 1531
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1532
    const-string v10, "$L"

    add-int/lit8 v11, v6, -0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "$N"

    const/4 v12, 0x6

    aget-object v12, v8, v12

    .line 1533
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    aget-object v11, v8, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&sigh="

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1535
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    int-to-double v11, v15

    mul-int v13, v17, v18

    int-to-double v13, v13

    div-double/2addr v11, v13

    .line 1536
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    .line 1538
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_5

    .line 1540
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1543
    :cond_4
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 1545
    :cond_5
    new-instance v11, Lorg/schabi/newpipe/extractor/stream/Frameset;

    aget-object v10, v8, v3

    .line 1547
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v10, v8, v7

    .line 1548
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v8, v8, v9

    .line 1550
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-direct/range {v11 .. v18}, Lorg/schabi/newpipe/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    .line 1545
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v5

    .line 1557
    :goto_4
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v3, "Could not get frames"

    invoke-direct {v1, v3, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 5

    .line 639
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 646
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingUrlsPoToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/schabi/newpipe/extractor/utils/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 648
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    .line 646
    const-string v2, "hls"

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getManifestUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 5

    .line 322
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    .line 326
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "lengthSeconds"

    .line 327
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 330
    :catch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->html5StreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/grack/nanojson/JsonObject;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getDurationFromFirstAdaptiveFormat(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 3

    .line 1578
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    .line 1579
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    .line 1580
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rows"

    .line 1581
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1582
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "metadataRowRenderer"

    .line 1583
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1585
    const-string v2, "contents"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 1586
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1588
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Licence"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1590
    :cond_0
    const-string v0, "YouTube licence"

    return-object v0
.end method

.method public getLikeCount()J
    .locals 3

    .line 393
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 396
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "allowRatings"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 400
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoActions"

    .line 401
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "menuRenderer"

    .line 402
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "topLevelButtons"

    .line 403
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 406
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonViewModel(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 414
    :catch_0
    :try_start_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseLikeCountFromLikeButtonRenderer(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    move-exception v0

    .line 416
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get like count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 3

    .line 1682
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 1683
    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    .line 1684
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1685
    const-string v2, "results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1686
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 1687
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 1682
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 2

    .line 1564
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "isUnlisted"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0

    .line 1566
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public bridge synthetic getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;
    .locals 5

    .line 765
    const-class v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "secondaryResults"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 767
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getAgeLimit()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 772
    :cond_0
    :try_start_0
    new-instance v2, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 774
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v4, "contents"

    .line 775
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "twoColumnWatchNextResults"

    .line 776
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 777
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 778
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "results"

    .line 779
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 781
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v3

    .line 782
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 783
    new-instance v4, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 784
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;

    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 785
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda20;-><init>()V

    .line 809
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 810
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda21;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 814
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get related videos"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 9

    .line 1609
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "engagementPanels"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1613
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 1614
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1616
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1617
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>()V

    .line 1619
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>()V

    .line 1624
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1629
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 1630
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;

    if-nez v0, :cond_1

    .line 1634
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1637
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getLength()J

    move-result-wide v3

    .line 1638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1640
    new-instance v5, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v5}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1641
    new-instance v5, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda8;-><init>()V

    .line 1642
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1643
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 1645
    const-string v5, "onTap"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "watchEndpoint"

    .line 1646
    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "startTimeSeconds"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_5

    int-to-long v6, v5

    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    goto :goto_1

    .line 1655
    :cond_2
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    invoke-static {v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v6

    .line 1656
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1660
    new-instance v7, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-direct {v7, v6, v5}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    .line 1661
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?t="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setUrl(Ljava/lang/String;)V

    .line 1662
    const-string v5, "thumbnail"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1664
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v5, "thumbnails"

    .line 1665
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 1666
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1669
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v5, "url"

    .line 1670
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    .line 1674
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1657
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get stream segment title."

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_5
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get stream segment start time."

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 749
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;
    .locals 9

    .line 712
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v2, "captionTracks"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 720
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 721
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "languageCode"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "baseUrl"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "vssId"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 726
    const-string v6, "a."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 727
    const-string v6, "&fmt=[^&]*"

    .line 729
    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "&tlang=[^&]*"

    .line 731
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 733
    new-instance v6, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;-><init>()V

    .line 734
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&fmt="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v4

    .line 735
    invoke-virtual {v4, p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v4

    .line 736
    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setLanguageCode(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v3

    .line 737
    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->setAutoGenerated(Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    move-result-object v3

    .line 733
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSubtitlesDefault()Ljava/util/List;
    .locals 1

    .line 706
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 2

    .line 1601
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "keywords"

    .line 1602
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 1601
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getStringListFromJsonArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 4

    .line 175
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "uploadDate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publishDate"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "liveBroadcastDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 184
    const-string v1, "endTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const-string v1, "startTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 191
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    return-object v2

    .line 196
    :cond_4
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "dateText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v2

    .line 200
    :cond_5
    const-string v1, "Premiered on "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_6
    const-string v1, "Premiered "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnail"

    .line 250
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnails"

    .line 251
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get thumbnails"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimeStamp()J
    .locals 5

    .line 361
    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    .line 362
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
    .locals 3

    .line 212
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    .line 214
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromOffsetDateTime(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    :try_start_1
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/Localization;

    const-string v2, "en"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 226
    :catch_1
    const-string v1, "MMM dd, yyyy"

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->parseOptionalDate(Ljava/lang/String;Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v2}, Lj$/util/Optional;->or(Ljava/util/function/Supplier;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda23;-><init>()V

    .line 228
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 3

    .line 567
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 568
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    .line 569
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 572
    const-string v1, "avatarStack"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatarStackViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatars"

    .line 575
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 577
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatarViewModel"

    .line 578
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "image"

    .line 579
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "sources"

    .line 580
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 573
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_0
    const-string v1, "thumbnail"

    .line 583
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 582
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    .line 586
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 587
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader avatars"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 529
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 534
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "author"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 536
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUploaderSubscriberCount()J
    .locals 3

    .line 595
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    const-string v1, "owner.videoOwnerRenderer"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 599
    const-string v1, "subscriberCountText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 600
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_0
    const-string v1, "navigationEndpoint"

    .line 604
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 603
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "subtitle"

    .line 605
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 609
    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 614
    :cond_1
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 616
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader subscriber count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 4

    .line 513
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 518
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader url"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 4

    .line 698
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 699
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x1

    .line 700
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "video-only"

    .line 699
    const-string v3, "adaptiveFormats"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 4

    .line 691
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 692
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x0

    .line 693
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoStreamBuilderHelper(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "video"

    .line 692
    const-string v3, "formats"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getItags(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()J
    .locals 3

    .line 373
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoPrimaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "viewCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "videoViewCountRenderer"

    .line 374
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->playerResponse:Lcom/grack/nanojson/JsonObject;

    const-string v2, "videoDetails"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get view count"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 388
    :cond_2
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUploaderVerified()Z
    .locals 3

    .line 544
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->getVideoSecondaryInfoRenderer()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "owner"

    .line 545
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    .line 546
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 548
    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isVerified(Lcom/grack/nanojson/JsonArray;)Z

    move-result v0

    return v0

    .line 554
    :cond_0
    const-string v1, "navigationEndpoint"

    .line 555
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 560
    :cond_1
    const-string v1, "title"

    .line 561
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "attachmentRuns"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 560
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hasArtistOrVerifiedIconBadgeAttachment(Lcom/grack/nanojson/JsonArray;)Z

    move-result v0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 7

    .line 850
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object p1

    .line 852
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 853
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    .line 855
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 858
    :goto_0
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchHtml5Client(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;)V

    .line 860
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->setStreamType()V

    if-eqz v4, :cond_1

    goto :goto_1

    .line 863
    :cond_1
    invoke-interface {v2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;->getAndroidClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;

    :goto_1
    const/4 v5, 0x0

    .line 865
    invoke-direct {p0, v0, v1, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchAndroidClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V

    .line 867
    sget-boolean v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchIosClient:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    .line 869
    :cond_2
    invoke-interface {v2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;->getIosClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;

    .line 870
    :goto_2
    invoke-direct {p0, v0, v1, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->fetchIosClient(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;)V

    .line 874
    :cond_3
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "videoId"

    .line 875
    invoke-virtual {v1, v2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string v1, "contentCheckOk"

    .line 876
    invoke-virtual {p1, v1, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string v1, "racyCheckOk"

    .line 877
    invoke-virtual {p1, v1, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 878
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    .line 873
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 879
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 880
    const-string v1, "next"

    invoke-static {v1, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->nextResponse:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
