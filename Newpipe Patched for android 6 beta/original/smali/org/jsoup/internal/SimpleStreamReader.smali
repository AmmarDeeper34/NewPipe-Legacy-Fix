.class public Lorg/jsoup/internal/SimpleStreamReader;
.super Ljava/io/Reader;
.source "SimpleStreamReader.java"


# instance fields
.field private byteBuf:Ljava/nio/ByteBuffer;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jsoup/internal/SimpleStreamReader;->in:Ljava/io/InputStream;

    .line 28
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 29
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/internal/SimpleStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 31
    sget-object p1, Lorg/jsoup/internal/SimpleBufferedInput;->BufferPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p1}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private bufferUp()I
    .locals 5

    .line 69
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 72
    iget-object v1, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 73
    iget-object v2, p0, Lorg/jsoup/internal/SimpleStreamReader;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return v1

    :cond_0
    if-eqz v1, :cond_1

    .line 76
    :try_start_1
    iget-object v2, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 75
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying input stream returned zero bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :goto_0
    iget-object v1, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v1, Lorg/jsoup/internal/SimpleBufferedInput;->BufferPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read([CII)I
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 39
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1, p3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p3, :cond_5

    .line 46
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 48
    :cond_2
    invoke-direct {p0}, Lorg/jsoup/internal/SimpleStreamReader;->bufferUp()I

    move-result v0

    if-gez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/jsoup/internal/SimpleStreamReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x1

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 60
    iget-object v0, p0, Lorg/jsoup/internal/SimpleStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 61
    :cond_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_8

    if-eqz p3, :cond_7

    const/4 p1, -0x1

    return p1

    :cond_7
    return p2

    .line 64
    :cond_8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1

    .line 57
    :cond_9
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method
