.class public Lorg/schabi/newpipe/extractor/downloader/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    }
.end annotation


# instance fields
.field private final dataToSend:[B

.field private final headers:Ljava/util/Map;

.field private final httpMethod:Ljava/lang/String;

.field private final localization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "Request\'s httpMethod is null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    .line 36
    const-string p1, "Request\'s url is null"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    .line 38
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 42
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    .line 45
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/downloader/Request;->getHeadersFromLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_1
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)V
    .locals 7

    .line 52
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgethttpMethod(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgeturl(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetheaders(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetdataToSend(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)[B

    move-result-object v4

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetlocalization(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v5

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetautomaticLocalizationHeader(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;Lorg/schabi/newpipe/extractor/downloader/Request-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)V

    return-void
.end method

.method public static getHeadersFromLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;
    .locals 2

    if-nez p0, :cond_0

    .line 244
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";q=0.9"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 251
    const-string v0, "Accept-Language"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 102
    new-instance v0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dataToSend()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 267
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    .line 269
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    .line 270
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 271
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public headers()Ljava/util/Map;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public httpMethod()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    return-object v0
.end method
