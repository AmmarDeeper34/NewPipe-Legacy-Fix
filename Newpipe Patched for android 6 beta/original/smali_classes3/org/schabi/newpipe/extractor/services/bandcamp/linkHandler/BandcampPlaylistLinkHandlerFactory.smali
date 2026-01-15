.class public final Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "BandcampPlaylistLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;
    .locals 1

    .line 24
    sget-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampPlaylistLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 2

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://.+\\..+/album/.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isArtistDomain(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
