.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;
.super Ljava/lang/Object;
.source "YoutubeProgressiveDashManifestCreator.java"


# static fields
.field private static final PROGRESSIVE_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->PROGRESSIVE_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method

.method public static fromProgressiveStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;
    .locals 6

    .line 84
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->PROGRESSIVE_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->containsKey(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getApproxDurationMs()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p2

    .line 102
    :goto_0
    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 105
    invoke-static {p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->generateBaseUrlElement(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 106
    invoke-static {p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->generateSegmentBaseElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 107
    invoke-static {p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->generateInitializationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 109
    invoke-static {p0, p2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    const-string p0, "MPD"

    const-string p1, "the duration of the stream could not be determined and durationSecondsFallback is <= 0"

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method private static generateBaseUrlElement(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 3

    .line 138
    const-string v0, "BaseURL"

    :try_start_0
    const-string v1, "Representation"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 140
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 141
    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 142
    invoke-interface {v1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 144
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method private static generateInitializationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 6

    .line 218
    const-string v0, "Initialization"

    :try_start_0
    const-string v1, "SegmentBase"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 219
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 220
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 222
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result p1

    if-ltz p1, :cond_0

    .line 227
    const-string p1, "range"

    invoke-static {v2, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ItagItem\'s initStart and/or initEnd are/is < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method private static generateSegmentBaseElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 6

    .line 175
    const-string v0, "SegmentBase"

    :try_start_0
    const-string v1, "Representation"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 176
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 177
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result p1

    if-ltz p1, :cond_0

    .line 184
    const-string p1, "indexRange"

    invoke-static {v2, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ItagItem\'s indexStart or indexEnd are < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
    .locals 1

    .line 118
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeProgressiveDashManifestCreator;->PROGRESSIVE_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-object v0
.end method
