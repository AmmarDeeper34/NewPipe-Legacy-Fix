.class Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "Mp4FromDashMuxer.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 14
    const-string v1, "mp4D-mp4"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
    .locals 1

    .line 19
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;-><init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parseSources()V

    const/4 p2, 0x0

    .line 21
    filled-new-array {p2, p2}, [I

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->selectTracks([I)V

    .line 22
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method
