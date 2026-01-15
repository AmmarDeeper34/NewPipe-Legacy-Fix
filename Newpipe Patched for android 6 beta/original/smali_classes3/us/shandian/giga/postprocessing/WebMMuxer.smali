.class Lus/shandian/giga/postprocessing/WebMMuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "WebMMuxer.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 16
    const-string v1, "webm"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
    .locals 8

    .line 21
    new-instance v0, Lorg/schabi/newpipe/streams/WebMWriter;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/streams/WebMWriter;-><init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMWriter;->parseSources()V

    .line 25
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 28
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->getTracksFromSource(I)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object v4

    const/4 v5, 0x0

    .line 29
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 30
    aget-object v6, v4, v5

    iget-object v6, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    sget-object v7, Lorg/schabi/newpipe/streams/WebMReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    if-ne v6, v7, :cond_0

    .line 31
    aput v5, v1, v3

    .line 32
    array-length v3, p2

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->selectTracks([I)V

    .line 39
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method
