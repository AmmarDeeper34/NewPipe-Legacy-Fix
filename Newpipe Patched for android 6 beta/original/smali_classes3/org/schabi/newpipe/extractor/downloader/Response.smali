.class public Lorg/schabi/newpipe/extractor/downloader/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final latestUrl:Ljava/lang/String;

.field private final responseBody:Ljava/lang/String;

.field private final responseCode:I

.field private final responseHeaders:Ljava/util/Map;

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode:I

    .line 26
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseMessage:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 27
    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    if-nez p4, :cond_1

    .line 29
    const-string p4, ""

    :cond_1
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public latestUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public responseBody()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public responseCode()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode:I

    return v0
.end method

.method public responseHeaders()Ljava/util/Map;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public responseMessage()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Response;->responseMessage:Ljava/lang/String;

    return-object v0
.end method
