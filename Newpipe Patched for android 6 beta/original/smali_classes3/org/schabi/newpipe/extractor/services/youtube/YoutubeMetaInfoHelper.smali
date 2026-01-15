.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;
.super Ljava/lang/Object;
.source "YoutubeMetaInfoHelper.java"


# direct methods
.method public static synthetic $r8$lambda$6oImZhR_tMS1-6pAxQ7dIFqhsbw(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 161
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "singleActionEmergencySupportRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lOCK4wfro8zF8owwDq0da3IeVSM(Ljava/lang/Object;)Z
    .locals 1

    .line 159
    instance-of v0, p0, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "singleActionEmergencySupportRenderer"

    .line 160
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;
    .locals 5

    .line 102
    new-instance v0, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 104
    const-string v1, "contentTitle"

    .line 105
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 114
    const-string v1, "actionButton"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "buttonRenderer"

    .line 116
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 118
    :try_start_0
    const-string v3, "command"

    .line 119
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v4, Ljava/net/URL;

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get metadata info link text."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 122
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get metadata info URL"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 133
    :cond_1
    :goto_0
    const-string v1, "secondaryEndpoint"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    const-string v2, "secondarySource"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 135
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 138
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isGoogleURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 141
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 143
    :goto_1
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 145
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get metadata info secondary URL"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v0

    .line 109
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not extract clarification renderer content"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V
    .locals 10

    .line 157
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 158
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 159
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 161
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 162
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 164
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 169
    new-instance v1, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 172
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "actionText"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "action"

    invoke-static {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 178
    :cond_0
    const-string v4, "contacts"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 182
    :goto_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 183
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4, v7}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    .line 185
    invoke-virtual {v8, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    const-string v9, "contacts.actionText"

    .line 184
    invoke-static {v8, v9}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 189
    :cond_2
    const-string v3, ""

    .line 193
    :goto_2
    const-string v4, "detailsText"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "details"

    invoke-static {v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v5, "navigationText"

    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "urlText"

    invoke-static {v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    .line 200
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 201
    invoke-virtual {v1, v5}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    .line 204
    const-string v2, "navigationEndpoint"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 212
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse emergency renderer url"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 206
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not extract emergency renderer url"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void

    .line 165
    :cond_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not extract any meta info from emergency renderer"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;
    .locals 5

    .line 69
    new-instance v0, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v2, "paragraphs"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "<br>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    check-cast v3, Lcom/grack/nanojson/JsonObject;

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 78
    const-string v1, "sourceEndpoint"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const-string v1, "inlineSource"

    .line 89
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get metadata info link text."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 85
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get metadata info URL"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public static getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 5

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 40
    const-string v2, "itemSectionRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 45
    const-string v3, "infoPanelContentRenderer"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    const-string v3, "clarificationRenderer"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 50
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_3
    const-string v3, "emergencyOneboxRenderer"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 57
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 55
    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method
