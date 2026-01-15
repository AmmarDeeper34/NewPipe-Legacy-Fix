.class Lorg/jsoup/internal/SimpleBufferedInput;
.super Ljava/io/FilterInputStream;
.source "SimpleBufferedInput.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field static final BufferPool:Lorg/jsoup/internal/SoftPool;


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private byteBuf:[B

.field private capRemaining:I

.field private inReadFully:Z


# direct methods
.method public static synthetic $r8$lambda$_d0mCoj7v8ptT8jtEKRKT4c4_jk()[B
    .locals 1

    const/16 v0, 0x2000

    .line 19
    new-array v0, v0, [B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    new-instance v1, Lorg/jsoup/internal/SimpleBufferedInput$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/internal/SimpleBufferedInput$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/jsoup/internal/SimpleBufferedInput;->BufferPool:Lorg/jsoup/internal/SoftPool;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    :cond_0
    return-void
.end method

.method private compact()V
    .locals 4

    .line 142
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    if-eqz v0, :cond_4

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    if-ltz v2, :cond_1

    move v1, v2

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_3

    const/4 v3, 0x0

    .line 148
    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_3
    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    .line 151
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    .line 152
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    if-ltz v0, :cond_4

    sub-int/2addr v0, v1

    .line 153
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    :cond_4
    :goto_0
    return-void
.end method

.method private fill()V
    .locals 5

    .line 69
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lorg/jsoup/internal/SimpleBufferedInput;->BufferPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v0}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    .line 74
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->compact()V

    .line 75
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    .line 76
    iget-object v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    .line 78
    :cond_2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_6

    .line 80
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    .line 81
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    .line 82
    :goto_0
    iget-object v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    array-length v2, v2

    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    if-lez v2, :cond_6

    .line 83
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-ge v2, v1, :cond_3

    goto :goto_1

    .line 84
    :cond_3
    iget-object v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    array-length v2, v2

    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_4

    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    iget v4, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_1

    .line 88
    :cond_5
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    .line 89
    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 92
    iput-boolean v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 115
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    iget v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    return v0

    .line 119
    :cond_1
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method baseReadFully()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    return v0
.end method

.method capRemaining(I)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    return-void
.end method

.method clearMark()V
    .locals 1

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    return-void
.end method

.method public close()V
    .locals 2

    .line 159
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    if-nez v0, :cond_1

    return-void

    .line 161
    :cond_1
    sget-object v1, Lorg/jsoup/internal/SimpleBufferedInput;->BufferPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v1, v0}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    return-void
.end method

.method getBuf()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->byteBuf:[B

    return-object v0
.end method

.method public read()I
    .locals 3

    .line 35
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    if-lt v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->fill()V

    .line 37
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->getBuf()[B

    move-result-object v0

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 45
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 46
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->fill()V

    .line 55
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufLength:I

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    sub-int/2addr v0, v1

    .line 58
    :cond_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-gtz p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 63
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/internal/SimpleBufferedInput;->getBuf()[B

    move-result-object v0

    iget v1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    return p3

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method resetFullyRead()V
    .locals 1

    .line 109
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->inReadFully:Z

    :cond_0
    return-void
.end method

.method rewindToMark()V
    .locals 2

    .line 132
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    if-ltz v0, :cond_0

    .line 134
    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMark()V
    .locals 1

    .line 128
    iget v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    iput v0, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    return-void
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
