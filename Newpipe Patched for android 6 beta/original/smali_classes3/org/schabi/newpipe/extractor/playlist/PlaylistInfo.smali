.class public final Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "PlaylistInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    }
.end annotation


# instance fields
.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 178
    const-string p1, ""

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 184
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    .line 186
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    .line 188
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 77
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 4

    .line 95
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getStreamCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 111
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 114
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 116
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 119
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 121
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 124
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    .line 136
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getBanners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setBanners(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    .line 156
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 159
    :goto_a
    :try_start_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    .line 161
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 165
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 167
    :cond_0
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V

    .line 171
    :cond_1
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 173
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/extractor/ListExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    return-void
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-void
.end method

.method public setStreamCount(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    return-void
.end method
