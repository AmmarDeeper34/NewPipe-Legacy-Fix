.class public Lorg/schabi/newpipe/streams/OggFromWebMWriter;
.super Ljava/lang/Object;
.source "OggFromWebMWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final crc32Table:[I

.field private done:Z

.field private final output:Lorg/schabi/newpipe/streams/io/SharpStream;

.field private packetFlag:B

.field private parsed:Z

.field private final segmentTable:[B

.field private segmentTableNextTimestamp:J

.field private segmentTableSize:S

.field private sequenceCount:I

.field private final source:Lorg/schabi/newpipe/streams/io/SharpStream;

.field private final streamId:I

.field private final streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field private webm:Lorg/schabi/newpipe/streams/WebMReader;

.field private webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

.field private webmBlockLastTimecode:J

.field private webmBlockNearDuration:J

.field private webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

.field private webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field private webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;


# direct methods
.method public static synthetic $r8$lambda$4M1qRnvy3LARDJ1cnFWc5fZQq9M(Landroid/util/Pair;)[B
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makeOpusMetadataTag(Landroid/util/Pair;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SrJFPgL45nYlfzZJcrRDUYCyots(Landroid/util/Pair;)Z
    .locals 0

    .line 357
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$mPOR1j6KWFyEulaqv4Bs53PZ2c0([B)I
    .locals 0

    .line 361
    array-length p0, p0

    return p0
.end method

.method public static synthetic $r8$lambda$vBKF8hFygzLGUGD02CJihVV_RV8(Landroid/util/Pair;)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OggFromWebMWriter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    .line 42
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 47
    iput v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    const/4 v1, 0x2

    .line 49
    iput-byte v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 52
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 53
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 54
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 55
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    .line 58
    iput-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    .line 60
    iput-short v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    const/16 v0, 0xff

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    const-wide/32 v0, 0x3b9aca00

    .line 62
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const/16 v0, 0x100

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 77
    iput-object p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 78
    iput-object p3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamId:I

    .line 82
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->populateCrc32Table()V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output stream must be writable and allows seeking"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source stream must be readable and allows seeking"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPacketSegment(I)Z
    .locals 7

    const v0, 0xfe01

    if-gt p1, v0, :cond_5

    .line 455
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    array-length v0, v0

    iget-short v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    sub-int/2addr v0, v1

    const/16 v1, 0xff

    mul-int/lit16 v0, v0, 0xff

    .line 456
    rem-int/lit16 v2, p1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    add-int/lit16 v0, v0, -0xff

    :cond_1
    if-ge v0, p1, :cond_2

    return v3

    :cond_2
    :goto_1
    if-lez p1, :cond_3

    .line 470
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short v5, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 v6, v5, 0x1

    int-to-short v6, v6

    iput-short v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit16 p1, p1, -0xff

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 474
    iget-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    aput-byte v3, p1, v0

    :cond_4
    return v4

    .line 452
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "page size cannot be larger than 65025"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPacketSegment(Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;)Z
    .locals 5

    .line 441
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-wide v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    add-long/2addr v0, v2

    .line 443
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 447
    :cond_0
    iget p1, p1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    move-result p1

    return p1
.end method

.method private calcCrc32(I[BI)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 496
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    aget v1, v2, v1

    xor-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private clearSegmentTable()V
    .locals 4

    .line 435
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const/4 v0, 0x0

    .line 436
    iput-byte v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 437
    iput-short v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    return-void
.end method

.method private getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 5

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    return-object v0

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    if-nez v0, :cond_1

    return-object v1

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    if-nez v0, :cond_2

    .line 403
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 404
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v0

    return-object v0

    .line 408
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v0

    if-nez v0, :cond_3

    .line 410
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 411
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v0

    return-object v0

    .line 414
    :cond_3
    iget-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-wide v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    .line 415
    iput-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    return-object v0
.end method

.method private getSampleFrequencyFromTrack([B)F
    .locals 2

    .line 422
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xb584

    if-ne v0, v1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private makeMetadata()[B
    .locals 5

    .line 287
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    const-string v1, "OggFromWebMWriter"

    if-eqz v0, :cond_0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading media with codec ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v3, v3, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    const-string v3, "A_OPUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    if-eqz v3, :cond_1

    .line 294
    const-string v4, "COMMENT"

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GENRE"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ARTIST"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TITLE"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 299
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->getLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Lj$/time/format/DateTimeFormatter;->ISO_DATE:Lj$/time/format/DateTimeFormatter;

    .line 301
    invoke-virtual {v3, v4}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    .line 298
    const-string v4, "DATE"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 305
    const-string v0, "Creating metadata header with this data:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 311
    :cond_2
    invoke-static {v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makeOpusTagsHeader(Ljava/util/List;)[B

    move-result-object v0

    return-object v0

    .line 312
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    const-string v1, "A_VORBIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    .line 313
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 1
        0x3t
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
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

.method private static makeOpusMetadataTag(Landroid/util/Pair;)[B
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 337
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 338
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 339
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static makeOpusTagsHeader(Ljava/util/List;)[B
    .locals 2

    .line 356
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda1;-><init>()V

    .line 357
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda2;-><init>()V

    .line 358
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 359
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 361
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1}, Lj$/util/stream/Collectors;->summingInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 364
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 366
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    .line 368
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 372
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 373
    new-instance v1, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter$$ExternalSyntheticLambda4;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
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
    .end array-data
.end method

.method private makePacketheader(JLjava/nio/ByteBuffer;[B)I
    .locals 2

    const v0, 0x5367674f

    .line 256
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    iget-byte v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 262
    iget p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamId:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 263
    iget p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 267
    iget-short p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    int-to-byte p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 268
    iget-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    invoke-virtual {p3, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 270
    iget-short p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 p1, p1, 0x1b

    int-to-short p1, p1

    .line 272
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->clearSegmentTable()V

    .line 274
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result p1

    if-eqz p4, :cond_0

    .line 277
    array-length p2, p4

    invoke-direct {p0, p1, p4, p2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result p1

    const/16 p2, 0x16

    .line 278
    invoke-virtual {p3, p2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 279
    iget-wide p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const-wide/32 v0, 0x3b9aca00

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    :cond_0
    return p1
.end method

.method private populateCrc32Table()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    shl-int/lit8 v2, v1, 0x18

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    ushr-int/lit8 v4, v2, 0x1f

    int-to-long v4, v4

    shl-int/lit8 v2, v2, 0x1

    const-wide v6, 0x100000000L

    sub-long/2addr v6, v4

    long-to-int v4, v6

    const v5, 0x4c11db7

    and-int/2addr v4, v5

    xor-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 488
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 379
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 380
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public build()V
    .locals 11

    const v0, 0xfe1c

    .line 163
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 164
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 166
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    sget-object v2, Lorg/schabi/newpipe/streams/OggFromWebMWriter$1;->$SwitchMap$org$schabi$newpipe$streams$WebMReader$TrackKind:[I

    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v3, v3, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 178
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-wide v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    long-to-float v2, v2

    .line 181
    iget-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    iget-object v3, v3, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Lorg/schabi/newpipe/streams/WebMReader$Info;

    iget-wide v6, v3, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    long-to-float v3, v6

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing default frame time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getSampleFrequencyFromTrack([B)F

    move-result v3

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    .line 189
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    if-eqz v2, :cond_3

    .line 190
    array-length v2, v2

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    .line 191
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-direct {p0, v4, v5, v0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    .line 192
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 193
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-object v6, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v2, v6}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 197
    :cond_3
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makeMetadata()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 199
    array-length v6, v2

    invoke-direct {p0, v6}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    .line 200
    invoke-direct {p0, v4, v5, v0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    .line 201
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 202
    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v6, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 206
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    if-eqz v2, :cond_8

    .line 207
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 209
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 212
    iget-object v7, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-virtual {v7, v8, v6, v9}, Ljava/io/InputStream;->read([BII)I

    .line 213
    iget v2, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    add-int/2addr v6, v2

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 218
    :cond_5
    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iget-wide v7, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    long-to-double v7, v7

    if-nez v2, :cond_7

    const/4 v9, 0x4

    .line 221
    iput-byte v9, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 222
    iget-wide v9, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 224
    iget-wide v9, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v6, v9, v4

    if-lez v6, :cond_6

    :goto_2
    long-to-double v9, v9

    add-double/2addr v7, v9

    goto :goto_3

    .line 228
    :cond_6
    iget-wide v9, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    goto :goto_2

    .line 231
    :cond_7
    iget-wide v9, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    goto :goto_2

    :goto_3
    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v7, v9

    float-to-double v9, v3

    mul-double v7, v7, v9

    .line 236
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    const/4 v8, 0x0

    .line 239
    invoke-direct {p0, v6, v7, v0, v8}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    move-result v6

    .line 240
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result v6

    const/16 v7, 0x16

    .line 242
    invoke-virtual {v0, v7, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 245
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 246
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 248
    iput-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    goto :goto_1

    :cond_8
    return-void

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot get the audio sample rate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    .line 147
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 150
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->flush()V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    return-void
.end method

.method public parseSource()V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_1

    .line 105
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/streams/WebMReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 111
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader;->parse()V

    .line 112
    iget-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 115
    throw v1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(I)V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    if-eqz v0, :cond_4

    .line 122
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    if-nez v0, :cond_2

    .line 129
    sget-object v0, Lorg/schabi/newpipe/streams/OggFromWebMWriter$1;->$SwitchMap$org$schabi$newpipe$streams$WebMReader$TrackKind:[I

    iget-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader;->getAvailableTracks()[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "the track must an audio or video stream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->selectTrack(I)Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 141
    throw p1

    .line 126
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "tracks already selected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source must be parsed first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
