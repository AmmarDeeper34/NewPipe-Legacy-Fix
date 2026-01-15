.class public final Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;
.super Ljava/lang/Object;
.source "MediaItemTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrack"
.end annotation


# instance fields
.field private final audioStreams:Ljava/util/List;

.field private final selectedAudioStreamIndex:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    .line 147
    iput p2, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    return-void
.end method

.method static of(Ljava/util/List;I)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;
    .locals 1

    .line 152
    new-instance v0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;-><init>(Ljava/util/List;I)V

    return-object v0
.end method


# virtual methods
.method public getAudioStreams()Ljava/util/List;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAudioStream()Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 2

    .line 167
    iget v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    iget v1, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedAudioStreamIndex()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    return v0
.end method
