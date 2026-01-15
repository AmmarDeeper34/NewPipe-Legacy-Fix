.class public Lorg/schabi/newpipe/streams/WebMReader;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/streams/WebMReader$Element;,
        Lorg/schabi/newpipe/streams/WebMReader$Segment;,
        Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;,
        Lorg/schabi/newpipe/streams/WebMReader$Info;,
        Lorg/schabi/newpipe/streams/WebMReader$TrackKind;,
        Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;,
        Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    }
.end annotation


# instance fields
.field private done:Z

.field private firstSegment:Z

.field private segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field private selectedTrack:I

.field private final stream:Lorg/schabi/newpipe/streams/DataReader;

.field private tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;


# direct methods
.method static bridge synthetic -$$Nest$fgetdone(Lorg/schabi/newpipe/streams/WebMReader;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedTrack(Lorg/schabi/newpipe/streams/WebMReader;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstream(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/DataReader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettracks(Lorg/schabi/newpipe/streams/WebMReader;)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->readCluster(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreadSimpleBlock(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->readSimpleBlock(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$muntilElement(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/DataReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    return-void
.end method

.method private elementID(J)Ljava/lang/String;
    .locals 1

    .line 210
    const-string v0, "0x"

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 6

    .line 214
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-ltz v4, :cond_1

    .line 225
    iget-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    return-void

    .line 219
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    iget v1, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    int-to-long v1, v1

    .line 221
    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

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

    .line 219
    const-string p1, "parser go beyond limits of the Element. type=%s offset=%s size=%s position=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B
    .locals 5

    .line 130
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    .line 131
    new-array p1, p1, [B

    .line 132
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/streams/DataReader;->read([B)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private readCluster(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    .locals 4

    .line 387
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;-><init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    const/16 v1, 0x67

    .line 389
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " without Timecode element"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readEbml(Lorg/schabi/newpipe/streams/WebMReader$Element;II)Z
    .locals 6

    const/16 v0, 0x2f7

    .line 230
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x282

    .line 238
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    .line 242
    :cond_2
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/WebMReader;->readString(Lorg/schabi/newpipe/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "webm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    const/16 p2, 0x285

    .line 245
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 247
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide p1

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-gtz p3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 5

    .line 171
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Element;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/WebMReader$Element;-><init>()V

    .line 172
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 173
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 174
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    .line 175
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    return-object v0
.end method

.method private readElement(I)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 5

    .line 181
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 182
    iget v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lorg/schabi/newpipe/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    int-to-long v3, p1

    .line 184
    invoke-direct {p0, v3, v4}, Lorg/schabi/newpipe/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private readEncodedNumber()J
    .locals 8

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    const/16 v2, 0x80

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_2

    and-int v4, v0, v2

    if-ne v4, v2, :cond_1

    const/16 v2, 0xff

    shr-int/2addr v2, v3

    and-int/2addr v0, v2

    int-to-long v4, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 154
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    const/16 v2, 0x8

    shl-long/2addr v4, v2

    int-to-long v6, v0

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-wide v4

    :cond_1
    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readInfo(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Info;
    .locals 5

    .line 252
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Info;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>()V

    :goto_0
    const v1, 0xad7b1

    const/16 v2, 0x489

    .line 254
    filled-new-array {v1, v2}, [I

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 255
    iget v4, v3, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    if-eq v4, v2, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    goto :goto_1

    .line 260
    :cond_1
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Info;->duration:J

    .line 263
    :goto_1
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    return-object v0

    .line 267
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Element Timecode not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J
    .locals 5

    .line 113
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    const-wide/16 v0, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_1

    .line 116
    iget-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    int-to-long v3, p1

    or-long/2addr v0, v3

    move p1, v2

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-wide v0
.end method

.method private readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;IZ)Lorg/schabi/newpipe/streams/WebMReader$Segment;
    .locals 6

    .line 275
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    :goto_0
    const v1, 0x549a966

    const v2, 0x654ae6b    # 4.000091E-35f

    const v3, 0xf43b675

    .line 277
    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 278
    iget v5, v4, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    if-ne v5, v3, :cond_0

    .line 279
    invoke-static {v0, v4}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->-$$Nest$fputcurrentCluster(Lorg/schabi/newpipe/streams/WebMReader$Segment;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto :goto_2

    :cond_0
    if-eq v5, v1, :cond_2

    if-eq v5, v2, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    invoke-direct {p0, v4, p2}, Lorg/schabi/newpipe/streams/WebMReader;->readTracks(Lorg/schabi/newpipe/streams/WebMReader$Element;I)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    goto :goto_1

    .line 284
    :cond_2
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/WebMReader;->readInfo(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Info;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 290
    :goto_1
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz p3, :cond_5

    .line 293
    iget-object p2, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Lorg/schabi/newpipe/streams/WebMReader$Info;

    if-eqz p2, :cond_4

    iget-object p2, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    if-eqz p2, :cond_4

    goto :goto_3

    .line 294
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cluster element found without Info and/or Tracks element at position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    return-object v0
.end method

.method private readSimpleBlock(Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 5

    .line 371
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 372
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->trackNumber:J

    .line 373
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    move-result v1

    iput-short v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    .line 374
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->flags:B

    .line 375
    iget-wide v1, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    iget-wide v3, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 376
    iget p1, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    const/16 v1, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->createdFromBlock:Z

    if-ltz v2, :cond_1

    return-object v0

    .line 380
    :cond_1
    new-instance p1, Ljava/io/IOException;

    iget v0, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    neg-int v0, v0

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 380
    const-string v0, "Unexpected SimpleBlock element size, missing %s bytes"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readString(Lorg/schabi/newpipe/streams/WebMReader$Element;)Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readTracks(Lorg/schabi/newpipe/streams/WebMReader$Element;I)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    .locals 12

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/16 v2, 0x2e

    .line 306
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 307
    new-instance v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    invoke-direct {v5}, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;-><init>()V

    const/4 v6, 0x0

    .line 310
    :goto_1
    new-array v7, v4, [I

    invoke-direct {p0, v2, v7}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 311
    iget v8, v7, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_9

    const/4 v9, 0x6

    if-eq v8, v9, :cond_8

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_6

    const/16 v9, 0x57

    if-eq v8, v9, :cond_5

    const/16 v9, 0x16aa

    if-eq v8, v9, :cond_4

    const/16 v9, 0x16bb

    if-eq v8, v9, :cond_3

    const/16 v9, 0x23a2

    if-eq v8, v9, :cond_2

    const v9, 0x3e383

    if-eq v8, v9, :cond_1

    const/16 v9, 0x60

    if-eq v8, v9, :cond_0

    const/16 v9, 0x61

    if-eq v8, v9, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    goto :goto_2

    .line 329
    :cond_1
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    goto :goto_2

    .line 322
    :cond_2
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    goto :goto_2

    .line 338
    :cond_3
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    goto :goto_2

    .line 335
    :cond_4
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    goto :goto_2

    .line 313
    :cond_5
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackNumber:J

    goto :goto_2

    .line 332
    :cond_6
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v6, v8, v10

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 319
    :cond_8
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readString(Lorg/schabi/newpipe/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_9
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    move-result-wide v8

    long-to-int v9, v8

    iput v9, v5, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    .line 343
    :goto_2
    invoke-direct {p0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto :goto_1

    :cond_a
    if-nez v6, :cond_b

    .line 346
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_b
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto/16 :goto_0

    .line 351
    :cond_c
    new-array p1, v4, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 353
    array-length p2, p1

    :goto_3
    if-ge v4, p2, :cond_f

    aget-object v0, p1, v4

    .line 354
    iget v2, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v2, v3, :cond_e

    if-eq v2, v1, :cond_d

    .line 362
    sget-object v2, Lorg/schabi/newpipe/streams/WebMReader$TrackKind;->Other:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    iput-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    goto :goto_4

    .line 359
    :cond_d
    sget-object v2, Lorg/schabi/newpipe/streams/WebMReader$TrackKind;->Audio:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    iput-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    goto :goto_4

    .line 356
    :cond_e
    sget-object v2, Lorg/schabi/newpipe/streams/WebMReader$TrackKind;->Video:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    iput-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:Lorg/schabi/newpipe/streams/WebMReader$TrackKind;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    return-object p1
.end method

.method private varargs untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 6

    .line 192
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    iget-wide v4, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 193
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    .line 194
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-object v0

    .line 197
    :cond_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget v3, p2, v2

    .line 198
    iget v4, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    if-ne v4, v3, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 203
    :cond_3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAvailableTracks()[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    return-object v0
.end method

.method public getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;
    .locals 3

    .line 91
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    return-object v0

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->-$$Nest$fgetref(Lorg/schabi/newpipe/streams/WebMReader$Segment;)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    const v0, 0x8538067

    .line 102
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    return-object v1

    .line 107
    :cond_2
    invoke-direct {p0, v0, v2, v2}, Lorg/schabi/newpipe/streams/WebMReader;->readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;IZ)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    return-object v0
.end method

.method public parse()V
    .locals 3

    const v0, 0xa45dfa3

    .line 64
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->readElement(I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, v0, v2, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readEbml(Lorg/schabi/newpipe/streams/WebMReader$Element;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    const v0, 0x8538067

    .line 70
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/streams/WebMReader;->readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;IZ)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 75
    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 77
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    .line 78
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fragment element not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported EBML data (WebM)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(I)Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;
    .locals 1

    .line 86
    iput p1, p0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    aget-object p1, v0, p1

    return-object p1
.end method
