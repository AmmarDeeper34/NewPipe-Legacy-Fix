.class public final Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "MediaCCCConferencesListLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;
    .locals 1

    .line 17
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCConferencesListLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    const-string p1, "conferences"

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    const-string p1, "https://media.ccc.de/public/conferences"

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 35
    const-string v0, "https://media.ccc.de/b/conferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://media.ccc.de/public/conferences"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://api.media.ccc.de/public/conferences"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
