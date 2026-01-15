.class public abstract Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
.super Lorg/schabi/newpipe/extractor/Extractor;
.source "ChannelExtractor.java"


# direct methods
.method protected constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public abstract getAvatars()Ljava/util/List;
.end method

.method public abstract getBanners()Ljava/util/List;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFeedUrl()Ljava/lang/String;
.end method

.method public abstract getParentChannelAvatars()Ljava/util/List;
.end method

.method public abstract getParentChannelName()Ljava/lang/String;
.end method

.method public abstract getParentChannelUrl()Ljava/lang/String;
.end method

.method public abstract getSubscriberCount()J
.end method

.method public abstract getTabs()Ljava/util/List;
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract isVerified()Z
.end method
