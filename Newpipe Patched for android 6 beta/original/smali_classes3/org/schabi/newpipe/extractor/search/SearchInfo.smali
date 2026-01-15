.class public Lorg/schabi/newpipe/extractor/search/SearchInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SearchInfo.java"


# instance fields
.field private isCorrectedSearch:Z

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final searchString:Ljava/lang/String;

.field private searchSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V
    .locals 1

    .line 27
    const-string v0, "Search"

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 37
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 4

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/search/SearchInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setSearchSuggestion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 55
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 58
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->isCorrectedSearch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setIsCorrectedSearch(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 60
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 63
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getMetaInfo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 65
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 69
    :goto_3
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/extractor/ListExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    return-object v0
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public isCorrectedSearch()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    return v0
.end method

.method public setIsCorrectedSearch(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    return-void
.end method

.method public setSearchSuggestion(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    return-void
.end method
