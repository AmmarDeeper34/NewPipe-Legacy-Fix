.class public Lus/shandian/giga/io/CircularFileWriter;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "CircularFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/shandian/giga/io/CircularFileWriter$BufferedFile;,
        Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;,
        Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;
    }
.end annotation


# instance fields
.field private aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field private final callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

.field private maxLengthKnown:J

.field public onProgress:Lus/shandian/giga/io/ProgressReport;

.field public onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

.field private out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field private reportPosition:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Ljava/io/File;Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 31
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create a temporal file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {v0, p0, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V

    iput-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 40
    new-instance p2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {p2, p0, p1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 42
    iput-object p3, p0, Lus/shandian/giga/io/CircularFileWriter;->callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

    const-wide/32 p1, 0x10000

    .line 44
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    return-void
.end method

.method private flushAuxiliar(J)V
    .locals 14

    .line 48
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 53
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 55
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/high16 v1, 0x20000

    .line 56
    new-array v2, v1, [B

    .line 58
    iget-object v3, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 59
    iget-object v3, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v8, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-wide v9, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v8, v9, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    move-wide v8, p1

    :goto_2
    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v6

    if-lez v3, :cond_4

    .line 63
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    .line 64
    iget-object v12, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v12, v12, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v12, v2, v5, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    move-result v3

    if-ge v3, v4, :cond_3

    sub-long v3, p1, v8

    goto :goto_3

    .line 71
    :cond_3
    iget-object v10, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v10, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v10, v3

    sub-long/2addr v8, v10

    goto :goto_2

    :cond_4
    move-wide v3, p1

    :goto_3
    if-eqz v0, :cond_7

    .line 76
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v12, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v0, v8, v12

    if-ltz v0, :cond_6

    .line 78
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-gez v0, :cond_5

    .line 79
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    iget-object v12, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v12}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-static {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    .line 80
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0, v6, v7}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    .line 81
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    goto :goto_4

    .line 83
    :cond_5
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    .line 84
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v8, v3

    invoke-static {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    goto :goto_4

    .line 87
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0, v6, v7}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    goto :goto_4

    .line 90
    :cond_7
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    add-long/2addr v8, v3

    invoke-static {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    .line 91
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->-$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V

    .line 94
    :goto_4
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v8, v3

    iput-wide v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 96
    iget-wide v12, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_8

    .line 97
    iput-wide v8, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 100
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v12, v3, v8

    if-gez v12, :cond_a

    sub-long/2addr v8, v3

    .line 105
    iput-wide v8, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    move-wide v12, v6

    :goto_5
    cmp-long v0, v8, v6

    if-lez v0, :cond_9

    .line 108
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .line 109
    iget-object v6, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v6, v2, v5, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    move-result v0

    .line 111
    iget-object v6, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v6, v12, v13}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 112
    iget-object v6, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v6, v2, v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v6, v0

    add-long/2addr v12, v6

    add-long/2addr v3, v6

    sub-long/2addr v8, v6

    .line 118
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, v3, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    const-wide/16 v6, 0x0

    goto :goto_5

    .line 121
    :cond_9
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-wide v2, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    return-void

    :cond_a
    const-wide/32 v1, 0xf00000

    cmp-long v3, v8, v1

    if-lez v3, :cond_b

    .line 126
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 129
    :cond_b
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->reset()V

    return-void
.end method


# virtual methods
.method public available()J
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "write-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canRead()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

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
    .locals 2

    .line 160
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->close()V

    .line 162
    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 164
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->close()V

    .line 166
    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    :cond_1
    return-void
.end method

.method public finalizeFile()J
    .locals 5

    .line 140
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    .line 142
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 145
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 146
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 147
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->close()V

    return-wide v0
.end method

.method public flush()V
    .locals 5

    .line 245
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 246
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 248
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v0, v2

    .line 249
    iget-wide v2, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 250
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "write-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 1

    .line 333
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "write-only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 0

    .line 339
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "write-only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind()V
    .locals 3

    .line 262
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, v1, v2}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    .line 266
    :cond_0
    invoke-virtual {p0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    const-wide/32 v0, 0x10000

    .line 268
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    return-void
.end method

.method public seek(J)V
    .locals 8

    .line 273
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v3, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v1, v3

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 277
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v4

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->flush()V

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    if-gtz v3, :cond_2

    .line 290
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 291
    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 292
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    return-void

    .line 294
    :cond_1
    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 295
    iget-object p1, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {p1, v4, v5}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    return-void

    .line 287
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desired offset is outside of range=0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 4

    .line 256
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    return-wide p1
.end method

.method public write(B)V
    .locals 3

    const/4 v0, 0x1

    .line 172
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 177
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 187
    :cond_0
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v4

    .line 188
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v6

    .line 189
    iget-object v8, v0, Lus/shandian/giga/io/CircularFileWriter;->callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

    invoke-interface {v8}, Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;->check()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v14, v8, v10

    if-nez v14, :cond_1

    const-wide/32 v8, 0x7fffffff

    goto :goto_0

    :cond_1
    cmp-long v10, v8, v4

    if-ltz v10, :cond_b

    sub-long/2addr v8, v4

    .line 199
    :goto_0
    iget-object v10, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v14, v10, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    cmp-long v19, v14, v16

    if-lez v19, :cond_2

    iget-object v11, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v12, v11, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v11, v4, v12

    if-ltz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    cmp-long v12, v6, v14

    if-ltz v12, :cond_4

    .line 200
    iget-object v12, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v12, v12, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v17, v4, v12

    if-gez v17, :cond_3

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v16, 0x1

    :goto_3
    if-eqz v11, :cond_7

    int-to-long v4, v3

    add-long/2addr v6, v4

    if-eqz v16, :cond_6

    cmp-long v4, v14, v6

    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    move-wide v14, v6

    goto :goto_4

    :cond_6
    add-long/2addr v14, v4

    .line 213
    :goto_4
    invoke-virtual {v10, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    const-wide/32 v1, 0xf00000

    cmp-long v3, v14, v1

    if-ltz v3, :cond_9

    cmp-long v1, v14, v8

    if-gtz v1, :cond_9

    .line 216
    invoke-direct {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    .line 220
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long v8, v6, v4

    :cond_8
    const-wide/32 v4, 0x7fffffff

    .line 223
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 224
    iget-object v5, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v5, v1, v2, v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    sub-int/2addr v3, v4

    add-int/2addr v2, v4

    if-lez v3, :cond_9

    .line 230
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    .line 234
    :cond_9
    :goto_5
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    if-eqz v1, :cond_a

    .line 235
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v1

    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 236
    iget-wide v3, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_a

    const-wide/32 v3, 0x10000

    add-long/2addr v3, v1

    .line 237
    iput-wide v3, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    .line 238
    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    invoke-interface {v3, v1, v2}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    :cond_a
    :goto_6
    return-void

    .line 194
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The reported offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
