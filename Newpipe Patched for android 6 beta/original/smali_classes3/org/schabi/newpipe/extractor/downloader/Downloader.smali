.class public abstract Lorg/schabi/newpipe/extractor/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;
.end method

.method public get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 2

    const/4 v0, 0x0

    .line 32
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 59
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 77
    invoke-static {}, Lorg/schabi/newpipe/extractor/downloader/Request;->newBuilder()Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->build()Lorg/schabi/newpipe/extractor/downloader/Request;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->head(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 104
    invoke-static {}, Lorg/schabi/newpipe/extractor/downloader/Request;->newBuilder()Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->build()Lorg/schabi/newpipe/extractor/downloader/Request;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 123
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 143
    invoke-static {}, Lorg/schabi/newpipe/extractor/downloader/Request;->newBuilder()Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1, p3}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->post(Ljava/lang/String;[B)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p4}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->build()Lorg/schabi/newpipe/extractor/downloader/Request;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 172
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    :cond_0
    const-string p2, "Content-Type"

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 1

    .line 236
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 235
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 6

    .line 217
    const-string v5, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method
