.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4DashChunk"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field private i:I

.field public moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 910
    iput v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    return-void
.end method


# virtual methods
.method public getNextSample()Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;
    .locals 5

    .line 920
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 923
    iget v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 927
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;-><init>()V

    .line 928
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->info:Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 929
    iget v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->data:[B

    .line 931
    iget-object v2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashSample;->info:Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-ne v1, v2, :cond_1

    return-object v0

    .line 932
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached while reading a sample"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This chunk has info only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextSampleInfo()Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
    .locals 4

    .line 913
    iget v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->moof:Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Moof;->traf:Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->trun:Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    iget v3, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 916
    iput v3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lorg/schabi/newpipe/streams/Mp4DashReader$Traf;->tfhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    return-object v0
.end method
