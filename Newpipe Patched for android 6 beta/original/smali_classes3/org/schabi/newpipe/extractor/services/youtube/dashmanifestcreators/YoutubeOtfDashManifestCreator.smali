.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;
.super Ljava/lang/Object;
.source "YoutubeOtfDashManifestCreator.java"


# static fields
.field private static final OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method

.method public static fromOtfStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;
    .locals 4

    .line 105
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->containsKey(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 112
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&sq=0"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&rn=0"

    .line 115
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&alr=yes"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Segment-Durations-Ms: "

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v3, "\n"

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const-string v3, ","

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v3, v0

    sub-int/2addr v3, v2

    .line 134
    aget-object v2, v0, v3

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->getStreamDuration([Ljava/lang/String;)J

    move-result-wide p2
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v2, 0x3e8

    mul-long p2, p2, v2

    .line 150
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 153
    sget-object p2, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {p1, v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)V

    .line 154
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V

    .line 155
    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->generateSegmentElementsForOtfStreams([Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 157
    sget-object p2, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 140
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p2, "Could not get segment durations"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 119
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not get the initialization URL: response code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateSegmentElementsForOtfStreams([Ljava/lang/String;Lorg/w3c/dom/Document;)V
    .locals 8

    .line 201
    :try_start_0
    const-string v0, "SegmentTimeline"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 204
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 205
    const-string v5, "S"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 207
    const-string v6, "\\(r="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 209
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 213
    aget-object v6, v4, v7

    .line 214
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 215
    const-string v7, "r"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    const-string v6, "d"

    aget-object v4, v4, v1

    invoke-static {v5, p1, v6, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 224
    const-string p1, "segment (S)"

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
    .locals 1

    .line 165
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-object v0
.end method

.method private static getStreamDuration([Ljava/lang/String;)J
    .locals 12

    .line 245
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v7, p0, v4

    .line 246
    const-string v8, "\\(r="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 250
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 251
    aget-object v8, v7, v9

    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    :cond_0
    move-wide v8, v2

    .line 255
    :goto_1
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v7

    mul-long v8, v8, v10

    add-long/2addr v10, v8

    add-long/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v5

    :catch_0
    move-exception p0

    .line 261
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v1, "Could not get stream length from sequences list"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
