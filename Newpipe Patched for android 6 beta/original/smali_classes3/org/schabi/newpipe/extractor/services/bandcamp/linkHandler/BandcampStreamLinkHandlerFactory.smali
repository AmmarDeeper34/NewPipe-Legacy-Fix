.class public final Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.source "BandcampStreamLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;
    .locals 1

    .line 27
    sget-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "bandcamp.com/\\?show="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampStreamLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://bandcamp.com/?show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 2

    .line 65
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://.+\\..+/track/.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 75
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isArtistDomain(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
