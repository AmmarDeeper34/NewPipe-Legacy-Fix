.class public final Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "BandcampFeaturedLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;
    .locals 1

    .line 26
    sget-object v0, Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/bandcamp/linkHandler/BandcampFeaturedLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://bandcamp.com/api/bcweekly/3/list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    const-string p1, "Featured"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_2
    :goto_0
    const-string p1, "Radio"

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    const-string p2, "Featured"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    const-string p1, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    return-object p1

    .line 36
    :cond_0
    const-string p2, "Radio"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    const-string p1, "https://bandcamp.com/api/bcweekly/3/list"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 57
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    const-string v0, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://bandcamp.com/api/bcweekly/3/list"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->isRadioUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
