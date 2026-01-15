.class public abstract Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;
.super Ljava/lang/Object;
.source "PeertubeParsingHelper.java"


# direct methods
.method public static synthetic $r8$lambda$ECbdd8Ik-BTPszMTMARBsCK8ipA(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;
    .locals 3

    .line 300
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "width"

    const/4 v2, -0x1

    .line 301
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {v0, p0, v2, p1, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$NahPcw0NImqrkSeHLIBW2AB4vno(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 299
    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static collectItemsFrom(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->collectItemsFrom(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Z)V

    return-void
.end method

.method public static collectItemsFrom(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Z)V
    .locals 3

    .line 98
    :try_start_0
    const-string v0, "data"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 108
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 111
    :cond_1
    const-string v1, "videosLength"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    .line 112
    const-string v2, "followersCount"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz p3, :cond_2

    .line 116
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSepiaStreamInfoItemExtractor;

    invoke-direct {v1, v0, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSepiaStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 118
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistInfoItemExtractor;

    invoke-direct {v1, v0, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 120
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;

    invoke-direct {v1, v0, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;

    invoke-direct {v1, v0, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 124
    :goto_1
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Unable to extract list info"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getAvatarsFromOwnerAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    .line 155
    const-string v0, "avatars"

    const-string v1, "avatar"

    invoke-static {p0, p1, v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getImagesFromAvatarsOrBanners(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBannersFromAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    .line 185
    const-string v0, "banners"

    const-string v1, "banner"

    invoke-static {p0, p1, v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getImagesFromAvatarsOrBanners(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getImagesFromAvatarOrBannerArray(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2

    .line 296
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 297
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 298
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 299
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 302
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getImagesFromAvatarsOrBanners(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 258
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    .line 260
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {p0, p2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getImagesFromAvatarOrBannerArray(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    invoke-virtual {p1, p3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 265
    const-string p2, "path"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 267
    new-instance p3, Lorg/schabi/newpipe/extractor/Image;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "width"

    const/4 v0, -0x1

    .line 268
    invoke-virtual {p1, p2, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {p3, p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 267
    invoke-static {p3}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static getNextPage(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;
    .locals 6

    const/4 v0, 0x0

    .line 50
    :try_start_0
    const-string v1, "start=(\\d*)"

    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 60
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    return-object v0

    .line 68
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    return-object v0
.end method

.method public static getThumbnailsFromPlaylistOrVideoItem(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 5

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    const-string v1, "thumbnailPath"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Lorg/schabi/newpipe/extractor/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {v2, v1, v3, v3, v4}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    const-string v1, "previewPath"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    new-instance v1, Lorg/schabi/newpipe/extractor/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {v1, p0, v3, v3, p1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static validate(Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 41
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
