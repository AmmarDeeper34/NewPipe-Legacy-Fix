.class public Lorg/schabi/newpipe/util/SecondaryStreamHelper;
.super Ljava/lang/Object;
.source "SecondaryStreamHelper.java"


# instance fields
.field private final position:I

.field private final streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# direct methods
.method public static synthetic $r8$lambda$1dkHcVK-MXv0loWIbeGJbRsPHJA(Lorg/schabi/newpipe/extractor/stream/AudioStream;)Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$gvJ431L3DGgFyNygKhcCtiUS7is(Lorg/schabi/newpipe/extractor/stream/AudioStream;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eq v0, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

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

.method public constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 23
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->position:I

    if-ltz p1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "selected stream not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAudioStreamFor(Landroid/content/Context;Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 2

    .line 44
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p2

    .line 46
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 48
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/util/SecondaryStreamHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/schabi/newpipe/util/SecondaryStreamHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 49
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 52
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->isLimitingDataUsage(Landroid/content/Context;)Z

    move-result p0

    .line 51
    invoke-static {p2, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p1, p0}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p0

    .line 53
    invoke-virtual {p0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    return-object p0

    .line 55
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne p2, v0, :cond_1

    .line 57
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/util/SecondaryStreamHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/schabi/newpipe/util/SecondaryStreamHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 58
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 60
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->isLimitingDataUsage(Landroid/content/Context;)Z

    move-result p0

    .line 59
    invoke-static {p2, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p1, p0}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p0

    .line 61
    invoke-virtual {p0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getSizeInBytes()J
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    iget v1, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->position:I

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream()Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    return-object v0
.end method
