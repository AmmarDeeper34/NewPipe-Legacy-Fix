.class public final Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "PeertubeCommentsLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;
    .locals 1

    .line 22
    sget-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeCommentsLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x1

    .line 54
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "/api/v1/videos/%s/comment-threads"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 33
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v1, "/videos/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/w/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
