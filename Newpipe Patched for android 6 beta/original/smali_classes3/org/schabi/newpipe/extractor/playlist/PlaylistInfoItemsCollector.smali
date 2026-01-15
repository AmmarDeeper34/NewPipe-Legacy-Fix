.class public Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "PlaylistInfoItemsCollector.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;
    .locals 4

    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 25
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 27
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 30
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderVerified(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 32
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 35
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 37
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 40
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getStreamCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setStreamCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 42
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 45
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 47
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 50
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 52
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_6
    return-object v0
.end method
