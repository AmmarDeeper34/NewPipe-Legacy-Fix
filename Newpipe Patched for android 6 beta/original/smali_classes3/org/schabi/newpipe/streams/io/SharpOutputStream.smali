.class public Lorg/schabi/newpipe/streams/io/SharpOutputStream;
.super Ljava/io/OutputStream;
.source "SharpOutputStream.java"


# instance fields
.field private final stream:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SharpStream is not writable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write(B)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    return-void
.end method
