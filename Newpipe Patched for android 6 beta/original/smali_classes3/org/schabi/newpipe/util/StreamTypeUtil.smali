.class public abstract Lorg/schabi/newpipe/util/StreamTypeUtil;
.super Ljava/lang/Object;
.source "StreamTypeUtil.java"


# direct methods
.method public static isAudio(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z
    .locals 1

    .line 21
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z
    .locals 1

    .line 47
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideo(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z
    .locals 1

    .line 34
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
