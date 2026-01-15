.class public final Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
.source "MediaCCCSearchQueryHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;
    .locals 1

    .line 22
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCSearchQueryHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getAvailableContentFilter()[Ljava/lang/String;
    .locals 3

    .line 27
    const-string v0, "conferences"

    const-string v1, "events"

    const-string v2, "all"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://media.ccc.de/public/events/search?q="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
