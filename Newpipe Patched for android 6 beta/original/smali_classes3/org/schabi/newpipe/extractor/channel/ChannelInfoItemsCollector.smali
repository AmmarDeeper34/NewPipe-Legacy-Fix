.class public final Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "ChannelInfoItemsCollector.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    .locals 4

    .line 35
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getSubscriberCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setSubscriberCount(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 45
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getStreamCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 47
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 50
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 52
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 55
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setDescription(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 57
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 60
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->isVerified()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setVerified(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 62
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_4
    return-object v0
.end method
