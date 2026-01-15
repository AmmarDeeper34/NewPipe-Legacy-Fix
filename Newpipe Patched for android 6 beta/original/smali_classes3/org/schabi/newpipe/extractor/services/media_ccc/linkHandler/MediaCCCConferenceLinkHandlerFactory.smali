.class public final Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "MediaCCCConferenceLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;
    .locals 1

    .line 31
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)"

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://media.ccc.de/c/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferenceLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method
