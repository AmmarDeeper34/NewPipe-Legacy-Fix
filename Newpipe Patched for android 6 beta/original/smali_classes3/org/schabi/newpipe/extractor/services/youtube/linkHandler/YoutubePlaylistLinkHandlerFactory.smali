.class public final Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubePlaylistLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1
.end method

.method public fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 4

    .line 84
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 85
    const-string v1, "list"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "v"

    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&list="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v2, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    new-instance v3, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-direct {v3, p1, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    :cond_1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    return-object p1

    .line 96
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error could not parse URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 36
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "the url given is neither a video nor a playlist URL"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    :goto_1
    const-string v0, "list"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 54
    const-string v0, "[a-zA-Z0-9_-]{10,}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 55
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "the list-ID given in the URL does not match the list pattern"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "the URL given does not include a playlist"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "the url given is not a YouTube-URL"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error could not parse URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.youtube.com/playlist?list="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
