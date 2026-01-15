.class public final Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;
.super Ljava/lang/Object;
.source "PlaceholderTag.java"

# interfaces
.implements Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# static fields
.field public static final EMPTY:Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;


# instance fields
.field private final extras:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;->EMPTY:Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;->extras:Ljava/lang/Object;

    return-void
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

    .line 33
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

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

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;->extras:Ljava/lang/Object;

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

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "Placeholder"

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Placeholder"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "Placeholder"

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "Placeholder"

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
    .locals 1

    .line 83
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/mediaitem/PlaceholderTag;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
