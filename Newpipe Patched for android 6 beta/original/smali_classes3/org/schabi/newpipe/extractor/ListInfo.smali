.class public abstract Lorg/schabi/newpipe/extractor/ListInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "ListInfo.java"


# instance fields
.field private final contentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextPage:Lorg/schabi/newpipe/extractor/Page;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 21
    iput-object p6, p1, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 22
    iput-object p7, p1, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 29
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 30
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNextPage()Lorg/schabi/newpipe/extractor/Page;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public hasNextPage()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result v0

    return v0
.end method

.method public setNextPage(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-void
.end method
