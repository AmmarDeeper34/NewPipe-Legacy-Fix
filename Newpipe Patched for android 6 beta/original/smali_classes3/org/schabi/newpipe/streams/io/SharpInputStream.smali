.class public Lorg/schabi/newpipe/streams/io/SharpInputStream;
.super Ljava/io/InputStream;
.source "SharpInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final stream:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SharpStream is not readable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 5

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->available()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpInputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
