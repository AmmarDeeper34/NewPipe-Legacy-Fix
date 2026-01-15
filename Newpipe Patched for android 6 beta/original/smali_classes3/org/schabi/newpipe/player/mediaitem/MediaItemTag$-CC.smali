.class public abstract synthetic Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;
.super Ljava/lang/Object;
.source "MediaItemTag.java"


# direct methods
.method public static $default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;
    .locals 4

    .line 84
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    .line 87
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    .line 88
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    .line 89
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    .line 90
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 94
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    move-result-object v1

    .line 97
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    .line 99
    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->makeMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setRequestMetadata(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getMaybeAudioTrack(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;
    .locals 0

    .line 61
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getMaybeQuality(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;
    .locals 0

    .line 56
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getMaybeStreamInfo(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;
    .locals 0

    .line 51
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static $default$makeMediaId(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;
    .locals 2

    .line 70
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda0;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda1;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    .line 73
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object p0

    .line 74
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$from$0(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    return-object p0
.end method

.method public static synthetic lambda$from$1(Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;)Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    return-object p0
.end method
