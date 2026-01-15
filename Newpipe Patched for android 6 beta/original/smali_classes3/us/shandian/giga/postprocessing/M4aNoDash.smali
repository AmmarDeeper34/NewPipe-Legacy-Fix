.class Lus/shandian/giga/postprocessing/M4aNoDash;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "M4aNoDash.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 12
    const-string v1, "mp4D-m4a"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
    .locals 3

    .line 33
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/schabi/newpipe/streams/io/SharpStream;

    aput-object p2, v2, v1

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;-><init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V

    const p2, 0x4d344120    # 1.8901043E8f

    .line 34
    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->setMainBrand(I)V

    .line 35
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parseSources()V

    .line 36
    filled-new-array {v1}, [I

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->selectTracks([I)V

    .line 37
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method

.method varargs test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z
    .locals 2

    .line 19
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parse()V

    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->getBrands()[I

    move-result-object p1

    aget p1, p1, v1

    const v0, 0x64617368

    if-eq p1, v0, :cond_0

    const v0, 0x69736f35

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
