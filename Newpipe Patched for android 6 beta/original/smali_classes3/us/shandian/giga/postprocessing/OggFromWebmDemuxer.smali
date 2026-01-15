.class Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "OggFromWebmDemuxer.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 14
    const-string v1, "webm-ogg-d"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
    .locals 3

    .line 37
    new-instance v0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    iget-object v2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v0, p2, p1, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 38
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parseSource()V

    .line 39
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->selectTrack(I)V

    .line 40
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->build()V

    const/4 p1, -0x1

    return p1
.end method

.method varargs test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z
    .locals 3

    const/4 v0, 0x4

    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    aget-object p1, p1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const v0, 0x1a45dfa3

    if-eq p1, v0, :cond_1

    const v0, 0x4f676753

    if-ne p1, v0, :cond_0

    return v1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "file not recognized, failed to demux the audio stream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
