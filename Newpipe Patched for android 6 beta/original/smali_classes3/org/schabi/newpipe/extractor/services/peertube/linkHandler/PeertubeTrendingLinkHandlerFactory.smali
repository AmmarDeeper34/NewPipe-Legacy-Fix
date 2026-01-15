.class public final Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "PeertubeTrendingLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

.field public static final KIOSK_MAP:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$HMvUVxtgnX3xrQkJHr6qE0gISVc(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 65
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IC37eYLlJ-RhyQUDLCsCjggyJJY()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 68
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "no id found for this url"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    .line 22
    const-string v7, "Local"

    const-string v8, "%s/api/v1/videos?sort=-publishedAt&isLocal=true"

    const-string v1, "Trending"

    const-string v2, "%s/api/v1/videos?sort=-trending"

    const-string v3, "Most liked"

    const-string v4, "%s/api/v1/videos?sort=-likes"

    const-string v5, "Recently added"

    const-string v6, "%s/api/v1/videos?sort=-publishedAt"

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->KIOSK_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;
    .locals 1

    .line 32
    sget-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 55
    const-string v0, "/videos/trending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string p1, "Trending"

    return-object p1

    .line 57
    :cond_0
    const-string v0, "/videos/most-liked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string p1, "Most liked"

    return-object p1

    .line 59
    :cond_1
    const-string v0, "/videos/recently-added"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const-string p1, "Recently added"

    return-object p1

    .line 61
    :cond_2
    const-string v0, "/videos/local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string p1, "Local"

    return-object p1

    .line 64
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->KIOSK_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 67
    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory$$ExternalSyntheticLambda4;-><init>()V

    .line 68
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    sget-object p2, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->KIOSK_MAP:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 75
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "/videos?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/videos/trending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/videos/most-liked"

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/videos/recently-added"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/videos/local"

    .line 78
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
