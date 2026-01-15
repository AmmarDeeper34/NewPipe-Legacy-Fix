.class public Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trun"
.end annotation


# instance fields
.field bEntries:[B

.field bFirstSampleFlags:I

.field public bFlags:I

.field public chunkDuration:I

.field public chunkSize:I

.field dataOffset:I

.field entriesRowSize:I

.field public entryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
    .locals 4

    .line 818
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    .line 820
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 824
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x200

    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 828
    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 829
    iget p2, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iput p2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    :cond_2
    if-nez p1, :cond_3

    .line 832
    iget p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 833
    iget p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    :cond_3
    return-object v0
.end method

.method public getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
    .locals 3

    .line 795
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    mul-int p1, p1, v1

    invoke-static {v0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 796
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;-><init>()V

    .line 798
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 801
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 804
    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 807
    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 811
    :cond_3
    iget p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {p1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    .line 812
    iget p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    return-object v0
.end method
