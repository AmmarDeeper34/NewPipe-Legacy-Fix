.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;
.super Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
.source "YoutubeMixPlaylistExtractor.java"


# static fields
.field private static final IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;


# instance fields
.field private cookieValue:Ljava/lang/String;

.field private initialData:Lcom/grack/nanojson/JsonObject;

.field private playlistData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$ICJfWdunUbMzSLyB51317UBbOik(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;
    .locals 1

    .line 273
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$NWqfQtkXIjskfmi1EsuJAGL2Wo4(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 271
    const-string v0, "playlistPanelVideoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sN_YxfSiqK1YEuApnuEh2Fs6tfE(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 3

    .line 287
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getWidth()I

    move-result v2

    .line 289
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v1, 0x78

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "default.jpg"

    const/16 v4, 0x5a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "mqdefault.jpg"

    const/16 v4, 0xb4

    const/16 v5, 0x140

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v4, 0x168

    const/16 v5, 0x1e0

    const-string v6, "hqdefault.jpg"

    invoke-direct {v3, v6, v4, v5, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private collectStreamsFrom(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/util/List;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v0

    .line 268
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 269
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 270
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 271
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 272
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 273
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 274
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getNextPageFrom(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;
    .locals 8

    .line 206
    const-string v0, "contents"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 207
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    if-eqz p1, :cond_0

    .line 208
    const-string v0, "playlistPanelVideoRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "navigationEndpoint"

    .line 213
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "watchEndpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 214
    const-string v0, "playlistId"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    const-string v4, "index"

    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 217
    const-string v5, "params"

    invoke-virtual {p1, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v6

    .line 219
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v7

    .line 218
    invoke-static {v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v6

    .line 220
    invoke-virtual {v6, v2, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "playlistIndex"

    .line 222
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v5, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 227
    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "https://www.youtube.com/youtubei/v1/next?prettyPrint=false"

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-object v1

    .line 209
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p2, "Could not extract next page url"

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getThumbnailsFromPlaylistId(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 280
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->getThumbnailsFromVideoId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getThumbnailsFromVideoId(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://i.ytimg.com/vi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 290
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 186
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 193
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 194
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->collectStreamsFrom(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/util/List;)V

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 197
    const-string v2, "VISITOR_INFO1_LIVE"

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->cookieValue:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    invoke-direct {p0, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->getNextPageFrom(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    move-result-object v0

    const-string v1, "VISITOR_INFO1_LIVE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 243
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v5

    .line 245
    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    .line 247
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 248
    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "twoColumnWatchNextResults"

    .line 249
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "playlist"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 253
    const-string v3, "currentIndex"

    .line 254
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 256
    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->collectStreamsFrom(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/util/List;)V

    .line 257
    new-instance v2, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->getNextPageFrom(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cookie \'VISITOR_INFO1_LIVE\' is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playlistId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractPlaylistTypeFromPlaylistId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playlistId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->getThumbnailsFromPlaylistId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 144
    :try_start_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v2, "currentVideoEndpoint"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "watchEndpoint"

    .line 145
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->getThumbnailsFromVideoId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 149
    :catch_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get playlist thumbnails"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "YouTube"

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, ""

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 5

    .line 84
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "v"

    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "index"

    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    .line 90
    invoke-static {p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v3

    const-string v4, "playlistId"

    .line 91
    invoke-virtual {v3, v4, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 93
    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_0
    if-eqz v0, :cond_1

    .line 96
    const-string v2, "playlistIndex"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 99
    :cond_1
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 102
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    const-string v3, "https://www.youtube.com/youtubei/v1/next?prettyPrint=false"

    invoke-virtual {v2, v3, v1, v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    .line 109
    const-string v1, "contents"

    .line 110
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "twoColumnWatchNextResults"

    .line 111
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 112
    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->playlistData:Lcom/grack/nanojson/JsonObject;

    .line 114
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not get playlistData"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isConsentAccepted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v1, "Consent is required in some countries to view Mix playlists"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_2
    throw p1

    .line 123
    :cond_3
    const-string v0, "VISITOR_INFO1_LIVE"

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCookieValue(Ljava/lang/String;Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;->cookieValue:Ljava/lang/String;

    return-void
.end method
