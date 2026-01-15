.class public final Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "PeertubeChannelTabLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;
    .locals 1

    .line 19
    sget-object v0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;

    return-object v0
.end method

.method public static getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "channels"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 33
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedTabException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedTabException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_0
    const-string p0, "/video-channels"

    return-object p0

    .line 27
    :pswitch_1
    const-string p0, "/videos"

    return-object p0

    .line 31
    :pswitch_2
    const-string p0, "/video-playlists"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 45
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, p4}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 55
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelTabLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->onAcceptUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
