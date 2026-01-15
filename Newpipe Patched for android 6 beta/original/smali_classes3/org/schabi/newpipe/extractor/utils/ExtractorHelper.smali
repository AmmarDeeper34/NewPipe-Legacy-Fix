.class public abstract Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# direct methods
.method public static getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static getRelatedItemsOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;
    .locals 1

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object p1

    if-nez p1, :cond_0

    .line 37
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V

    .line 42
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 45
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
