.class Lus/shandian/giga/io/CircularFileWriter$BufferedFile;
.super Ljava/lang/Object;
.source "CircularFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/io/CircularFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferedFile"
.end annotation


# instance fields
.field length:J

.field private offset:J

.field private queue:[B

.field private queueSize:I

.field final target:Lorg/schabi/newpipe/streams/io/SharpStream;

.field final synthetic this$0:Lus/shandian/giga/io/CircularFileWriter;


# direct methods
.method static bridge synthetic -$$Nest$fgetoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputoffset(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-void
.end method

.method constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    .line 378
    new-array p1, p1, [B

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 382
    new-instance p1, Lus/shandian/giga/io/FileStream;

    invoke-direct {p1, p2}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void
.end method

.method constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    .line 378
    new-array p1, p1, [B

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 386
    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void
.end method


# virtual methods
.method available()I
    .locals 3

    .line 429
    iget v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 430
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 431
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v0, v0

    return v0

    .line 434
    :cond_0
    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method close()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 395
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    return-void
.end method

.method flush()V
    .locals 4

    .line 418
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    .line 419
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    return-void
.end method

.method getOffset()J
    .locals 4

    .line 390
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method reset()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 438
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 439
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 440
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method seek(J)V
    .locals 3

    .line 444
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 447
    :cond_0
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 448
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 475
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    iget-wide v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 482
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 480
    const-string v0, "offset=%s  length=%s  queue=%s  absLength=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write([BII)V
    .locals 3

    :goto_0
    if-lez p3, :cond_0

    .line 401
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 411
    :cond_0
    iget-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget p3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 412
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 413
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    :cond_1
    return-void
.end method

.method writeProof([BI)V
    .locals 3

    .line 452
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    return-void

    .line 459
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 462
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    invoke-interface {v2, v0}, Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;->handle(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    throw v0
.end method
