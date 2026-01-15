.class public abstract Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.super Ljava/lang/Object;
.source "LinkHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUrl(Ljava/lang/String;)Z
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->onAcceptUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 2

    .line 88
    const-string v0, "ID cannot be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-direct {v1, v0, v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public fromId(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 1

    .line 94
    const-string v0, "ID cannot be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-direct {v0, p2, p2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 1

    .line 58
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The url is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 2

    .line 78
    const-string v0, "URL cannot be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0, v0, p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 80
    :cond_0
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL not accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract getId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract onAcceptUrl(Ljava/lang/String;)Z
.end method
