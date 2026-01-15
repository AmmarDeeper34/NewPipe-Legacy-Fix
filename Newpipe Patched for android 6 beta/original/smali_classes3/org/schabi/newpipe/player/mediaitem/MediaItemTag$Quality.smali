.class public final Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;
.super Ljava/lang/Object;
.source "MediaItemTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quality"
.end annotation


# instance fields
.field private final selectedVideoStreamIndex:I

.field private final sortedVideoStreams:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/List;

    .line 114
    iput p2, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    return-void
.end method

.method static of(Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;
    .locals 1

    .line 119
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;-><init>(Ljava/util/List;I)V

    return-object v0
.end method


# virtual methods
.method public getSelectedVideoStream()Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 2

    .line 134
    iget v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/List;

    iget v1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedVideoStreamIndex()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    return v0
.end method

.method public getSortedVideoStreams()Ljava/util/List;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/List;

    return-object v0
.end method
