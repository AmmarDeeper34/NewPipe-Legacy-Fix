.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;
.super Ljava/lang/Object;
.source "YoutubePostLiveStreamDvrDashManifestCreator.java"


# static fields
.field private static final POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method

.method public static fromPostLiveStreamDvrStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;IJ)Ljava/lang/String;
    .locals 5

    .line 113
    const-string v0, ""

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->containsKey(Ljava/io/Serializable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-lez p2, :cond_3

    .line 129
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {p0, p1, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&sq=0"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&rn=0"

    .line 132
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&alr=yes"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 140
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders()Ljava/util/Map;

    move-result-object v1

    .line 141
    const-string v2, "X-Head-Time-Millis"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    const-string v4, "X-Head-Seqnum"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :catch_0
    invoke-static {p1, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 163
    sget-object p3, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {p1, v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)V

    .line 165
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V

    .line 166
    invoke-static {p1, p2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->generateSegmentElementForPostLiveDvrStreams(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    .line 168
    sget-object p2, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p1, "Could not get the number of segments"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_2
    :try_start_2
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not get the initialization sequence: response code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 144
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p2, "Could not get the value of the X-Head-Time-Millis or the X-Head-Seqnum header"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 123
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "targetDurationSec value is <= 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateSegmentElementForPostLiveDvrStreams(Lorg/w3c/dom/Document;ILjava/lang/String;)V
    .locals 3

    .line 203
    :try_start_0
    const-string v0, "SegmentTimeline"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 205
    const-string v1, "S"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 207
    const-string v2, "d"

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, v2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string p1, "r"

    invoke-static {v1, p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 212
    const-string p1, "segment (S)"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
    .locals 1

    .line 177
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubePostLiveStreamDvrDashManifestCreator;->POST_LIVE_DVR_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-object v0
.end method
