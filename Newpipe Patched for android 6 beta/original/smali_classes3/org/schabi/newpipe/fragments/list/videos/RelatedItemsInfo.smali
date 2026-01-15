.class public final Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "RelatedItemsInfo.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 7

    .line 18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getRelatedItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    return-void
.end method
