.class public final Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;
.super Ljava/lang/Object;
.source "OggOpusAudioPacketizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHECKSUM_INDEX:I = 0x16

.field private static final FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER:I = 0x2

.field private static final OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

.field private static final OGG_DEFAULT_ID_HEADER_PAGE:[B

.field private static final OGG_PACKET_HEADER_LENGTH:I = 0x1c

.field private static final SERIAL_NUMBER:I


# instance fields
.field private granulePosition:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pageSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    .line 47
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    const/16 v0, 0x2c

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-void
.end method

.method private packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .locals 15

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    .line 120
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 121
    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v9

    sub-int v10, v9, v8

    add-int/lit16 v2, v10, 0xff

    const/16 v11, 0xff

    .line 125
    div-int/lit16 v5, v2, 0xff

    add-int/lit8 v2, v5, 0x1b

    add-int/2addr v2, v10

    .line 133
    iget v3, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v3, v13, :cond_1

    if-eqz v1, :cond_0

    .line 136
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1c

    goto :goto_0

    .line 137
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    array-length v3, v3

    .line 138
    :goto_0
    sget-object v4, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    move v14, v3

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 142
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 145
    iget v3, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v3, v13, :cond_3

    if-eqz v1, :cond_2

    .line 147
    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V

    goto :goto_2

    .line 150
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    :goto_2
    sget-object v1, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    :cond_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/OpusUtil;->parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 157
    iget v3, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    int-to-long v3, v3

    move-object v1, v2

    move-wide v2, v3

    .line 159
    iget v4, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_5

    if-lt v10, v11, :cond_4

    const/4 v3, -0x1

    .line 166
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v10, v10, -0xff

    goto :goto_4

    :cond_4
    int-to-byte v3, v10

    .line 169
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-ge v8, v9, :cond_6

    .line 176
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 179
    :cond_6
    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    iget v2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v3, 0x16

    if-ne v2, v13, :cond_7

    .line 186
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v14

    sget-object v5, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v6, v5

    add-int/2addr v4, v6

    .line 190
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    .line 185
    invoke-static {v2, v4, v6, v12}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v2

    .line 192
    array-length v4, v5

    add-int/2addr v14, v4

    add-int/2addr v14, v3

    invoke-virtual {v1, v14, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 197
    :cond_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 198
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 199
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    .line 196
    invoke-static {v2, v4, v5, v12}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v2

    .line 201
    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 205
    :goto_6
    iget v2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-object v1
.end method

.method private replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 288
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 292
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 224
    array-length p1, p2

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 229
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1c

    const/4 v3, 0x0

    .line 227
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result p1

    const/16 v0, 0x16

    .line 232
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 233
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1c

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V
    .locals 1

    const/16 v0, 0x4f

    .line 253
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x67

    .line 254
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x53

    .line 256
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p6, :cond_0

    const/4 p6, 0x2

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 262
    :goto_0
    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-long p2, p5

    .line 278
    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public packetize(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 89
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 91
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 93
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 94
    iget-object p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 100
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    .line 102
    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-void
.end method
