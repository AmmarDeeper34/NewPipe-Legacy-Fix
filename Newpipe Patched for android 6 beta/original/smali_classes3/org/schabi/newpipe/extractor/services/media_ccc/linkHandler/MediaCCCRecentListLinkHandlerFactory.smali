.class public final Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "MediaCCCRecentListLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;
    .locals 1

    .line 20
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCRecentListLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    const-string p1, "recent"

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    const-string p1, "https://media.ccc.de/recent"

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 30
    const-string v0, "^(https?://)?media\\.ccc\\.de/recent/?$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
