.class public Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "ChannelInfo.java"


# instance fields
.field private avatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private donationLinks:[Ljava/lang/String;

.field private feedUrl:Ljava/lang/String;

.field private parentChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private parentChannelName:Ljava/lang/String;

.field private parentChannelUrl:Ljava/lang/String;

.field private subscriberCount:J

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    const-wide/16 p2, -0x1

    .line 139
    iput-wide p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    .line 0
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 143
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    .line 145
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    .line 147
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    .line 149
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    .line 150
    iput-object p2, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 53
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 7

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v2

    .line 60
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setAvatars(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getBanners()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setBanners(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 80
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setFeedUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 82
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 86
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getSubscriberCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setSubscriberCount(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 88
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 92
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setDescription(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 94
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 98
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 100
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 104
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 106
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 110
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 112
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 116
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->isVerified()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 118
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 122
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTabs(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 124
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 128
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTags(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    move-object p0, v0

    .line 130
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    :goto_a
    return-object v1
.end method


# virtual methods
.method public getAvatars()Ljava/util/List;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    return-object v0
.end method

.method public getBanners()Ljava/util/List;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentChannelAvatars()Ljava/util/List;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getParentChannelName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentChannelUrl()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    return-wide v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public setAvatars(Ljava/util/List;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    return-void
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setFeedUrl(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    return-void
.end method

.method public setParentChannelAvatars(Ljava/util/List;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setParentChannelName(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    return-void
.end method

.method public setParentChannelUrl(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z

    return-void
.end method
