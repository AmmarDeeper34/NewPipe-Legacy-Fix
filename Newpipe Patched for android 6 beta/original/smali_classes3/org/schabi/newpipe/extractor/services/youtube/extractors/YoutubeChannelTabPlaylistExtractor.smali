.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;
.super Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
.source "YoutubeChannelTabPlaylistExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;
    }
.end annotation


# instance fields
.field private playlistExisting:Z

.field private final playlistExtractorInstance:Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 54
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->getPlaylistLinkHandler(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p2

    .line 55
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExtractorInstance:Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    return-void
.end method

.method private getPlaylistLinkHandler(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 6

    .line 121
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "UC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "livestreams"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v1, "videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "shorts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 145
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Videos, Shorts and Livestreams tabs can extracted as playlists"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UULV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v3, p1

    goto :goto_3

    .line 136
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UULF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 139
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUSH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 150
    :goto_3
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 152
    const-string v5, ""

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 156
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;

    const-string v1, "Could not create a YouTube playlist from a valid playlist ID"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 128
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid channel ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A content filter is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x35d4f489 -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        -0x1a2eb179 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExisting:Z

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExtractorInstance:Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExisting:Z

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExtractorInstance:Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p1

    return-object p1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExtractorInstance:Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/Extractor;->onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V

    .line 63
    iget-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExisting:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->playlistExisting:Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
