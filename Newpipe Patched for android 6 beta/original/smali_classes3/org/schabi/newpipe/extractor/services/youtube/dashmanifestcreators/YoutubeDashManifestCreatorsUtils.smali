.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;
.super Ljava/lang/Object;
.source "YoutubeDashManifestCreatorsUtils.java"


# direct methods
.method private static appendRnSqParamsIfNeeded(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Ljava/lang/String;
    .locals 1

    .line 711
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "&sq=0"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&rn=0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;
    .locals 0

    .line 485
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p2, p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 489
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p2, "Could not convert the DASH manifest generated to a string"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3

    .line 680
    const-string v0, ""

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 682
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :catch_0
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 690
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v1, "encoding"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "standalone"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 695
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 697
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAdaptationSetElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 6

    .line 245
    const-string v0, "AdaptationSet"

    :try_start_0
    const-string v1, "Period"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 246
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 247
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 249
    const-string v3, "id"

    const-string v4, "0"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    iget-object v4, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v4, v5, :cond_0

    .line 258
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    const-string v4, "lang"

    invoke-static {v2, p0, v4, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 267
    :cond_0
    :goto_0
    const-string p1, "mimeType"

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string p1, "subsegmentAlignment"

    const-string v3, "true"

    invoke-static {v2, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 253
    :cond_1
    const-string p0, "the MediaFormat or its mime type is null or empty"

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateAudioChannelConfigurationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 5

    .line 448
    const-string v0, "AudioChannelConfiguration"

    :try_start_0
    const-string v1, "Representation"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 449
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 450
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 453
    const-string v3, "schemeIdUri"

    const-string v4, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result v3

    if-lez v3, :cond_0

    .line 460
    const-string v3, "value"

    .line 461
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-static {v2, p0, v3, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 457
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 458
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the number of audioChannels in the ItagItem is <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;
    .locals 1

    .line 148
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndMpdElement(J)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generatePeriodElement(Lorg/w3c/dom/Document;)V

    .line 151
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateAdaptationSetElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 152
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateRoleElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 153
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateRepresentationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 154
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p2, v0, :cond_0

    .line 155
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateAudioChannelConfigurationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    :cond_0
    return-object p1
.end method

.method public static generateDocumentAndMpdElement(J)Lorg/w3c/dom/Document;
    .locals 7

    .line 186
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 188
    const-string v1, "MPD"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 189
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    const-string v2, "xmlns:xsi"

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "xmlns"

    const-string v3, "urn:mpeg:DASH:schema:MPD:2011"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "xsi:schemaLocation"

    const-string v3, "urn:mpeg:DASH:schema:MPD:2011 DASH-MPD.xsd"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "minBufferTime"

    const-string v3, "PT1.500S"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "profiles"

    const-string v3, "urn:mpeg:dash:profile:full:2011"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "type"

    const-string v3, "static"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "mediaPresentationDuration"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "PT%.3fS"

    long-to-double p0, p0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v5

    .line 199
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, p1, v5

    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {v1, v0, v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 203
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v0, "Could not generate the DASH manifest or append the MPD doc to it"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static generatePeriodElement(Lorg/w3c/dom/Document;)V
    .locals 3

    .line 221
    const-string v0, "Period"

    :try_start_0
    const-string v1, "MPD"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 222
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 223
    invoke-interface {v1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 225
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateRepresentationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 7

    .line 356
    const-string v0, "1"

    const-string v1, "AdaptationSet"

    const-string v2, "Representation"

    :try_start_0
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 357
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 358
    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 360
    iget v5, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-lez v5, :cond_8

    .line 365
    const-string v6, "id"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p0, v6, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 372
    const-string v1, "codecs"

    invoke-static {v4, p0, v1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "startWithSAP"

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "maxPlayoutRate"

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    if-lez v0, :cond_6

    .line 381
    const-string v1, "bandwidth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v0

    .line 386
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    move-result v1

    if-gtz v0, :cond_2

    if-lez v1, :cond_1

    goto :goto_1

    .line 388
    :cond_1
    const-string p0, "both width and height of the ItagItem are <= 0"

    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 393
    const-string v0, "width"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_3
    const-string v0, "height"

    .line 396
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {v4, p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getFps()I

    move-result v0

    if-lez v0, :cond_4

    .line 400
    const-string v1, "frameRate"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_4
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    move-result v0

    if-lez v0, :cond_5

    .line 405
    const-string v0, "audioSamplingRate"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    .line 407
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 410
    :cond_5
    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 378
    :cond_6
    const-string p0, "the bitrate of the ItagItem is <= 0"

    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0

    .line 369
    :cond_7
    const-string p0, "the codec value of the ItagItem is null or empty"

    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0

    .line 362
    :cond_8
    const-string p0, "the id of the ItagItem is <= 0"

    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_2
    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateRoleElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 5

    .line 302
    const-string v0, "Role"

    :try_start_0
    const-string v1, "AdaptationSet"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 303
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 304
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 306
    const-string v3, "schemeIdUri"

    const-string v4, "urn:mpeg:DASH:role:2011"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "value"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getRoleValue(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, v3, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 311
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)V
    .locals 6

    .line 528
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v1, "SegmentTemplate"

    if-eq p2, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid delivery type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0

    .line 534
    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "Representation"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    .line 535
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 536
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 540
    const-string v3, "startNumber"

    .line 541
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p2, v4, :cond_2

    const-string v5, "0"

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string v5, "1"

    .line 540
    :goto_1
    invoke-static {v2, p0, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v3, "timescale"

    const-string v5, "1000"

    invoke-static {v2, p0, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v4, :cond_3

    .line 546
    const-string p2, "initialization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&sq=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, p2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_3
    const-string p2, "media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sq=$Number$"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 553
    :goto_2
    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V
    .locals 3

    .line 572
    const-string v0, "SegmentTimeline"

    :try_start_0
    const-string v1, "SegmentTemplate"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 573
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 574
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 576
    invoke-interface {v1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 578
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object p0

    throw p0
.end method

.method public static getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 5

    .line 607
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isTvHtml5StreamingUrl(Ljava/lang/String;)Z

    move-result v0

    .line 608
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isWebStreamingUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 610
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isWebEmbeddedPlayerStreamingUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 611
    :goto_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isAndroidStreamingUrl(Ljava/lang/String;)Z

    move-result v2

    .line 612
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isIosStreamingUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v1, :cond_2

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&alr=yes"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 616
    :cond_2
    invoke-static {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->appendRnSqParamsIfNeeded(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Ljava/lang/String;

    move-result-object p0

    .line 618
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p2

    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 622
    invoke-static {p2, p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getStreamingWebUrlWithoutRedirects(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    .line 639
    :cond_4
    :try_start_0
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 641
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p2, "Could not get the streaming URL response"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 627
    :cond_5
    :goto_2
    :try_start_1
    const-string p1, "User-Agent"

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    .line 628
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_4

    .line 629
    :cond_6
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_3
    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 630
    const-string v0, ""

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 631
    invoke-virtual {p2, p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 633
    :goto_4
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    if-eqz v3, :cond_7

    .line 634
    const-string p2, "ANDROID"

    goto :goto_5

    :cond_7
    const-string p2, "IOS"

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " streaming URL response"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static getRoleValue(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;
    .locals 2

    .line 322
    const-string v0, "main"

    if-eqz p0, :cond_2

    .line 323
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 333
    const-string p0, "alternate"

    return-object p0

    .line 329
    :cond_0
    const-string p0, "description"

    return-object p0

    .line 327
    :cond_1
    const-string p0, "dub"

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static getStreamingWebUrlWithoutRedirects(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 3

    .line 752
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://www.youtube.com"

    .line 753
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p3, :cond_0

    .line 755
    const-string p3, "User-Agent"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTvHtml5UserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_0
    const-string p3, ""

    const/4 v1, 0x0

    .line 761
    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x14

    if-nez p3, :cond_3

    if-ge v1, v2, :cond_3

    const/4 p3, 0x2

    .line 763
    :try_start_1
    new-array p3, p3, [B

    fill-array-data p3, :array_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    :try_start_2
    invoke-virtual {p0, p1, v0, p3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 766
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result p3

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_2

    .line 775
    const-string p3, "Content-Type"

    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Could not get the Content-Type header from the response headers"

    invoke-static {p3, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 779
    const-string v2, "text/plain"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 768
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not get the initialization URL: HTTP response code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    if-lt v1, v2, :cond_4

    .line 788
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p1, "Too many redirects when trying to get the the streaming URL response of a HTML5 client"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 795
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p1, "Could not get the streaming URL response of a HTML5 client: unreachable code reached!"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 799
    :goto_1
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string p2, "Could not get the streaming URL response of a HTML5 client"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :array_0
    .array-data 1
        0x78t
        0x0t
    .end array-data
.end method

.method private static newDocument()Lorg/w3c/dom/Document;
    .locals 3

    .line 654
    const-string v0, ""

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 656
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :catch_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    .line 118
    invoke-interface {p1, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 119
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    return-void
.end method
