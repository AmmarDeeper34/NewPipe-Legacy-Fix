.class public Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "MultiInfoItemsCollector.java"


# instance fields
.field private final playlistCollector:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

.field private final streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field private final userCollector:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    .line 55
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 56
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    .line 57
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)Lorg/schabi/newpipe/extractor/InfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)Lorg/schabi/newpipe/extractor/InfoItem;
    .locals 3

    .line 81
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    move-result-object p1

    return-object p1

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extractor type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->streamCollector:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->userCollector:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;->playlistCollector:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemsCollector;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
