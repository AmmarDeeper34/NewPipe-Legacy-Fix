.class public Lorg/schabi/newpipe/streams/Mp4DashReader;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Box;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;,
        Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;
    }
.end annotation


# instance fields
.field private backupBox:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

.field private box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

.field private brands:[I

.field private chunkZero:Z

.field private moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

.field private selectedTrack:I

.field private final stream:Lorg/schabi/newpipe/streams/DataReader;

.field private tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    .line 55
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 63
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    .line 70
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/DataReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    return-void
.end method

.method private boxName(I)Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private boxName(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Ljava/lang/String;
    .locals 0

    .line 258
    iget p1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V
    .locals 6

    .line 306
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-ltz v4, :cond_1

    .line 317
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    return-void

    .line 311
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 313
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    .line 311
    const-string p1, "parser go beyond limits of the box. type=%s offset=%s size=%s position=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasFlag(II)Z
    .locals 0

    .line 0
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private parseEdts(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;
    .locals 5

    const v0, 0x656c7374

    .line 674
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 679
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;

    invoke-direct {p1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;-><init>()V

    .line 681
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 682
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 684
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v2

    if-ge v2, v1, :cond_2

    const/high16 v0, 0x10000

    .line 686
    iput v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 692
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    move-result-wide v3

    iput-wide v3, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->mediaTime:J

    .line 694
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x10

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    goto :goto_1

    .line 696
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 697
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->mediaTime:J

    .line 700
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v0

    iput v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1
.end method

.method private parseFtyp(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[I
    .locals 5

    .line 479
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int p1, v0

    new-array v0, p1, [I

    .line 481
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 483
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 486
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseHdlr(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;
    .locals 6

    .line 605
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 607
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;-><init>()V

    const/16 v1, 0xc

    .line 608
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->bReserved:[B

    .line 610
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->type:I

    .line 611
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->subType:I

    .line 612
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->read([B)I

    .line 615
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    return-object v0
.end method

.method private parseMdia(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;
    .locals 6

    .line 575
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;-><init>()V

    :goto_0
    const v1, 0x6d646864

    const v2, 0x68646c72    # 4.3148E24f

    const v3, 0x6d696e66

    .line 578
    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 579
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-eq v5, v2, :cond_3

    if-eq v5, v1, :cond_1

    if-eq v5, v3, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMinf(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->minf:Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    goto :goto_1

    .line 581
    :cond_1
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->mdhd:[B

    .line 584
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x8

    .line 585
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x4

    :cond_2
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    .line 586
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 587
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    goto :goto_1

    .line 590
    :cond_3
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseHdlr(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->hdlr:Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

    .line 596
    :goto_1
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private parseMfhd()I
    .locals 3

    .line 365
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 367
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v0

    return v0
.end method

.method private parseMinf(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;
    .locals 3

    .line 706
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;-><init>()V

    .line 709
    :goto_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilAnyBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 716
    :sswitch_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseStbl(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->stblStsd:[B

    goto :goto_1

    .line 720
    :sswitch_1
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->mhd:[B

    goto :goto_1

    .line 713
    :sswitch_2
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Minf;->dinf:[B

    .line 724
    :goto_1
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x64696e66 -> :sswitch_2
        0x736d6864 -> :sswitch_1
        0x7374626c -> :sswitch_0
        0x766d6864 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseMoof(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;
    .locals 3

    .line 344
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;-><init>()V

    const v1, 0x6d666864

    .line 346
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 347
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMfhd()I

    move-result v2

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->mfhdSequenceNumber:I

    .line 348
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    :cond_0
    const v1, 0x74726166

    .line 350
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 351
    invoke-direct {p0, v1, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTraf(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    move-result-object v2

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    .line 352
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 354
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private parseMoov(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;
    .locals 6

    const v0, 0x6d766864

    .line 621
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 622
    new-instance v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;

    invoke-direct {v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;-><init>()V

    .line 623
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMvhd()Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

    move-result-object v2

    iput-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->mvhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

    .line 624
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->mvhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

    iget-wide v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const v2, 0x7472616b

    const v3, 0x6d766578

    .line 627
    filled-new-array {v2, v3}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 629
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTrak(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 634
    :cond_1
    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->mvhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

    iget-wide v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v3, v2

    invoke-direct {p0, v4, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMvex(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)[Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    move-result-object v2

    iput-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->mvexTrex:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    .line 638
    :goto_1
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 641
    new-array p1, p1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iput-object p1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->trak:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    return-object v1
.end method

.method private parseMvex(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)[Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;
    .locals 2

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const p2, 0x74726578

    .line 650
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 651
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTrex()Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 655
    new-array p1, p1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    return-object p1
.end method

.method private parseMvhd()Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;
    .locals 5

    .line 493
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    .line 494
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 498
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    if-nez v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 500
    new-instance v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;

    invoke-direct {v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;-><init>()V

    .line 501
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readUnsignedInt()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;->timeScale:J

    .line 504
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    if-nez v0, :cond_1

    const-wide/16 v3, 0x4

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 511
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v2, 0x4c

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 513
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readUnsignedInt()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    return-object v1
.end method

.method private parseStbl(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B
    .locals 1

    const v0, 0x73747364

    .line 737
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 740
    new-array p1, p1, [B

    return-object p1

    .line 743
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B

    move-result-object p1

    return-object p1
.end method

.method private parseTfdt()J
    .locals 4

    .line 425
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    .line 426
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseTfhd(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;
    .locals 3

    .line 396
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;-><init>()V

    .line 398
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 399
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->trackId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 405
    :cond_0
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x8

    invoke-virtual {p1, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 408
    :cond_1
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 409
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 411
    :cond_2
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 412
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 414
    :cond_3
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 415
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    .line 417
    :cond_4
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 418
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    :cond_5
    return-object v0
.end method

.method private parseTkhd()Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;
    .locals 5

    .line 519
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    .line 521
    new-instance v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    invoke-direct {v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;-><init>()V

    .line 526
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    if-nez v0, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 528
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    .line 530
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    .line 534
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 536
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bLayer:S

    .line 537
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    .line 538
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bVolume:S

    .line 540
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    const/16 v0, 0x24

    .line 542
    new-array v0, v0, [B

    iput-object v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    .line 543
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/streams/DataReader;->read([B)I

    .line 545
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 546
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bHeight:I

    return-object v1
.end method

.method private parseTraf(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;
    .locals 3

    .line 371
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;-><init>()V

    const v1, 0x74666864

    .line 373
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 374
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTfhd(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    move-result-object p2

    iput-object p2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 375
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 377
    iget-object p2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7472756e

    const v1, 0x74666474

    .line 381
    filled-new-array {p2, v1}, [I

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p1

    .line 383
    iget v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-ne v2, v1, :cond_1

    .line 384
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTfdt()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfdt:J

    .line 385
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 386
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p1

    .line 389
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTrun()Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    move-result-object p2

    iput-object p2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 390
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    return-object v0
.end method

.method private parseTrak(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;
    .locals 5

    .line 552
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;-><init>()V

    const v1, 0x746b6864

    .line 554
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 555
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseTkhd()Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    move-result-object v2

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 556
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    :goto_0
    const v1, 0x6d646961

    const v2, 0x65647473

    .line 558
    filled-new-array {v1, v2}, [I

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 559
    iget v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-eq v4, v2, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMdia(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    goto :goto_1

    .line 564
    :cond_1
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseEdts(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->edstElst:Lorg/schabi/newpipe/streams/Mp4DashReader$Elst;

    .line 568
    :goto_1
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private parseTrex()Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;
    .locals 3

    .line 661
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 663
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;-><init>()V

    .line 664
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->-$$Nest$fputtrackId(Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;I)V

    .line 665
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->defaultSampleDescriptionIndex:I

    .line 666
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->defaultSampleDuration:I

    .line 667
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->defaultSampleSize:I

    .line 668
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->defaultSampleFlags:I

    return-object v0
.end method

.method private parseTrun()Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;
    .locals 8

    .line 431
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;-><init>()V

    .line 432
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 433
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    const/4 v1, 0x0

    .line 435
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 436
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    .line 437
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 439
    :cond_0
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v5, 0x200

    invoke-static {v2, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 442
    :cond_1
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x400

    invoke-static {v2, v6}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 445
    :cond_2
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x800

    invoke-static {v2, v6}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 446
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 448
    :cond_3
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    iget v7, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v2, v2, v7

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    .line 450
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 453
    :cond_4
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v2, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 454
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    .line 457
    :cond_5
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/streams/DataReader;->read([B)I

    .line 459
    :goto_0
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    if-ge v1, v2, :cond_9

    .line 460
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    move-result-object v2

    .line 461
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 462
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v7, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    add-int/2addr v4, v7

    iput v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 464
    :cond_6
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 465
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    iget v7, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    add-int/2addr v4, v7

    iput v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 467
    :cond_7
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v6}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 468
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 469
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-object v0
.end method

.method private readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;
    .locals 6

    .line 266
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;-><init>()V

    .line 267
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    .line 268
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    .line 269
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    .line 271
    iget-wide v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 272
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    :cond_0
    return-object v0
.end method

.method private readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;
    .locals 4

    .line 279
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 280
    iget v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 281
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFullBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[B
    .locals 5

    .line 289
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    long-to-int v1, v0

    .line 291
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 293
    iget v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    .line 297
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 298
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    iget v1, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    .line 299
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 298
    const-string p1, "EOF reached in box: type=%s offset=%s size=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private untilAnyBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;
    .locals 6

    .line 336
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object p1

    return-object p1
.end method

.method private varargs untilBox(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;[I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;
    .locals 6

    .line 322
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 323
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 324
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    .line 325
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    if-ne v4, v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_1
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBrands()[I
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:[I

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextChunk(Z)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;
    .locals 10

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    aget-object v0, v0, v1

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 181
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 183
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 186
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    goto :goto_1

    .line 188
    :cond_2
    iput-boolean v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 191
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iget v4, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    const v5, 0x6d646174

    if-eq v4, v5, :cond_9

    const v2, 0x6d6f6f66

    if-eq v4, v2, :cond_3

    goto :goto_0

    .line 193
    :cond_3
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    if-nez v2, :cond_8

    .line 197
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMoof(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;I)Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    .line 199
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    const-wide/16 v4, 0x8

    if-eqz v1, :cond_5

    .line 202
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v6, v2

    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iget-wide v8, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    if-ltz v2, :cond_4

    goto :goto_2

    .line 204
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "trun box has wrong data offset, points outside of concurrent mdat box"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    if-ge v2, v3, :cond_7

    .line 210
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iget v3, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    goto :goto_3

    .line 214
    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iget-wide v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->size:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 217
    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x900

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    if-nez v2, :cond_0

    .line 219
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iget v3, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    goto/16 :goto_0

    .line 194
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "moof found without mdat"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_9
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    if-eqz v1, :cond_c

    .line 231
    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    if-nez v1, :cond_a

    .line 232
    iput-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    goto/16 :goto_0

    .line 236
    :cond_a
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;-><init>()V

    .line 237
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    if-nez p1, :cond_b

    .line 239
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/streams/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    .line 242
    :cond_b
    iput-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    .line 244
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    return-object v0

    .line 228
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "mdat found without moof"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    return-object v2
.end method

.method public parse()V
    .locals 9

    .line 74
    iget v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x66747970

    .line 78
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    .line 79
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseFtyp(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    .line 80
    aget v0, v0, v1

    const v2, 0x64617368

    if-eq v0, v2, :cond_2

    const v2, 0x69736f35

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a MPEG-4 DASH container, major brand is not \'dash\' or \'iso5\' is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:[I

    aget v1, v3, v1

    .line 87
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 94
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iget v3, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f66

    if-eq v3, v4, :cond_4

    .line 95
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)V

    .line 96
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    move-result-object v2

    iput-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    .line 98
    iget v3, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f76

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 100
    :cond_3
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parseMoov(Lorg/schabi/newpipe/streams/Mp4DashReader$Box;)Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_b

    .line 112
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->trak:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    array-length v2, v2

    new-array v2, v2, [Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    iput-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    const/4 v2, 0x0

    .line 114
    :goto_2
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 115
    new-instance v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    invoke-direct {v4}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;-><init>()V

    aput-object v4, v3, v2

    .line 116
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->trak:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    aget-object v4, v4, v2

    iput-object v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 118
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->mvexTrex:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    if-eqz v3, :cond_6

    .line 119
    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 120
    iget-object v7, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iget-object v7, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trak:Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    iget-object v7, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    iget v7, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-static {v6}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->-$$Nest$fgettrackId(Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 121
    iget-object v7, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iput-object v6, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->trex:Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 126
    :cond_6
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Moov;->trak:[Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;

    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mdia;->hdlr:Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;

    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Hdlr;->subType:I

    const v4, 0x736f756e

    if-eq v3, v4, :cond_9

    const v4, 0x73756274

    if-eq v3, v4, :cond_8

    const v4, 0x76696465

    if-eq v3, v4, :cond_7

    .line 137
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Other:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 128
    :cond_7
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Video:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 134
    :cond_8
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Subtitles:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 131
    :cond_9
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;->kind:Lorg/schabi/newpipe/streams/Mp4DashReader$TrackKind;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    :cond_a
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    return-void

    .line 109
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided Mp4 doesn\'t have the \'moov\' box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewind()V
    .locals 5

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->rewind()V

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Lorg/schabi/newpipe/streams/Mp4DashReader$Box;

    iget-wide v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Box;->offset:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    return-void

    .line 159
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided stream doesn\'t allow seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectTrack(I)Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;
    .locals 1

    .line 146
    iput p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:[Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4Track;

    aget-object p1, v0, p1

    return-object p1
.end method
