.class public Lorg/jsoup/internal/ControllableInputStream;
.super Ljava/io/FilterInputStream;
.source "ControllableInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private allowClose:Z

.field private final buff:Lorg/jsoup/internal/SimpleBufferedInput;

.field private contentLength:I

.field private interrupted:Z

.field private markPos:I

.field private maxSize:I

.field private readPos:I

.field private remaining:I

.field private startTime:J

.field private timeout:J


# direct methods
.method private constructor <init>(Lorg/jsoup/internal/SimpleBufferedInput;I)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->allowClose:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->contentLength:I

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 40
    iput-object p1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 41
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 42
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 43
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jsoup/internal/ControllableInputStream;->startTime:J

    return-void
.end method

.method private emitProgress()V
    .locals 0

    .line 0
    return-void
.end method

.method private expired()Z
    .locals 6

    .line 237
    iget-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 240
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 241
    iget-wide v2, p0, Lorg/jsoup/internal/ControllableInputStream;->startTime:J

    sub-long/2addr v0, v2

    .line 242
    iget-wide v2, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method public static wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;
    .locals 2

    .line 55
    instance-of v0, p0, Lorg/jsoup/internal/ControllableInputStream;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/jsoup/internal/ControllableInputStream;

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lorg/jsoup/internal/ControllableInputStream;

    new-instance v1, Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-direct {v1, p0}, Lorg/jsoup/internal/SimpleBufferedInput;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p1}, Lorg/jsoup/internal/ControllableInputStream;-><init>(Lorg/jsoup/internal/SimpleBufferedInput;I)V

    return-object v0
.end method


# virtual methods
.method public allowClose(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/jsoup/internal/ControllableInputStream;->allowClose:Z

    return-void
.end method

.method public baseReadFully()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {v0}, Lorg/jsoup/internal/SimpleBufferedInput;->baseReadFully()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->allowClose:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0

    .line 172
    iget p1, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 173
    iget-object p1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {p1}, Lorg/jsoup/internal/SimpleBufferedInput;->setMark()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public max()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    return v0
.end method

.method public max(I)V
    .locals 2

    .line 198
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 200
    :cond_0
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 201
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    if-nez p1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    :goto_0
    invoke-virtual {v0, p1}, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining(I)V

    return-void
.end method

.method public read([BII)I
    .locals 8

    .line 75
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jsoup/internal/ControllableInputStream;->emitProgress()V

    .line 77
    :cond_0
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-boolean v2, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    const/4 v3, -0x1

    if-nez v2, :cond_a

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    if-gtz v2, :cond_2

    goto :goto_5

    .line 80
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    iput-boolean v1, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    return v3

    :cond_3
    if-eqz v0, :cond_4

    .line 86
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    if-le p3, v1, :cond_4

    move p3, v1

    .line 88
    :cond_4
    iget-object v1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    if-eqz v0, :cond_5

    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    goto :goto_1

    :cond_5
    const v2, 0x7fffffff

    :goto_1
    invoke-virtual {v1, v2}, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining(I)V

    .line 91
    :goto_2
    invoke-direct {p0}, Lorg/jsoup/internal/ControllableInputStream;->expired()Z

    move-result v1

    if-nez v1, :cond_9

    .line 95
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 97
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    iput v2, p0, Lorg/jsoup/internal/ControllableInputStream;->contentLength:I

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    if-lez v1, :cond_7

    .line 100
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 102
    :cond_7
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 104
    :goto_3
    invoke-direct {p0}, Lorg/jsoup/internal/ControllableInputStream;->emitProgress()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 107
    :goto_4
    invoke-direct {p0}, Lorg/jsoup/internal/ControllableInputStream;->expired()Z

    move-result v2

    if-nez v2, :cond_8

    iget-wide v4, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_8

    goto :goto_2

    .line 108
    :cond_8
    throw v1

    .line 92
    :cond_9
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    return v3
.end method

.method public reset()V
    .locals 2

    .line 156
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    if-ltz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {v0}, Lorg/jsoup/internal/SimpleBufferedInput;->rewindToMark()V

    .line 158
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {v0}, Lorg/jsoup/internal/SimpleBufferedInput;->clearMark()V

    .line 159
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    if-eqz v0, :cond_0

    .line 160
    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 161
    iget-object v1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {v1, v0}, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 164
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining(I)V

    .line 166
    :goto_0
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    return-void

    .line 156
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetFullyRead()V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    invoke-virtual {v0}, Lorg/jsoup/internal/SimpleBufferedInput;->resetFullyRead()V

    return-void
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
