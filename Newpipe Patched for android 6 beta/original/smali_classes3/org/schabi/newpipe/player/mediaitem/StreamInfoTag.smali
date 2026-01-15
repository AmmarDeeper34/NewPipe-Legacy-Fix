.class public final Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
.super Ljava/lang/Object;
.source "StreamInfoTag.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# instance fields
.field private final audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

.field private final extras:Ljava/lang/Object;

.field private final quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

.field private final streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method private constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 40
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 41
    iput-object p4, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->extras:Ljava/lang/Object;

    return-void
.end method

.method public static of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
    .locals 2

    .line 64
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
    .locals 1

    .line 59
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->of(Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    move-result-object p1

    .line 60
    new-instance p2, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1, v0}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static of(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/util/List;ILjava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
    .locals 0

    .line 49
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->of(Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    move-result-object p1

    .line 51
    invoke-static {p3, p4}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->of(Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    move-result-object p2

    .line 52
    new-instance p3, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Ljava/lang/Object;)V

    return-object p3
.end method


# virtual methods
.method public synthetic asMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->$default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getMaybeAudioTrack()Lj$/util/Optional;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMaybeExtras(Ljava/lang/Class;)Lj$/util/Optional;
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->extras:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getMaybeQuality()Lj$/util/Optional;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMaybeStreamInfo()Lj$/util/Optional;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic makeMediaId()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->$default$makeMediaId(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    move-result-object p1

    return-object p1
.end method

.method public withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;
    .locals 4

    .line 137
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->quality:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    iget-object v3, p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;->audioTrack:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Ljava/lang/Object;)V

    return-object v0
.end method
