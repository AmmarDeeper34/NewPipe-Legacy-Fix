.class public final Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;
.super Ljava/lang/Object;
.source "ExceptionTag.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# instance fields
.field private final errors:Ljava/util/List;

.field private final extras:Ljava/lang/Object;

.field private final item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method private constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 36
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->errors:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->extras:Ljava/lang/Object;

    return-void
.end method

.method public static of(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;)Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;
    .locals 2

    .line 42
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
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

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->errors:Ljava/util/List;

    return-object v0
.end method

.method public synthetic getMaybeAudioTrack()Lj$/util/Optional;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->$default$getMaybeAudioTrack(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMaybeExtras(Ljava/lang/Class;)Lj$/util/Optional;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->extras:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getMaybeQuality()Lj$/util/Optional;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->$default$getMaybeQuality(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getMaybeStreamInfo()Lj$/util/Optional;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$-CC;->$default$getMaybeStreamInfo(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

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

.method public withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
    .locals 3

    .line 98
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->item:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    iget-object v2, p0, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;->errors:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method
