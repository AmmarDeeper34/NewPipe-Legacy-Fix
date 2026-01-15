.class public abstract Lokio/internal/-RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"


# direct methods
.method public static final commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;IIJJ)J
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v4, v1

    move/from16 v1, p2

    int-to-long v6, v1

    move/from16 v2, p3

    int-to-long v8, v2

    invoke-static/range {v4 .. v9}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    move-wide v10, v8

    .line 346
    iget-boolean v4, v0, Lokio/RealBufferedSource;->closed:Z

    if-nez v4, :cond_4

    move-wide/from16 v4, p4

    .line 63
    :goto_0
    iget-object v2, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move/from16 v9, p3

    move-wide/from16 v6, p6

    move v8, v1

    .line 349
    invoke-static/range {v2 .. v9}, Lokio/internal/-Buffer;->commonIndexOf(Lokio/Buffer;Lokio/ByteString;JJII)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_0

    return-wide v1

    .line 63
    :cond_0
    iget-object v1, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 358
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    sub-long/2addr v1, v10

    const-wide/16 v6, 0x1

    add-long v14, v1, v6

    cmp-long v1, v14, p6

    if-ltz v1, :cond_1

    return-wide v12

    .line 63
    :cond_1
    iget-object v2, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move-object/from16 v3, p1

    move-wide/from16 v8, p6

    move-wide v6, v4

    move/from16 v4, p2

    move/from16 v5, p3

    .line 362
    invoke-static/range {v2 .. v9}, Lokio/internal/-RealBufferedSource;->isMatchPossibleByExpandingBuffer(Lokio/Buffer;Lokio/ByteString;IIJJ)Z

    move-result v1

    move-wide v4, v6

    if-nez v1, :cond_2

    return-wide v12

    .line 372
    :cond_2
    iget-object v1, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v2, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    .line 372
    invoke-interface {v1, v2, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-nez v3, :cond_3

    return-wide v12

    .line 375
    :cond_3
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v3, p1

    move/from16 v1, p2

    goto :goto_0

    .line 346
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isMatchPossibleByExpandingBuffer(Lokio/Buffer;Lokio/ByteString;IIJJ)Z
    .locals 9

    .line 402
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, v0, p6

    if-gez v3, :cond_0

    return v2

    .line 405
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long/2addr v0, p6

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 406
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, p4

    add-long/2addr v5, v3

    int-to-long p3, p3

    .line 88
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    long-to-int p4, p3

    sub-int/2addr p4, v2

    if-gt v1, p4, :cond_2

    move v8, p4

    .line 408
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p3

    int-to-long v3, v8

    sub-long/2addr p3, v3

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-wide v4, p3

    invoke-virtual/range {v3 .. v8}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    :cond_1
    if-eq v8, v1, :cond_2

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
