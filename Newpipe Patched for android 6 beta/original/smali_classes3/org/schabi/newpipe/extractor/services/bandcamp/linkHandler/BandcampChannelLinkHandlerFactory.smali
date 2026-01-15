.class public final Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "BandcampChannelLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;
    .locals 1

    .line 30
    sget-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampChannelLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 40
    const-string v0, "data-band"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getJsonData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 42
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 46
    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Download failed"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getArtistDetails(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 57
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 61
    const-string p2, "bandcamp_url"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "JSON does not contain a channel URL (invalid id?) or is otherwise invalid"

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 5

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    return v3

    .line 82
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

    aget-object v1, v0, v4

    const-string v2, "releases"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v4

    const-string v2, "music"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v4

    const-string v2, "album"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v4

    const-string v2, "track"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x2

    .line 88
    aget-object v0, v0, v1

    const-string v1, "daily.bandcamp.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 94
    :cond_2
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isArtistDomain(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
