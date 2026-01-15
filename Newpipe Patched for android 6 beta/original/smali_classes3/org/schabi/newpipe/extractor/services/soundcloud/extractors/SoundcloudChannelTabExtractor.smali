.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelTabExtractor;
.super Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
.source "SoundcloudChannelTabExtractor.java"


# instance fields
.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelTabExtractor;->userId:Ljava/lang/String;

    return-void
.end method

.method private getEndpoint()Ljava/lang/String;
    .locals 4

    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "likes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 50
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    const-string v0, "/likes"

    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "/tracks"

    return-object v0

    .line 46
    :pswitch_2
    const-string v0, "/albums"

    return-object v0

    .line 44
    :pswitch_3
    const-string v0, "/playlists_without_albums"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_3
        -0x5459b01c -> :sswitch_2
        -0x3399c778 -> :sswitch_1
        0x62343bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    .line 66
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelTabExtractor;->userId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelTabExtractor;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api-v2.soundcloud.com/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?client_id="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&limit=20&linked_partitioning=1"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelTabExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    if-eqz p1, :cond_5

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 78
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 84
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_3

    .line 85
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 93
    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getInfoItemsFromApi(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    move-object v4, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 102
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    :cond_3
    :goto_0
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    .line 112
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page doesn\'t contain an URL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0

    .line 0
    return-void
.end method
