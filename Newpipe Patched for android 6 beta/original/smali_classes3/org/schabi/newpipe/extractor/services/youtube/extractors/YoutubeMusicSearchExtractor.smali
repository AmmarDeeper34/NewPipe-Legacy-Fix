.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "YoutubeMusicSearchExtractor.java"


# instance fields
.field private cachedItemSectionRendererContents:Ljava/util/List;

.field private initialData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$-VrJnVM-3qsVO6L2Pdgs73RfCAc(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 139
    const-string v0, "contents"

    .line 140
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0VGSB2NVjj3r1KX5l7TKDQbMZGo(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 138
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$BXIlg6d8l8VvMkT9OM6BMqouy0I(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 137
    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ajB38gHLebt4DVpx6LEgiXhN8xA(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 269
    const-string v0, "musicResponsiveListItemRenderer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bxkVZZUfK5eQUD69rCK0cRmKS44(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 174
    const-string v0, "showingResultsForRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m0Fo1Wcmq5P46wpUqxyJwxxJ9jc(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    .line 272
    const-string v0, "musicItemRendererDisplayPolicy"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "MUSIC_ITEM_RENDERER_DISPLAY_POLICY_GREY_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    const-string v0, "flexColumns"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "musicResponsiveListItemFlexColumnRenderer"

    .line 281
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "text"

    .line 282
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "runs"

    .line 283
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "music_videos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "music_songs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "music_albums"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "music_artists"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :sswitch_4
    const-string v1, "music_playlists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    return-void

    .line 288
    :pswitch_0
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSongOrVideoInfoItemExtractor;

    invoke-direct {v1, p2, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSongOrVideoInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    .line 292
    :pswitch_1
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicArtistInfoItemExtractor;

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicArtistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    .line 296
    :pswitch_2
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicAlbumOrPlaylistInfoItemExtractor;

    invoke-direct {v1, p2, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicAlbumOrPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a0208b9 -> :sswitch_4
        -0x21ca560e -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method

.method private collectMusicStreamsFrom(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonArray;)V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 267
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 268
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 269
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 270
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V

    .line 271
    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getItemSectionRendererContents()Ljava/util/List;
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->cachedItemSectionRendererContents:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    .line 126
    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "tabbedSearchResultsRenderer"

    .line 127
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "tabs"

    .line 128
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "tabRenderer"

    .line 130
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "content"

    .line 131
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "sectionListRenderer"

    .line 132
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 137
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda4;-><init>()V

    .line 138
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 139
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 142
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->cachedItemSectionRendererContents:Ljava/util/List;

    return-object v0
.end method

.method private getNextPageFrom(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    .line 305
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "nextContinuationData"

    .line 310
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 311
    const-string v0, "continuation"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 313
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://music.youtube.com/youtubei/v1/search?ctoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&continuation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&prettyPrint=false"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    .line 186
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 188
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v2, "contents.tabbedSearchResultsRenderer.tabs"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "tabRenderer.content.sectionListRenderer.contents"

    .line 188
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 195
    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v4, "musicShelfRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 199
    const-string v3, "contents"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->collectMusicStreamsFrom(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonArray;)V

    .line 201
    const-string v3, "continuations"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->getNextPageFrom(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    goto :goto_0

    .line 205
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 180
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 218
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "context"

    .line 220
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "client"

    .line 221
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "clientName"

    const-string v3, "WEB_REMIX"

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "clientVersion"

    .line 223
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYoutubeMusicClientVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "hl"

    const-string v3, "en-GB"

    .line 224
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 225
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gl"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "platform"

    const-string v3, "DESKTOP"

    .line 226
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "utcOffsetMinutes"

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 228
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "request"

    .line 229
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "internalExperimentFlags"

    .line 230
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 231
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "useSsl"

    const/4 v4, 0x1

    .line 232
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 233
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "user"

    .line 234
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "lockedSafetyMode"

    .line 237
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 238
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 239
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 240
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    .line 245
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYoutubeMusicHeaders()Ljava/util/Map;

    move-result-object v3

    .line 244
    invoke-virtual {v2, p1, v3, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 243
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p1

    .line 249
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const-string v1, "continuationContents"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "musicShelfContinuation"

    .line 255
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 257
    const-string v1, "contents"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->collectMusicStreamsFrom(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonArray;)V

    .line 258
    const-string v1, "continuations"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 260
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->getNextPageFrom(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 251
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse JSON"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 4

    .line 149
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->getItemSectionRendererContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 150
    const-string v2, "didYouMeanRenderer"

    .line 151
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    const-string v0, "correctedQuery"

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    const-string v2, "showingResultsForRenderer"

    .line 160
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v0, "correctedQueryEndpoint.searchEndpoint.query"

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public isCorrectedSearch()Z
    .locals 2

    .line 172
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->getItemSectionRendererContents()Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 174
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 5

    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "music_videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "music_songs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "music_albums"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "music_artists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "music_playlists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 67
    :pswitch_0
    const-string p1, "Eg-KAQwIABABGAAgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    .line 64
    :pswitch_1
    const-string p1, "Eg-KAQwIARAAGAAgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    .line 70
    :pswitch_2
    const-string p1, "Eg-KAQwIABAAGAEgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    .line 76
    :pswitch_3
    const-string p1, "Eg-KAQwIABAAGAAgASgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    .line 73
    :pswitch_4
    const-string p1, "Eg-KAQwIABAAGAAgACgBMABqChAEEAUQAxAKEAk%3D"

    .line 83
    :goto_1
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "context"

    .line 85
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "client"

    .line 86
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "clientName"

    const-string v4, "WEB_REMIX"

    .line 87
    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "clientVersion"

    .line 88
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYoutubeMusicClientVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "hl"

    const-string v4, "en-GB"

    .line 89
    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 90
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gl"

    invoke-virtual {v1, v4, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "platform"

    const-string v4, "DESKTOP"

    .line 91
    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "utcOffsetMinutes"

    .line 92
    invoke-virtual {v1, v3, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 93
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "request"

    .line 94
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "internalExperimentFlags"

    .line 95
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 96
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v3, "useSsl"

    .line 97
    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 98
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "user"

    .line 99
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "lockedSafetyMode"

    .line 102
    invoke-virtual {v1, v2, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 103
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 104
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "query"

    .line 105
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "params"

    .line 106
    invoke-virtual {v0, v1, p1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    .line 107
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    const-string v1, "https://music.youtube.com/youtubei/v1/search?prettyPrint=false"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYoutubeMusicHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p1

    .line 114
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->initialData:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse JSON"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0208b9 -> :sswitch_4
        -0x21ca560e -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
