.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "StreamInfoItemsCollector.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V
    .locals 0

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :catch_1
    return-void
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 43
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 52
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 57
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 59
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 62
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 64
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 67
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 69
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 72
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getViewCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 74
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 77
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 79
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 82
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 84
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 87
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 89
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 92
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 94
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 97
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortDescription(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 99
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 102
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isShortFormContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortFormContent(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 104
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 107
    :goto_a
    :try_start_b
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    .line 109
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_b
    return-object v0

    .line 44
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    const-string v0, "Found ad"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
