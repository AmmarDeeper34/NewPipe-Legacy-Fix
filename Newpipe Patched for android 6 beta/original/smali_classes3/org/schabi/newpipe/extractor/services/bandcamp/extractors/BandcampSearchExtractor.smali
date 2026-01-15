.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "BandcampSearchExtractor.java"


# direct methods
.method public static synthetic $r8$lambda$if9KKGsYQ9Y28UFV0fF9L0490e4(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;
    .locals 1

    .line 59
    const-string v0, "itemtype"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$stfFw1ybiJxioSAaNyeak0E6J30(Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 87
    const-string v0, "li"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 2

    .line 112
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 48
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 10

    .line 54
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 57
    const-string v2, "searchresult"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 58
    const-string v8, "result-info"

    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-static {v8}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 59
    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lorg/jsoup/select/Elements$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v8

    .line 61
    invoke-interface {v8}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v8

    const-string v9, ""

    .line 62
    invoke-virtual {v8, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 64
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "ARTIST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "TRACK"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "ALBUM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;

    invoke-direct {v4, v3, v6}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 69
    :pswitch_2
    new-instance v4, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistInfoItemExtractor;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampPlaylistInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto/16 :goto_0

    .line 81
    :cond_3
    const-string v2, "pagelist"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p1, v0, v6}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    .line 86
    :cond_4
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 87
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;-><init>()V

    .line 89
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Elements;

    const/4 v2, 0x0

    .line 93
    :goto_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 95
    const-string v8, "span"

    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v4, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 103
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/2addr v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    :cond_7
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v1, v6}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b7864f -> :sswitch_2
        0x4c5f92b -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 37
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
    .locals 0

    .line 0
    return-void
.end method
