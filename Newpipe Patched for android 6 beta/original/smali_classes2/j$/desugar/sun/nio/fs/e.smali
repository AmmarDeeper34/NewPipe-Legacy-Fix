.class public final Lj$/desugar/sun/nio/fs/e;
.super Ljava/nio/channels/FileChannel;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:Z

.field public final c:Z

.field public final d:Lj$/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 156
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    .line 157
    iput-boolean p2, p0, Lj$/desugar/sun/nio/fs/e;->b:Z

    .line 158
    iput-boolean p3, p0, Lj$/desugar/sun/nio/fs/e;->c:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 159
    :goto_0
    iput-object p4, p0, Lj$/desugar/sun/nio/fs/e;->d:Lj$/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final force(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public final implCloseChannel()V
    .locals 1

    .line 257
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 258
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/e;->b:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->d:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    .line 239
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 251
    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/f;

    invoke-direct {p2, p1, p0}, Lj$/desugar/sun/nio/fs/f;-><init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/e;)V

    return-object p2
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 6

    .line 234
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final position()J
    .locals 2

    .line 187
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public final position(J)Ljava/nio/channels/FileChannel;
    .locals 2

    .line 192
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 137
    instance-of p2, p1, Lj$/desugar/sun/nio/fs/e;

    if-eqz p2, :cond_0

    .line 138
    check-cast p1, Lj$/desugar/sun/nio/fs/e;

    return-object p1

    .line 140
    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/e;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v1, v0}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object p2
.end method

.method public final bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/e;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 164
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Ljava/nio/ByteBuffer;J)I
    .locals 1

    .line 224
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 1

    .line 169
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method

.method public final size()J
    .locals 2

    .line 197
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6

    .line 219
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 6

    .line 213
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final truncate(J)Ljava/nio/channels/FileChannel;
    .locals 2

    .line 202
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 137
    instance-of p2, p1, Lj$/desugar/sun/nio/fs/e;

    if-eqz p2, :cond_0

    .line 138
    check-cast p1, Lj$/desugar/sun/nio/fs/e;

    return-object p1

    .line 140
    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/e;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v1, v0}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object p2
.end method

.method public final bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/e;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    .line 244
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 251
    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/f;

    invoke-direct {p2, p1, p0}, Lj$/desugar/sun/nio/fs/f;-><init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/e;)V

    return-object p2
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 174
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/e;->c:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    .line 197
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    .line 175
    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    .line 177
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final write(Ljava/nio/ByteBuffer;J)I
    .locals 1

    .line 229
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public final write([Ljava/nio/ByteBuffer;II)J
    .locals 1

    .line 182
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method
