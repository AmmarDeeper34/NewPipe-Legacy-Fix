.class public final Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/downloader/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private automaticLocalizationHeader:Z

.field private dataToSend:[B

.field private final headers:Ljava/util/Map;

.field private httpMethod:Ljava/lang/String;

.field private localization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetautomaticLocalizationHeader(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataToSend(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaders(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethttpMethod(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalization(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/schabi/newpipe/extractor/downloader/Request;
    .locals 2

    .line 178
    new-instance v0, Lorg/schabi/newpipe/extractor/downloader/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;Lorg/schabi/newpipe/extractor/downloader/Request-IA;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 186
    const-string v0, "GET"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 192
    const-string v0, "HEAD"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public localization(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method public post(Ljava/lang/String;[B)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 198
    const-string v0, "POST"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method
