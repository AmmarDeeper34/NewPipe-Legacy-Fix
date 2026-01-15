.class public abstract Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "SearchQueryHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .locals 1

    .line 36
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    const-string p1, ""

    return-object p1
.end method

.method public abstract getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method
