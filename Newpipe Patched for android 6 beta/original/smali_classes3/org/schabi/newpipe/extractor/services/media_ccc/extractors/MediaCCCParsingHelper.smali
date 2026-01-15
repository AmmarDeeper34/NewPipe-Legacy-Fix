.class public abstract Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;
.super Ljava/lang/Object;
.source "MediaCCCParsingHelper.java"


# static fields
.field private static final LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static liveStreams:Lcom/grack/nanojson/JsonArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "\\w+/\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->liveStreams:Lcom/grack/nanojson/JsonArray;

    return-void
.end method

.method public static getImageListFromLogoImageUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 87
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 91
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLiveStreams(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 59
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->liveStreams:Lcom/grack/nanojson/JsonArray;

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    const-string v0, "https://streaming.media.ccc.de/streams/v2.json"

    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonArray;

    sput-object p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->liveStreams:Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not parse JSON."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 65
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not get live stream JSON."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 70
    :cond_0
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->liveStreams:Lcom/grack/nanojson/JsonArray;

    return-object p0
.end method

.method public static getThumbnailsFromLiveStreamItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    .line 125
    const-string v0, "thumb"

    const-string v1, "poster"

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getThumbnailsFromObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailsFromObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lorg/schabi/newpipe/extractor/Image;

    sget-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {v1, p1, v2, v2, v3}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    new-instance p1, Lorg/schabi/newpipe/extractor/Image;

    sget-object p2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {p1, p0, v2, v2, p2}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getThumbnailsFromStreamItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    .line 108
    const-string v0, "thumb_url"

    const-string v1, "poster_url"

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getThumbnailsFromObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isLiveStreamId(Ljava/lang/String;)Z
    .locals 1

    .line 40
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method
