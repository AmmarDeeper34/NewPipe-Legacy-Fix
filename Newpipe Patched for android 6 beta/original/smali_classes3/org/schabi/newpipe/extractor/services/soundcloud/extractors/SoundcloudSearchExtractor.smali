.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "SoundcloudSearchExtractor.java"


# instance fields
.field private initialSearchObject:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$5I99zlmpm61UdQgyNBpsmTxi0e0(I)I
    .locals 0

    .line 67
    const/16 p0, 0xa

    return p0
.end method

.method public static synthetic $r8$lambda$KpAfUEePtD9UNgcuE_gkDsPtEf0(I)I
    .locals 0

    .line 98
    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method

.method private collectItems(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 5

    .line 122
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 124
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 125
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-nez v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 130
    const-string v2, "kind"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "playlist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 136
    :pswitch_1
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 133
    :pswitch_2
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    :cond_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x36ebcb -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextPageFromCurrentUrl(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;
    .locals 4

    .line 150
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->getOffsetFromUrl(Ljava/lang/String;)I

    move-result v0

    .line 152
    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-interface {p2, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getOffsetFromUrl(Ljava/lang/String;)I
    .locals 2

    .line 160
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->compatParseMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "offset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get offset from page URL"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->initialSearchObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "total_results"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "collection"

    if-le v0, v1, :cond_0

    .line 65
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->initialSearchObject:Lcom/grack/nanojson/JsonObject;

    .line 66
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->collectItems(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v2, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->getNextPageFromCurrentUrl(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->initialSearchObject:Lcom/grack/nanojson/JsonObject;

    .line 70
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->collectItems(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 58
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 89
    const-string v1, "collection"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 90
    const-string v2, "total_results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->getOffsetFromUrl(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-ge v2, v0, :cond_0

    .line 96
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->collectItems(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->getNextPageFromCurrentUrl(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->collectItems(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json response"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public isCorrectedSearch()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSearchExtractor;->initialSearchObject:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    const-string v0, "Nothing found"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 112
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse json response"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
