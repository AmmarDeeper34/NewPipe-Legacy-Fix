.class public Lus/shandian/giga/io/FileStream;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "FileStream.java"


# instance fields
.field public source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;-><init>()V

    .line 20
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public available()J
    .locals 4

    .line 50
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

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

.method public canSeek()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .line 58
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .line 129
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 1

    .line 29
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .line 34
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 39
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public rewind()V
    .locals 3

    .line 74
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 1

    .line 124
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public setLength(J)V
    .locals 1

    .line 119
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public skip(J)J
    .locals 1

    .line 44
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public write(B)V
    .locals 1

    .line 104
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 109
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 114
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
