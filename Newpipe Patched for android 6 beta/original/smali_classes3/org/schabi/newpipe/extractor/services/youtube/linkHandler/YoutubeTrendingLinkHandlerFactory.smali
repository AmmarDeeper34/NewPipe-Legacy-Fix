.class public final Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeTrendingLinkHandlerFactory.java"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    const-string p1, "Trending"

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    const-string p1, "https://www.youtube.com/feed/trending"

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "/feed/trending"

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method
