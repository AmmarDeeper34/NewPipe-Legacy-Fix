.class public Lorg/schabi/newpipe/streams/Mp4FromDashWriter;
.super Ljava/lang/Object;
.source "Mp4FromDashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;
    }
.end annotation


# instance fields
.field private auxBuffer:Ljava/nio/ByteBuffer;

.field private final compatibleBrands:Ljava/util/ArrayList;

.field private done:Z

.field private lastWriteOffset:J

.field private moovSimulation:Z

.field private outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

.field private overrideMainBrand:I

.field private parsed:Z

.field private readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

.field private readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

.field private sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

.field private final time:J

.field private tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

.field private writeOffset:J


# direct methods
.method public varargs constructor <init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->done:Z

    .line 41
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 49
    iput v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 54
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 55
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRewind()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "All sources must be readable and allow rewind"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 61
    array-length p1, p1

    new-array p1, p1, [Lorg/schabi/newpipe/streams/Mp4DashReader;

    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 62
    array-length p1, p1

    new-array p1, p1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x6d703431

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x69736f6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x69736f32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private auxOffset()I
    .locals 2

    .line 614
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    long-to-int v1, v0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method private auxSeek(I)V
    .locals 2

    .line 594
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    .line 595
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    int-to-long v0, p1

    .line 597
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    return-void

    .line 599
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private auxSkip(I)V
    .locals 4

    .line 604
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    .line 605
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    int-to-long v0, p1

    .line 607
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSkip(J)V

    return-void

    .line 609
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private auxWrite(I)V
    .locals 1

    const/4 v0, 0x4

    .line 577
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 577
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void
.end method

.method private auxWrite([B)V
    .locals 4

    .line 584
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    .line 585
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 587
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([BI)V

    return-void

    .line 589
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private getNextSample(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;
    .locals 4

    .line 407
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->getNextChunk(Z)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v1

    aput-object v1, v0, p1

    .line 409
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-object v2

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->getNextSample()Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    aput-object v2, v0, p1

    .line 417
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->getNextSample(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V
    .locals 7

    .line 471
    iget v0, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    sub-int/2addr v0, p2

    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    float-to-double v2, v1

    .line 473
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 477
    :goto_0
    iput v4, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    if-eq p2, p3, :cond_1

    add-int v5, v4, v4

    .line 479
    iput v5, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    :cond_1
    if-eqz v1, :cond_2

    .line 482
    iget v5, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    add-int/2addr v5, v4

    iput v5, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 486
    :cond_2
    iget v5, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    add-int/2addr v2, v4

    .line 487
    iput v2, p1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 489
    aput v4, v5, v3

    .line 490
    aput p2, v5, v4

    const/4 p1, 0x2

    .line 491
    aput v4, v5, p1

    if-eq p2, p3, :cond_3

    .line 494
    aput p1, v5, v6

    const/4 p2, 0x4

    .line 495
    aput p3, v5, p2

    const/4 p2, 0x5

    .line 496
    aput v4, v5, p2

    const/4 v6, 0x6

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 p2, v6, 0x1

    .line 500
    aput v2, v5, v6

    add-int/2addr v6, p1

    .line 501
    rem-int/2addr v0, p3

    aput v0, v5, p2

    .line 502
    aput v4, v5, v6

    :cond_4
    return-void
.end method

.method private lengthFor(I)I
    .locals 2

    .line 534
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v0

    sub-int/2addr v0, p1

    .line 536
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v1, :cond_0

    return v0

    .line 540
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    .line 541
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite(I)V

    add-int/lit8 p1, v0, -0x4

    .line 542
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSkip(I)V

    return v0
.end method

.method private make(IIII)I
    .locals 3

    mul-int p3, p3, p4

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 v0, p3, 0x10

    .line 552
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v1

    if-ltz p2, :cond_0

    add-int/lit8 v0, p3, 0x14

    :cond_0
    const/16 v2, 0xc

    .line 558
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 559
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 558
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    if-ltz p2, :cond_1

    add-int/lit8 v1, v1, 0x4

    .line 567
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite(I)V

    .line 570
    :cond_1
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite(I)V

    .line 571
    invoke-direct {p0, p3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSkip(I)V

    add-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private makeFtyp()I
    .locals 4

    .line 618
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x10

    .line 619
    iget v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x14

    .line 623
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v2, 0x66747970

    .line 625
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 627
    iget v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    const v3, 0x6d703432

    if-nez v2, :cond_1

    .line 628
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x200

    .line 629
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 632
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 636
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 637
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 640
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([B)V

    return v1
.end method

.method private makeHdlr(Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;)[B
    .locals 2

    const/16 v0, 0x21

    .line 843
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xc

    .line 850
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 851
    iget v1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->type:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 852
    iget v1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->subType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 853
    iget-object p1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 855
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
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
        0x0t
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

.method private makeMdat(JZ)[B
    .locals 2

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x10

    :goto_0
    add-long/2addr p1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x8

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    const/16 v0, 0x10

    goto :goto_2

    :cond_1
    const/16 v0, 0x8

    .line 653
    :goto_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    long-to-int v1, p1

    .line 654
    :goto_3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x6d646174

    .line 655
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 658
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 661
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private makeMdia(Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 789
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v3

    const/16 v4, 0x8

    .line 790
    new-array v5, v4, [B

    fill-array-data v5, :array_0

    invoke-direct {v0, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 791
    iget-object v5, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->mdhd:[B

    invoke-direct {v0, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 792
    iget-object v5, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->hdlr:Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeHdlr(Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 794
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v5

    .line 795
    new-array v6, v4, [B

    fill-array-data v6, :array_1

    invoke-direct {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 796
    iget-object v6, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->minf:Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->mhd:[B

    invoke-direct {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 797
    iget-object v6, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->minf:Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->dinf:[B

    invoke-direct {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 799
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v6

    .line 800
    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-direct {v0, v4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 801
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->minf:Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->stblStsd:[B

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 807
    iget-boolean v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    const v7, 0x636f3634

    const v8, 0x7374737a

    const/4 v9, 0x3

    const v10, 0x73747363

    const v11, 0x63747473

    const v12, 0x73747373

    const v13, 0x73747473

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    .line 808
    invoke-direct {v0, v13, v4, v14, v15}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 809
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_0

    .line 810
    invoke-direct {v0, v12, v4, v15, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 812
    :cond_0
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_1

    .line 813
    invoke-direct {v0, v11, v4, v14, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 815
    :cond_1
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v10, v4, v9, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 816
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    iget v9, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v8, v1, v15, v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const v7, 0x7374636f

    :goto_0
    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x1

    .line 817
    :goto_1
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    goto :goto_4

    .line 819
    :cond_4
    invoke-direct {v0, v13, v4, v14, v15}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    .line 820
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_5

    .line 821
    invoke-direct {v0, v12, v4, v15, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 823
    :cond_5
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_6

    .line 824
    invoke-direct {v0, v11, v4, v14, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 826
    :cond_6
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v10, v4, v9, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 827
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    iget v9, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v8, v1, v15, v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    const v7, 0x7374636f

    :goto_2
    if-eqz p3, :cond_8

    goto :goto_3

    :cond_8
    const/4 v14, 0x1

    .line 828
    :goto_3
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    :goto_4
    if-eqz p4, :cond_9

    .line 833
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeSgpd()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 834
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeSbgp()I

    move-result v1

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    .line 837
    :cond_9
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 838
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 839
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x69t
        0x6et
        0x66t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x62t
        0x6ct
    .end array-data
.end method

.method private makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I
    .locals 13

    .line 694
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v7

    const/16 v1, 0x8

    .line 696
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 701
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length v1, v1

    new-array v8, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 704
    iget-object v6, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v9, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-wide v9, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    long-to-double v9, v9

    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    iget v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    int-to-double v11, v6

    div-double/2addr v9, v11

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-long v9, v9

    aput-wide v9, v8, v5

    cmp-long v6, v9, v3

    if-lez v6, :cond_0

    move-wide v3, v9

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 713
    :cond_1
    invoke-direct {p0, v3, v4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMvhd(J)V

    const/4 v1, 0x0

    .line 715
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 716
    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    array-length v2, v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    .line 720
    aget-wide v2, v8, v1

    aget v4, p1, v1

    aget-object v5, p2, v1

    move-object v0, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeTrak(IJILorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad track matrix length (expected 36) in track n\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_3
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    move-result v1

    return v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x6ft
        0x6ft
        0x76t
    .end array-data
.end method

.method private makeMvhd(J)V
    .locals 3

    const/16 v0, 0xc

    .line 665
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x1c

    .line 668
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    .line 669
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    .line 670
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 671
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 672
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 673
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 668
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x34

    .line 676
    new-array p1, p1, [B

    fill-array-data p1, :array_1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x18

    .line 685
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/4 p1, 0x4

    .line 686
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 687
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 688
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 686
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x78t
        0x6dt
        0x76t
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
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
        0x40t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private makeSbgp()I
    .locals 2

    .line 859
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v0

    const/16 v1, 0x1c

    .line 861
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/lit8 v0, v0, 0x14

    return v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x62t
        0x67t
        0x70t
        0x0t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private makeSgpd()[B
    .locals 1

    const/16 v0, 0x1a

    .line 888
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1at
        0x73t
        0x67t
        0x70t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private makeTrak(IJILorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)V
    .locals 4

    .line 728
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    move-result p4

    const/16 v0, 0x14

    .line 730
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x30

    .line 737
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 738
    iget-wide v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 739
    iget-wide v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    .line 740
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    .line 741
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 742
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0x28

    .line 743
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 744
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bLayer:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 745
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 746
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bVolume:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 749
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x8

    .line 750
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 751
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bHeight:I

    .line 752
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 750
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 756
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 765
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->edstElst:Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    const/4 v3, 0x0

    goto :goto_0

    .line 770
    :cond_0
    iget-wide v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->mediaTime:J

    long-to-int v3, v2

    .line 771
    iget v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->bMediaRate:I

    :goto_0
    const/16 v2, 0xc

    .line 775
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    long-to-int p3, p2

    .line 776
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 777
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 778
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 779
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 774
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 782
    iget-object p2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object p1, p2, p1

    iget-object p2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object p2, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    iget-object p1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    sget-object p3, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    if-ne p1, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p2, p5, p6, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMdia(Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;ZZ)V

    .line 784
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x68t
        0x74t
        0x6bt
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x24t
        0x65t
        0x64t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x65t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private outBackup()V
    .locals 5

    .line 452
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 453
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_0
    return-void
.end method

.method private outRestore()V
    .locals 5

    .line 462
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 463
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    const-wide/16 v0, -0x1

    .line 464
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_0
    return-void
.end method

.method private outSeek(J)V
    .locals 2

    .line 516
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 518
    iput-wide p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    const-wide/16 v0, 0x0

    .line 521
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 522
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSkip(J)V

    return-void

    .line 524
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cannot seek or rewind the output stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private outSkip(J)V
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 530
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    return-void
.end method

.method private outWrite([B)V
    .locals 1

    .line 507
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([BI)V

    return-void
.end method

.method private outWrite([BI)V
    .locals 4

    .line 511
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 512
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    return-void
.end method

.method private writeEntry64(IJ)I
    .locals 2

    .line 425
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outBackup()V

    .line 427
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    const/16 v0, 0x8

    .line 428
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method

.method private varargs writeEntryArray(II[I)I
    .locals 4

    .line 435
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outBackup()V

    .line 437
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    mul-int/lit8 v0, p2, 0x4

    .line 440
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 443
    aget v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 24

    move-object/from16 v0, p0

    .line 147
    iget-boolean v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->done:Z

    if-nez v1, :cond_2d

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object/from16 v1, p1

    .line 158
    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 161
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v2, v1

    new-array v2, v2, [I

    .line 162
    array-length v3, v1

    new-array v3, v3, [I

    .line 163
    array-length v4, v1

    new-array v4, v4, [I

    .line 164
    array-length v1, v1

    new-array v1, v1, [I

    .line 166
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length v5, v5

    new-array v6, v5, [Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    .line 168
    new-instance v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;

    invoke-direct {v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;-><init>()V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length v8, v5

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    aget-object v5, v5, v7

    iget-object v8, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    sget-object v11, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    if-ne v8, v11, :cond_1

    .line 174
    iget-object v5, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v5, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    iget v5, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    div-int/lit16 v5, v5, 0x3e8

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    const-wide/16 v13, 0x8

    const/4 v8, 0x0

    const-wide/16 v15, 0x0

    .line 180
    :goto_2
    iget-object v11, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v11, v11

    if-ge v8, v11, :cond_e

    const/4 v11, -0x1

    const/16 v19, 0x0

    .line 186
    :goto_3
    iget-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    aget-object v9, v9, v8

    invoke-virtual {v9, v10}, Lorg/schabi/newpipe/streams/Mp4DashReader;->getNextChunk(Z)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 188
    aget v12, v3, v8

    if-ge v12, v10, :cond_2

    iget-object v12, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v12, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v12, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    iget v12, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    if-lez v12, :cond_2

    .line 189
    aput v12, v3, v8

    .line 192
    :cond_2
    iget-object v12, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v12, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v12, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    const/16 v20, 0x1

    iget v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    int-to-long v1, v10

    add-long/2addr v13, v1

    .line 193
    aget v1, v21, v8

    iget v2, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    add-int/2addr v1, v2

    aput v1, v21, v8

    :goto_4
    move/from16 v1, v19

    .line 196
    invoke-virtual {v9}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->getNextSampleInfo()Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 197
    iget-boolean v10, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v10, :cond_3

    .line 198
    aget-object v10, v6, v8

    iget v12, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 201
    :cond_3
    iget v10, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    aget v12, v4, v8

    if-le v10, v12, :cond_4

    .line 202
    aput v10, v4, v8

    .line 205
    :cond_4
    aget-object v10, v6, v8

    iget v12, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 206
    iget v12, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-eq v1, v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v12

    goto :goto_5

    :cond_5
    move/from16 v19, v1

    .line 211
    :goto_5
    iget-boolean v1, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    if-eqz v1, :cond_6

    .line 212
    iget v1, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    if-eq v1, v11, :cond_6

    .line 213
    iget v2, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move v11, v1

    :cond_6
    int-to-long v1, v12

    add-long/2addr v15, v1

    goto :goto_4

    :cond_7
    move/from16 v19, v1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    const/16 v20, 0x1

    .line 222
    aget v1, v3, v8

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    .line 223
    aget v1, v4, v8

    aput v1, v3, v8

    .line 226
    :cond_9
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->rewind()V

    if-lez v5, :cond_a

    .line 229
    aget-object v1, v6, v8

    invoke-direct {v0, v1, v5, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V

    goto :goto_6

    .line 231
    :cond_a
    aget-object v1, v6, v8

    const/4 v2, 0x6

    const/4 v9, 0x2

    invoke-direct {v0, v1, v9, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V

    .line 234
    :goto_6
    aget-object v1, v6, v8

    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    aput v2, v22, v8

    const/4 v2, 0x1

    if-ne v7, v2, :cond_b

    const/4 v2, 0x0

    .line 237
    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    move/from16 v7, v19

    .line 238
    iput v7, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 240
    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    .line 243
    :goto_7
    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    iget v7, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-ne v2, v7, :cond_c

    const/4 v2, -0x1

    .line 244
    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 248
    :cond_c
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v1, v1, v8

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget-wide v9, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    const-wide/16 v11, 0x1

    cmp-long v2, v9, v11

    if-gez v2, :cond_d

    .line 249
    aget v2, v21, v8

    int-to-long v9, v2

    iput-wide v9, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_e
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    const/4 v2, 0x6

    const-wide v7, 0xfffeffffL

    cmp-long v1, v13, v7

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 257
    :goto_8
    invoke-direct {v0, v3, v6, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I

    move-result v7

    const/high16 v8, 0x240000

    if-ge v7, v8, :cond_10

    .line 260
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_10
    const/4 v8, 0x0

    .line 263
    iput-boolean v8, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    const-wide/16 v8, 0x0

    .line 264
    iput-wide v8, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 266
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeFtyp()I

    move-result v8

    if-lez v7, :cond_11

    const/high16 v9, 0x10000

    .line 271
    new-array v10, v9, [B

    :goto_9
    if-lez v7, :cond_11

    .line 273
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 274
    invoke-direct {v0, v10, v11}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([BI)V

    sub-int/2addr v7, v11

    goto :goto_9

    .line 279
    :cond_11
    iget-object v7, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_12

    int-to-long v9, v8

    .line 280
    invoke-direct {v0, v9, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 285
    :cond_12
    invoke-direct {v0, v3, v6, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I

    const/4 v3, 0x0

    .line 289
    :goto_a
    iget-object v7, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v7, v7

    const/4 v9, 0x0

    if-ge v3, v7, :cond_15

    .line 290
    aget-object v7, v6, v3

    iget v7, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    aget v10, v22, v3

    aget v11, v4, v3

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct {v0, v7, v11, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 291
    aget-object v7, v6, v3

    iget v10, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    iget-object v7, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    array-length v11, v7

    invoke-direct {v0, v10, v11, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 293
    aget-object v7, v6, v3

    iput-object v9, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    .line 294
    iget v9, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v9, :cond_13

    const/4 v9, 0x1

    .line 295
    aput v9, v22, v3

    const/4 v10, -0x1

    .line 296
    aput v10, v21, v3

    goto :goto_b

    :cond_13
    const/4 v9, 0x1

    .line 298
    :goto_b
    iget v7, v7, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    if-lez v7, :cond_14

    .line 299
    aget v10, v22, v3

    filled-new-array {v10}, [I

    move-result-object v10

    invoke-direct {v0, v7, v9, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 303
    :cond_15
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_16

    .line 304
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    :cond_16
    move-wide v11, v15

    .line 307
    invoke-direct {v0, v11, v12, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMdat(JZ)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([B)V

    .line 309
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v4, v3

    new-array v4, v4, [I

    if-lez v5, :cond_17

    move v7, v5

    goto :goto_c

    :cond_17
    const/4 v7, 0x6

    .line 311
    :goto_c
    new-array v7, v7, [I

    if-lez v5, :cond_18

    move v10, v5

    goto :goto_d

    :cond_18
    const/4 v10, 0x6

    .line 312
    :goto_d
    new-array v10, v10, [I

    .line 314
    array-length v3, v3

    :goto_e
    if-lez v3, :cond_2a

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 318
    :goto_f
    iget-object v12, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v12, v12

    if-ge v3, v12, :cond_29

    .line 319
    aget v12, v4, v3

    if-gez v12, :cond_1a

    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v23, v5

    const/4 v5, 0x2

    :cond_19
    const/4 v9, 0x1

    goto/16 :goto_1a

    .line 323
    :cond_1a
    iget-wide v13, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    if-lez v5, :cond_1b

    move v12, v5

    goto :goto_10

    :cond_1b
    if-nez v12, :cond_1c

    const/4 v12, 0x2

    goto :goto_10

    :cond_1c
    const/4 v12, 0x6

    :goto_10
    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v12, :cond_24

    .line 334
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->getNextSample(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v9

    if-nez v9, :cond_1e

    .line 337
    aget-object v9, v6, v3

    iget v9, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v9, :cond_1d

    aget v12, v21, v3

    if-ltz v12, :cond_1d

    move/from16 v17, v1

    .line 338
    aget v1, v22, v3

    filled-new-array {v1, v12}, [I

    move-result-object v1

    const/4 v12, 0x1

    invoke-direct {v0, v9, v12, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 340
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    :goto_12
    const/4 v1, -0x1

    goto :goto_13

    :cond_1d
    move/from16 v17, v1

    const/4 v12, 0x1

    goto :goto_12

    .line 342
    :goto_13
    aput v1, v4, v3

    :goto_14
    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v23, v5

    const/4 v5, 0x2

    goto/16 :goto_18

    :cond_1e
    move/from16 v17, v1

    const/4 v1, -0x1

    const/16 v20, 0x1

    .line 346
    aget v18, v4, v3

    add-int/lit8 v18, v18, 0x1

    aput v18, v4, v3

    .line 348
    aget-object v1, v6, v3

    move/from16 v18, v3

    iget v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move-object/from16 v19, v4

    if-lez v3, :cond_21

    .line 349
    iget-object v4, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->info:Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    iget v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    move/from16 v23, v5

    aget v5, v21, v18

    if-ne v4, v5, :cond_1f

    .line 350
    aget v1, v22, v18

    add-int/lit8 v1, v1, 0x1

    aput v1, v22, v18

    :goto_15
    const/4 v5, 0x2

    goto :goto_17

    :cond_1f
    if-ltz v5, :cond_20

    .line 353
    aget v4, v22, v18

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v3

    iput v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 355
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    goto :goto_16

    :cond_20
    const/4 v5, 0x2

    .line 357
    :goto_16
    aput v20, v22, v18

    .line 358
    iget-object v1, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->info:Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    aput v1, v21, v18

    goto :goto_17

    :cond_21
    move/from16 v23, v5

    goto :goto_15

    .line 362
    :goto_17
    aget-object v1, v6, v18

    iget v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v3, :cond_22

    iget-object v3, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->info:Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    iget-boolean v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v3, :cond_22

    add-int/lit8 v3, v2, 0x1

    .line 363
    aget v4, v19, v18

    aput v4, v10, v2

    move v2, v3

    .line 366
    :cond_22
    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v1, :cond_23

    .line 367
    iget-object v1, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v1, v1

    aput v1, v7, v15

    .line 370
    :cond_23
    iget-object v1, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v3, v1

    invoke-direct {v0, v1, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite([BI)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v23

    const/4 v9, 0x0

    goto/16 :goto_11

    :cond_24
    move/from16 v17, v1

    goto/16 :goto_14

    :goto_18
    if-lez v15, :cond_19

    add-int/lit8 v11, v11, 0x1

    .line 376
    aget-object v1, v6, v18

    iget v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v3, :cond_25

    .line 377
    invoke-direct {v0, v3, v15, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v3

    iput v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    :cond_25
    if-lez v2, :cond_26

    .line 381
    aget-object v1, v6, v18

    iget v3, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    invoke-direct {v0, v3, v2, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v2

    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 384
    :cond_26
    aget-object v1, v6, v18

    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    if-lez v2, :cond_27

    if-eqz v17, :cond_28

    .line 386
    invoke-direct {v0, v2, v13, v14}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntry64(IJ)I

    move-result v2

    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    :cond_27
    const/4 v9, 0x1

    goto :goto_19

    :cond_28
    long-to-int v3, v13

    .line 388
    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v9, 0x1

    invoke-direct {v0, v2, v9, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v2

    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 393
    :goto_19
    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    :goto_1a
    add-int/lit8 v3, v18, 0x1

    move/from16 v1, v17

    move-object/from16 v4, v19

    move/from16 v5, v23

    const/4 v2, 0x6

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_29
    move v3, v11

    const/4 v9, 0x0

    goto/16 :goto_e

    .line 398
    :cond_2a
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2b

    int-to-long v1, v8

    .line 400
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 401
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    const/4 v1, 0x0

    .line 402
    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_2b
    return-void

    .line 151
    :cond_2c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "the provided output is not writable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "already done"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseSources()V
    .locals 5

    .line 79
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_2

    .line 82
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 87
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 88
    new-instance v3, Lorg/schabi/newpipe/streams/Mp4DashReader;

    iget-object v4, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    .line 89
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 93
    :cond_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :goto_1
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 94
    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs selectTracks([I)V
    .locals 5

    .line 98
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v1, v1

    new-array v1, v1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    iput-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 108
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, v1

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectTrack(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 111
    :cond_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 112
    throw p1

    .line 102
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "tracks already selected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMainBrand(I)V
    .locals 0

    .line 116
    iput p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    return-void
.end method
