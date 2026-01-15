.class public Lorg/schabi/newpipe/extractor/feed/FeedInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "FeedInfo.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/feed/FeedExtractor;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 8

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 53
    new-instance v0, Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 56
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method
