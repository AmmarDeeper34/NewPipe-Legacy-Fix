.class public abstract Lorg/schabi/newpipe/extractor/ListExtractor;
.super Lorg/schabi/newpipe/extractor/Extractor;
.source "ListExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public abstract getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
.end method

.method public getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1

    .line 61
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    return-object v0
.end method

.method public abstract getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
.end method
