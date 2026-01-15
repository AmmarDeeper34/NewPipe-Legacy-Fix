.class public Lorg/schabi/newpipe/streams/WebMWriter;
.super Ljava/lang/Object;
.source "WebMWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/streams/WebMWriter$Block;,
        Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;,
        Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;
    }
.end annotation


# instance fields
.field private clustersOffsetsSizes:Ljava/util/ArrayList;

.field private done:Z

.field private infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

.field private outBuffer:[B

.field private outByteBuffer:Ljava/nio/ByteBuffer;

.field private parsed:Z

.field private readers:[Lorg/schabi/newpipe/streams/WebMReader;

.field private readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

.field private readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field private sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

.field private written:J


# direct methods
.method public varargs constructor <init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    .line 36
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 50
    array-length v0, p1

    new-array v0, v0, [Lorg/schabi/newpipe/streams/WebMReader;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    .line 51
    array-length p1, p1

    new-array p1, p1, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    const/16 p1, 0x2000

    .line 52
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 53
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    return-void
.end method

.method private dump(Ljava/util/ArrayList;Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 5

    .line 621
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 622
    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 623
    iget-wide v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 615
    invoke-virtual {p3, p1, v0, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 616
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    return-void
.end method

.method private dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 610
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 674
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 677
    array-length v1, p1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private encode(JZ)[B
    .locals 16

    move-wide/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x7

    if-gt v3, v6, :cond_1

    long-to-double v6, v0

    mul-int/lit8 v8, v3, 0x7

    int-to-double v8, v8

    .line 639
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_6

    long-to-double v6, v0

    mul-int/lit8 v2, v3, 0x7

    int-to-double v8, v2

    .line 649
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    cmpl-double v2, v6, v4

    if-nez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int v2, p3, v3

    .line 654
    new-array v2, v2, [B

    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x8

    .line 655
    invoke-static {v4, v5}, Lorg/schabi/newpipe/extractor/stream/Frameset$$ExternalSyntheticBackport0;->m(II)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x0

    move v8, v4

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x80

    if-ltz v8, :cond_4

    ushr-long v11, v0, v9

    if-nez p3, :cond_3

    int-to-long v13, v8

    cmp-long v15, v13, v5

    if-nez v15, :cond_3

    ushr-int/2addr v10, v4

    int-to-long v13, v10

    or-long/2addr v11, v13

    :cond_3
    add-int v10, p3, v8

    long-to-int v12, v11

    int-to-byte v11, v12

    .line 663
    aput-byte v11, v2, v10

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x8

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    or-int/lit16 v0, v3, 0x80

    int-to-byte v0, v0

    .line 667
    aput-byte v0, v2, v7

    :cond_5
    return-object v2

    .line 646
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Can\'t encode a number of bigger than 7 bytes"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;
    .locals 6

    .line 333
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v1

    aput-object v1, v0, p1

    .line 335
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-object v2

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 341
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move-result-object v1

    aput-object v1, v0, p1

    .line 342
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    aput-object v2, v0, p1

    .line 344
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;

    move-result-object p1

    return-object p1

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    aput-object v2, v0, p1

    .line 351
    new-instance p1, Lorg/schabi/newpipe/streams/WebMWriter$Block;

    invoke-direct {p1}, Lorg/schabi/newpipe/streams/WebMWriter$Block;-><init>()V

    return-object p1

    .line 354
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;

    invoke-direct {v1}, Lorg/schabi/newpipe/streams/WebMWriter$Block;-><init>()V

    .line 355
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    iput-object v2, v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    .line 356
    iget v2, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    iput v2, v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;->dataSize:I

    .line 357
    iput p1, v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    .line 358
    iget-byte p1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->flags:B

    iput-byte p1, v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    .line 359
    iget-wide v2, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v1, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    return-object v1
.end method

.method private lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    .line 629
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 630
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 632
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p4, v0

    if-lez v3, :cond_0

    .line 423
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    .line 424
    iget-wide v3, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    sub-long/2addr v3, p4

    const-wide/16 p4, 0x8

    sub-long/2addr v3, p4

    long-to-int p4, v3

    iput p4, v0, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->size:I

    .line 427
    :cond_0
    iget-wide p4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    if-eqz p6, :cond_1

    const/4 p6, 0x4

    .line 431
    new-array p6, p6, [B

    fill-array-data p6, :array_0

    invoke-direct {p0, p6, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 433
    new-instance p6, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    invoke-direct {p6}, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;-><init>()V

    .line 434
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    iput-wide v0, p6, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->offset:J

    .line 435
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p6, 0x5

    .line 437
    new-array p6, p6, [B

    fill-array-data p6, :array_1

    invoke-direct {p0, p6, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 443
    invoke-direct {p0, p2, p3, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V

    :cond_1
    return-wide p4

    nop

    :array_0
    .array-data 1
        0x1ft
        0x43t
        -0x4at
        0x75t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
        -0x19t
    .end array-data
.end method

.method private makeCuePoint(ILorg/schabi/newpipe/streams/WebMWriter$KeyFrame;[B)I
    .locals 6

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    .line 543
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x45

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 544
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    new-array v2, v1, [B

    const/16 v4, -0x4d

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->duration:J

    invoke-direct {p0, v4, v5, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCueTrackPosition(ILorg/schabi/newpipe/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 554
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 557
    array-length v1, v0

    invoke-static {v0, v3, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    array-length v0, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method private makeCueTrackPosition(ILorg/schabi/newpipe/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;
    .locals 6

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    .line 569
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x49

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 570
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    new-array v2, v1, [B

    const/16 v4, -0x9

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v1

    int-to-long v4, p1

    .line 574
    invoke-direct {p0, v4, v5, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    new-array p1, v1, [B

    const/16 v2, -0xf

    aput-byte v2, p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->clusterPosition:J

    invoke-direct {p0, v4, v5, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget p1, p2, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->relativePosition:I

    if-lez p1, :cond_0

    .line 582
    new-array p1, v1, [B

    const/16 v2, -0x10

    aput-byte v2, p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget p1, p2, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;->relativePosition:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private makeEBML(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    const/16 v0, 0x2b

    .line 451
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1at
        0x45t
        -0x21t
        -0x5dt
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x42t
        -0x7at
        -0x7ft
        0x1t
        0x42t
        -0x9t
        -0x7ft
        0x1t
        0x42t
        -0xet
        -0x7ft
        0x4t
        0x42t
        -0xdt
        -0x7ft
        0x8t
        0x42t
        -0x7et
        -0x7ct
        0x77t
        0x65t
        0x62t
        0x6dt
        0x42t
        -0x79t
        -0x7ft
        0x2t
        0x42t
        -0x7bt
        -0x7ft
        0x2t
    .end array-data
.end method

.method private makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V
    .locals 3

    .line 594
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/16 v2, -0x13e0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 595
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, -0x4

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 597
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, -0x4

    :goto_0
    if-lez p2, :cond_0

    .line 602
    iget-object p3, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    array-length p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 603
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-direct {p0, v0, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeTrackEntry(ILorg/schabi/newpipe/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;
    .locals 9

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-long v1, p1

    .line 474
    invoke-direct {p0, v1, v2, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    new-array v2, v0, [B

    const/4 v3, 0x0

    const/16 v4, -0x52

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    new-array v2, v0, [B

    const/16 v4, -0x29

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 486
    new-array v4, v2, [B

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 490
    new-array v4, p1, [B

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x7

    .line 493
    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-array v4, v0, [B

    const/16 v5, -0x7a

    aput-byte v5, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 500
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 501
    new-array v4, v2, [B

    fill-array-data v4, :array_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    invoke-direct {p0, v4, v5, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    .line 507
    new-array v4, v2, [B

    fill-array-data v4, :array_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    invoke-direct {p0, v4, v5, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    new-array v4, v0, [B

    const/16 v5, -0x7d

    aput-byte v5, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 517
    new-array p1, p1, [B

    fill-array-data p1, :array_5

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-wide v4, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    invoke-direct {p0, v4, v5, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_2
    iget p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_5

    :cond_3
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 523
    iget p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-ne p1, v0, :cond_4

    const/16 p1, 0xe0

    goto :goto_0

    :cond_4
    const/16 p1, 0xe1

    :goto_0
    int-to-byte p1, p1

    new-array v0, v0, [B

    aput-byte p1, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    array-length p1, p1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_5
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 530
    new-array p1, v2, [B

    fill-array-data p1, :array_6

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    array-length p1, p1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object p1, p2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_6
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0x73t
        -0x3bt
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x64t
        -0x7ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        -0x4bt
        -0x64t
        -0x7dt
        0x75t
        0x6et
        0x64t
    .end array-data

    :array_3
    .array-data 1
        0x56t
        -0x56t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        -0x45t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x23t
        -0x1dt
        -0x7dt
    .end array-data

    :array_6
    .array-data 1
        0x63t
        -0x5et
    .end array-data
.end method

.method private makeTracks()Ljava/util/ArrayList;
    .locals 4

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x4

    .line 463
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 466
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 467
    aget-object v2, v2, v1

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->makeTrackEntry(ILorg/schabi/newpipe/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x16t
        0x54t
        -0x52t
        0x6bt
    .end array-data
.end method

.method private seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V
    .locals 3

    .line 365
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    goto :goto_0

    .line 368
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    sub-long v0, p2, v0

    .line 369
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    .line 372
    invoke-virtual {p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 376
    :goto_0
    iput-wide p2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    return-void
.end method

.method private selectTrackForCue()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 692
    :goto_0
    iget-object v4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v5, :cond_2

    .line 693
    aget-object v4, v4, v1

    iget v4, v4, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_2
    array-length v1, v4

    if-ne v2, v1, :cond_3

    goto :goto_3

    .line 706
    :cond_3
    array-length v1, v4

    if-ne v3, v1, :cond_4

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    if-lez v2, :cond_7

    :goto_3
    const/4 v1, 0x0

    .line 717
    :goto_4
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 718
    aget-object v2, v2, v1

    iget v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v6, v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return v0
.end method

.method private valid([B)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 684
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private writeBlock(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/WebMWriter$Block;J)V
    .locals 5

    .line 388
    iget-wide v0, p2, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long/2addr v0, p3

    const-wide/16 p3, -0x8000

    cmp-long v2, v0, p3

    if-ltz v2, :cond_2

    const-wide/16 p3, 0x7fff

    cmp-long v2, v0, p3

    if-gtz v2, :cond_2

    .line 394
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x1

    .line 395
    new-array v2, p4, [B

    const/16 v3, -0x5d

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget v2, p2, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    add-int/2addr v2, p4

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 398
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v1, v0

    int-to-short v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 398
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-byte v0, p2, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    new-array v1, p4, [B

    aput-byte v0, v1, v4

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget v0, p2, Lorg/schabi/newpipe/streams/WebMWriter$Block;->dataSize:I

    .line 403
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 404
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 406
    invoke-direct {p0, v0, v1, v4}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-direct {p0, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump(Ljava/util/ArrayList;Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 411
    :goto_1
    iget-object p3, p2, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    iget-object p4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {p3, p4}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_1

    .line 412
    iget-object p4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-direct {p0, p4, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    goto :goto_1

    :cond_1
    return-void

    .line 391
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "SimpleBlock timecode overflow."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeInt(Lorg/schabi/newpipe/streams/io/SharpStream;JI)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 382
    iget-object p2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 383
    iget-object p2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 p3, 0x4

    invoke-direct {p0, p2, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRewind()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 130
    invoke-direct/range {p0 .. p1}, Lorg/schabi/newpipe/streams/WebMWriter;->makeEBML(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 132
    iget-wide v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    const-wide/16 v7, 0x5

    add-long v9, v2, v7

    const-wide/16 v4, 0x5e

    add-long v11, v2, v4

    const-wide/16 v4, 0x3a

    add-long v13, v2, v4

    const-wide/16 v4, 0x4b

    add-long/2addr v2, v4

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v5, 0xc

    .line 140
    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-wide v5, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    move-wide/from16 v16, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    int-to-long v7, v8

    add-long v19, v5, v7

    const/16 v5, 0x43

    .line 148
    new-array v5, v5, [B

    fill-array-data v5, :array_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x8

    .line 166
    new-array v5, v5, [B

    fill-array-data v5, :array_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v5, 0xf4240

    const/4 v7, 0x1

    .line 170
    invoke-direct {v0, v5, v6, v7}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x7

    .line 171
    new-array v5, v8, [B

    fill-array-data v5, :array_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/WebMWriter;->makeTracks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-direct {v0, v4, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump(Ljava/util/ArrayList;Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 181
    iget-wide v4, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    const v6, 0xffff

    .line 182
    invoke-direct {v0, v1, v6, v7}, Lorg/schabi/newpipe/streams/WebMWriter;->makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V

    .line 184
    iget-object v6, v0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    array-length v15, v6

    new-array v15, v15, [I

    .line 185
    array-length v6, v6

    new-array v8, v6, [J

    const/4 v7, 0x0

    .line 187
    :goto_0
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-wide/from16 v21, v2

    array-length v2, v1

    const/16 v27, -0x1

    const-wide/16 v28, -0x1

    const-wide/16 v30, 0x0

    if-ge v7, v2, :cond_1

    .line 188
    aget-object v1, v1, v7

    iget-wide v1, v1, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v3, v1, v30

    if-gez v3, :cond_0

    .line 189
    aput v27, v15, v7

    goto :goto_1

    :cond_0
    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    aput v1, v15, v7

    .line 194
    :goto_1
    aput-wide v28, v8, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v2, v21

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/WebMWriter;->selectTrackForCue()I

    move-result v7

    .line 199
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v1, v1, v7

    iget v1, v1, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-wide/from16 v23, v28

    goto :goto_2

    :cond_2
    move-wide/from16 v23, v30

    .line 200
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    iget-wide v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    long-to-int v3, v2

    move-wide/from16 v25, v4

    const-wide/16 v4, 0x0

    move v2, v6

    const/4 v6, 0x1

    move/from16 v32, v2

    move/from16 v33, v3

    const-wide/16 v2, 0x0

    move/from16 v34, v32

    move-object/from16 v32, v8

    move/from16 v8, v34

    move-wide/from16 v38, v13

    move-wide/from16 v34, v21

    move-wide/from16 v36, v25

    move/from16 v13, v33

    const v14, 0xffff

    move-object/from16 v33, v15

    move-object v15, v1

    move-object/from16 v1, p1

    .line 203
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    move-result-wide v2

    const v1, 0x7fffffff

    move-wide v4, v2

    move v3, v7

    move-wide/from16 v25, v28

    move-wide/from16 v21, v30

    const/4 v2, -0x1

    :goto_3
    if-lez v1, :cond_10

    const/4 v1, 0x0

    const/16 v40, 0x0

    .line 216
    :goto_4
    iget-object v6, v0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v6, v6

    if-ge v1, v6, :cond_f

    .line 217
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;

    move-result-object v6

    if-nez v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 223
    :cond_3
    iget-object v14, v6, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    if-nez v14, :cond_4

    add-int/lit8 v2, v1, 0x1

    move v14, v2

    move v2, v1

    move v1, v14

    const v14, 0xffff

    const/16 v40, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v41, 0x64

    if-ne v2, v1, :cond_5

    .line 233
    iget-wide v2, v6, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    add-long v25, v2, v41

    move-object v14, v6

    const/4 v6, 0x1

    move/from16 v43, v13

    move-object v13, v14

    move v14, v1

    move-object/from16 v1, p1

    .line 235
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    move-result-wide v4

    move-wide/from16 v21, v4

    move-wide v4, v2

    move v3, v14

    const/4 v2, -0x1

    :goto_5
    move-wide/from16 v44, v25

    goto :goto_6

    :cond_5
    move v14, v1

    move/from16 v43, v13

    move-object/from16 v1, p1

    move-object v13, v6

    move-wide/from16 v44, v21

    move-wide/from16 v21, v4

    move-wide/from16 v4, v44

    goto :goto_5

    :goto_6
    if-ne v7, v14, :cond_9

    cmp-long v6, v23, v28

    move/from16 v18, v6

    move/from16 v46, v7

    if-lez v6, :cond_6

    .line 240
    iget-wide v6, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v25, v6, v23

    if-gez v25, :cond_7

    :cond_6
    cmp-long v6, v23, v30

    if-gez v6, :cond_a

    .line 241
    invoke-virtual {v13}, Lorg/schabi/newpipe/streams/WebMWriter$Block;->isKeyframe()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    if-lez v18, :cond_8

    const-wide/16 v6, 0x1388

    add-long v23, v23, v6

    :cond_8
    move-wide/from16 v6, v23

    .line 245
    new-instance v18, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;

    move-wide/from16 v47, v6

    iget-wide v6, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    move-wide/from16 v23, v6

    iget-wide v6, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    move-wide/from16 v25, v6

    invoke-direct/range {v18 .. v26}, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;-><init>(JJJJ)V

    move-object/from16 v6, v18

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v23, v47

    goto :goto_7

    :cond_9
    move/from16 v46, v7

    .line 250
    :cond_a
    :goto_7
    invoke-direct {v0, v1, v13, v4, v5}, Lorg/schabi/newpipe/streams/WebMWriter;->writeBlock(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/WebMWriter$Block;J)V

    add-int/lit8 v40, v40, 0x1

    .line 253
    aget v6, v33, v14

    if-gez v6, :cond_b

    aget-wide v6, v32, v14

    cmp-long v18, v6, v30

    if-ltz v18, :cond_b

    .line 256
    iget-wide v0, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long/2addr v0, v6

    long-to-int v1, v0

    aput v1, v33, v14

    .line 258
    :cond_b
    iget-wide v0, v13, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    aput-wide v0, v32, v14

    cmp-long v6, v44, v30

    if-gez v6, :cond_c

    add-long v25, v0, v41

    move-wide/from16 v0, v21

    move-wide/from16 v21, v4

    move-wide v4, v0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v13, v43

    move/from16 v7, v46

    const v14, 0xffff

    goto/16 :goto_4

    :cond_c
    cmp-long v6, v0, v44

    if-ltz v6, :cond_e

    if-eq v3, v14, :cond_d

    sub-long v0, v0, v44

    sub-long v41, v41, v0

    add-long v44, v44, v41

    :cond_d
    add-int/lit8 v1, v14, 0x1

    :goto_8
    move-wide/from16 v25, v44

    goto :goto_9

    :cond_e
    move v1, v14

    goto :goto_8

    :goto_9
    move-wide/from16 v13, v21

    move-wide/from16 v21, v4

    move-wide v4, v13

    const v14, 0xffff

    move-object/from16 v0, p0

    move/from16 v13, v43

    move/from16 v7, v46

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v40

    goto/16 :goto_3

    :cond_10
    move/from16 v46, v7

    move/from16 v43, v13

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J

    .line 276
    iget-wide v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    sub-long/2addr v2, v9

    const-wide/16 v4, 0x7

    sub-long/2addr v2, v4

    .line 279
    invoke-direct {v0, v1, v9, v10}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 280
    iget-object v4, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 281
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    move-wide/from16 v3, v30

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v8, :cond_13

    .line 286
    aget v5, v33, v2

    if-lez v5, :cond_11

    .line 287
    aget-wide v6, v32, v2

    int-to-long v9, v5

    add-long/2addr v6, v9

    aput-wide v6, v32, v2

    .line 289
    :cond_11
    aget-wide v5, v32, v2

    cmp-long v7, v5, v3

    if-lez v7, :cond_12

    move-wide v3, v5

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 293
    :cond_13
    invoke-direct {v0, v1, v11, v12}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 294
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    long-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 295
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    move/from16 v13, v43

    int-to-long v2, v13

    sub-long v2, v2, v19

    long-to-int v3, v2

    move-wide/from16 v4, v38

    .line 299
    invoke-direct {v0, v1, v4, v5, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->writeInt(Lorg/schabi/newpipe/streams/io/SharpStream;JI)V

    move-wide/from16 v2, v36

    .line 301
    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    const/4 v4, 0x7

    .line 305
    new-array v4, v4, [B

    fill-array-data v4, :array_4

    invoke-direct {v0, v4, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BLorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 307
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/streams/WebMWriter$KeyFrame;

    .line 308
    iget-object v7, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    move/from16 v8, v46

    invoke-direct {v0, v8, v6, v7}, Lorg/schabi/newpipe/streams/WebMWriter;->makeCuePoint(ILorg/schabi/newpipe/streams/WebMWriter$KeyFrame;[B)I

    move-result v6

    add-int v7, v5, v6

    add-int/lit8 v9, v7, 0xb

    const v14, 0xffff

    if-le v9, v14, :cond_14

    goto :goto_c

    :cond_14
    int-to-short v5, v7

    .line 315
    iget-object v7, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    invoke-direct {v0, v7, v6, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    move/from16 v46, v8

    goto :goto_b

    :cond_15
    :goto_c
    const v4, 0xfff8

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    .line 318
    invoke-direct {v0, v1, v4, v6}, Lorg/schabi/newpipe/streams/WebMWriter;->makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V

    add-long v7, v2, v16

    .line 320
    invoke-direct {v0, v1, v7, v8}, Lorg/schabi/newpipe/streams/WebMWriter;->seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V

    .line 321
    iget-object v4, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 322
    iget-object v4, v0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    sub-long v4, v2, v19

    long-to-int v2, v4

    move-wide/from16 v3, v34

    .line 325
    invoke-direct {v0, v1, v3, v4, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->writeInt(Lorg/schabi/newpipe/streams/io/SharpStream;JI)V

    .line 327
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    .line 328
    iget-wide v4, v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->offset:J

    iget v3, v3, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->size:I

    const/high16 v6, 0x10000000

    or-int/2addr v3, v6

    invoke-direct {v0, v1, v4, v5, v3}, Lorg/schabi/newpipe/streams/WebMWriter;->writeInt(Lorg/schabi/newpipe/streams/io/SharpStream;JI)V

    goto :goto_d

    :cond_16
    return-void

    .line 127
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The output stream must be allow seek"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x18t
        0x53t
        -0x80t
        0x67t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x4dt
        -0x65t
        0x74t
        -0x42t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x15t
        0x49t
        -0x57t
        0x66t
        0x53t
        -0x54t
        -0x7ft
        0x43t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x16t
        0x54t
        -0x52t
        0x6bt
        0x53t
        -0x54t
        -0x7ft
        0x56t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ft
        0x43t
        -0x4at
        0x75t
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        0x49t
        -0x57t
        0x66t
        -0x72t
        0x2at
        -0x29t
        -0x4ft
    .end array-data

    :array_3
    .array-data 1
        0x44t
        -0x77t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    .line 108
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 110
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 111
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 115
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    .line 116
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 117
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 118
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 119
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 120
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 121
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    return-void
.end method

.method public getTracksFromSource(I)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    if-nez v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/WebMReader;->getAvailableTracks()[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All sources must be parsed first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseSources()V
    .locals 5

    .line 69
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    if-nez v0, :cond_2

    .line 72
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 77
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 78
    new-instance v3, Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/streams/WebMReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    .line 79
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/WebMReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 83
    :cond_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    return-void

    :goto_1
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 84
    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs selectTracks([I)V
    .locals 5

    const/4 v0, 0x1

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v2, v1

    new-array v2, v2, [Lorg/schabi/newpipe/streams/WebMReader$Segment;

    iput-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 90
    array-length v1, v1

    new-array v1, v1, [Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 93
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object v2, v2, v1

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/streams/WebMReader;->selectTrack(I)Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object v2

    aput-object v2, v3, v1

    .line 94
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 97
    :cond_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 98
    throw p1
.end method
