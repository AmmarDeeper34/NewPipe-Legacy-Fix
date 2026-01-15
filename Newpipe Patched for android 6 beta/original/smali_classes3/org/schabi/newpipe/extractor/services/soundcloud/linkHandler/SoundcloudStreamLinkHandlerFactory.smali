.class public final Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.source "SoundcloudStreamLinkHandlerFactory.java"


# static fields
.field private static final API_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;

    .line 16
    const-string v0, "^https?://(?:www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/(?!(?:tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?(?:[#?].*)?$|^https?://on\\.soundcloud\\.com/[0-9a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->API_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;
    .locals 1

    .line 32
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 47
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->API_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->checkUrl(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->resolveIdWithWidgetApi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.soundcloud.com/tracks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->resolveUrlWithEmbedPlayer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 61
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudStreamLinkHandlerFactory;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
