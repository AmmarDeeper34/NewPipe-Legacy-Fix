.class public Lus/shandian/giga/io/ChunkFileInputStream;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "ChunkFileInputStream.java"


# instance fields
.field private final length:J

.field private final offset:J

.field private final onProgress:Lus/shandian/giga/io/ProgressReport;

.field private position:J

.field private progressReport:J

.field private source:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;JJLus/shandian/giga/io/ProgressReport;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;-><init>()V

    .line 19
    iput-object p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 20
    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    sub-long v0, p4, p2

    .line 21
    iput-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    const-wide/16 v2, 0x0

    .line 22
    iput-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 23
    iput-object p6, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/io/ProgressReport;

    const-wide/32 v2, 0x40000

    .line 24
    iput-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    const-wide/16 v2, 0x1

    cmp-long p6, v0, v2

    if-ltz p6, :cond_1

    .line 30
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    move-result-wide v0

    cmp-long p1, v0, p4

    if-ltz p1, :cond_0

    .line 38
    iget-object p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    return-void

    .line 32
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid file length. expected = %s  found = %s"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p4}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p3, p5, p6

    const/4 p3, 0x1

    aput-object p4, p5, p3

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 34
    iget-object p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 35
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The chunk is empty or invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()J
    .locals 4

    .line 107
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    iget-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public canRead()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public canRewind()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .line 113
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void
.end method

.method public getFilePointer()J
    .locals 4

    .line 47
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    iget-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7

    .line 52
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 58
    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 66
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lus/shandian/giga/io/ChunkFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    .line 71
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long/2addr v4, v0

    long-to-int p3, v4

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    move-result p1

    .line 79
    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 81
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/io/ProgressReport;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    .line 82
    invoke-interface {v0, p2, p3}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    .line 83
    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    const-wide/32 v0, 0x40000

    add-long/2addr p2, v0

    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    :cond_2
    return p1
.end method

.method public rewind()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 125
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 3

    .line 91
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 97
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 99
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 100
    iput-wide p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public write(B)V
    .locals 0

    .line 0
    return-void
.end method

.method public write([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 0
    return-void
.end method
