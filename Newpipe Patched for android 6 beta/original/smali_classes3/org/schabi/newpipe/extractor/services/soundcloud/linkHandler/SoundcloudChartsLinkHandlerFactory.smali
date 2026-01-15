.class public final Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "SoundcloudChartsLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;
    .locals 1

    .line 21
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/soundcloud/linkHandler/SoundcloudChartsLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    const-string p1, "New & hot"

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    const-string p1, "https://soundcloud.com/charts/new"

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 39
    const-string v0, "^https?://(www\\.|m\\.)?soundcloud.com/charts(/top|/new)?/?([#?].*)?$"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
