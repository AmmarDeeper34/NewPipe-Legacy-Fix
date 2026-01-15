.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "CommentsInfoItemsCollector.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V
    .locals 0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 4

    .line 19
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 29
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 31
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 34
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 36
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 39
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 41
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 44
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 46
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 49
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 51
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 54
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 56
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 59
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getLikeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setLikeCount(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 61
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 64
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualLikeCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualLikeCount(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 66
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 69
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 71
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 75
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isHeartedByUploader()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setHeartedByUploader(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 77
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 81
    :goto_a
    :try_start_b
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isPinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setPinned(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    .line 83
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 87
    :goto_b
    :try_start_c
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getStreamPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setStreamPosition(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    .line 89
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 93
    :goto_c
    :try_start_d
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplyCount(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    .line 95
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 99
    :goto_d
    :try_start_e
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    .line 101
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 105
    :goto_e
    :try_start_f
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isChannelOwner()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setChannelOwner(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    .line 107
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 112
    :goto_f
    :try_start_10
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->hasCreatorReply()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCreatorReply(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception p1

    .line 114
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_10
    return-object v0
.end method
