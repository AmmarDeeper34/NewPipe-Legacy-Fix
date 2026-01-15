.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "YoutubeTrendingExtractor.java"


# instance fields
.field private initialData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$4MwyC89KLMLtqGcfTOu2X2ZJSx8(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 154
    const-string v0, "videoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5yjzjys9MG2kg6uqmT4JJX7ja9w(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 155
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CigYWxLxHx3amWlQdSJmYIf9MQA(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 145
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$GVypN0WRWg9KUbpBsQytCfHDROA(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 1

    .line 131
    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    .line 132
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IH0Jqztc_f1qaSocFuKQCUh2HL0(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 1

    .line 148
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "expandedShelfContentsRenderer"

    .line 149
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "items"

    .line 150
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LVRar4SNpPE73GI57TofVEB5lhA(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 119
    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q4Uj9ua61L1iHXLkcitYhDNggHM(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 120
    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    .line 121
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoRenderer"

    .line 122
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qpp9MUWs13eAE9LX7swdGe_J9u4(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 136
    const-string v0, "shelfRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S8MelYyDnDu8OzOucUW_yNdBH2s(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 171
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UX6FaDjRQeknuXYU_mEHc2YtUMM(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 123
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfPOCfEClqPBRfNmdrTeRBOmpRc()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 175
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get \"Now\" or \"Videos\" trending tab"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$fsfl6kWWsGDS-A4EYcBeSkM_4Yk(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 170
    const-string v0, "selected"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sIZxMN8iRNsCBcHIDfOamU2YctI(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 169
    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method

.method private getTrendingTab()Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "twoColumnBrowseResultsRenderer"

    .line 164
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "tabs"

    .line 165
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 168
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>()V

    .line 169
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda10;-><init>()V

    .line 170
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;-><init>()V

    .line 171
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda12;-><init>()V

    .line 174
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 8

    .line 105
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 106
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v1

    .line 107
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;->getTrendingTab()Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 108
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 109
    const-string v4, "endpoint"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v4, "browseEndpoint"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v4, "params"

    const-string v5, ""

    .line 110
    invoke-virtual {v2, v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 112
    const-string v4, "richGridRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "contents"

    const-class v7, Lcom/grack/nanojson/JsonObject;

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 115
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 117
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 119
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda6;-><init>()V

    .line 120
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 123
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    .line 125
    :cond_0
    const-string v4, "sectionListRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    .line 128
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    .line 129
    new-instance v4, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    .line 130
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda8;-><init>()V

    .line 131
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    .line 134
    new-instance v4, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    .line 135
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 136
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v3}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->stream()Lj$/util/stream/Stream;

    move-result-object v2

    goto :goto_0

    .line 145
    :cond_1
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 148
    :goto_0
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    .line 153
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 154
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 155
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 159
    :cond_2
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 88
    const-string v1, "feedTabbedHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "title"

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    const-string v1, "c4TabbedHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    const-string v1, "pageHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "pageTitle"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 96
    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 97
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get Trending name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 80
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string v0, "browseId"

    const-string v1, "FEtrending"

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string v0, "params"

    const-string v1, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 75
    const-string v0, "browse"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
