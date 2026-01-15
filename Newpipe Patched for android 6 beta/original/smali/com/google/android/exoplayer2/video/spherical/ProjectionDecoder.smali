.class final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I = 0x64666c38

.field private static final TYPE_MESH:I = 0x6d657368

.field private static final TYPE_MSHP:I = 0x6d736870

.field private static final TYPE_PROJ:I = 0x70726f6a

.field private static final TYPE_RAW:I = 0x72617720

.field private static final TYPE_YTMP:I = 0x79746d70


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .locals 5

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/4 p0, 0x0

    .line 74
    :try_start_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    move-object v0, p0

    :goto_1
    if-nez v0, :cond_1

    return-object p0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    return-object p0

    .line 85
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object p0

    .line 83
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object p0
.end method

.method private static decodeZigZag(I)I
    .locals 1

    .line 0
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 2

    const/4 v0, 0x4

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const p0, 0x70726f6a

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .locals 23

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 180
    :cond_0
    new-array v1, v0, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readFloat()F

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v5, 0x7d00

    if-le v4, v5, :cond_2

    return-object v2

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 190
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    int-to-double v9, v0

    mul-double v9, v9, v5

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 193
    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    mul-int/lit8 v11, v4, 0x5

    .line 195
    new-array v11, v11, [F

    const/4 v13, 0x5

    .line 196
    new-array v14, v13, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v15, v4, :cond_6

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_5

    .line 200
    aget v18, v14, v2

    .line 201
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v19

    add-int v3, v18, v19

    if-ge v3, v0, :cond_4

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v18, v16, 0x1

    .line 205
    aget v19, v1, v3

    aput v19, v11, v16

    .line 206
    aput v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v18

    goto :goto_2

    :cond_4
    :goto_3
    return-object v17

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    goto :goto_1

    :cond_6
    move-object/from16 v17, v2

    .line 211
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 v0, 0x20

    .line 213
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 214
    new-array v2, v1, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_b

    .line 216
    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 217
    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 218
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    const v15, 0x1f400

    if-le v14, v15, :cond_7

    return-object v17

    :cond_7
    move v15, v1

    int-to-double v0, v4

    mul-double v0, v0, v5

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v14, 0x3

    .line 224
    new-array v1, v1, [F

    mul-int/lit8 v5, v14, 0x2

    .line 225
    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v6, v14, :cond_a

    .line 227
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v20

    add-int v12, v16, v20

    if-ltz v12, :cond_9

    if-lt v12, v4, :cond_8

    goto :goto_6

    :cond_8
    mul-int/lit8 v16, v6, 0x3

    mul-int/lit8 v20, v12, 0x5

    .line 231
    aget v21, v11, v20

    aput v21, v1, v16

    add-int/lit8 v21, v16, 0x1

    add-int/lit8 v22, v20, 0x1

    .line 232
    aget v22, v11, v22

    aput v22, v1, v21

    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v21, v20, 0x2

    .line 233
    aget v21, v11, v21

    aput v21, v1, v16

    mul-int/lit8 v16, v6, 0x2

    add-int/lit8 v21, v20, 0x3

    .line 234
    aget v21, v11, v21

    aput v21, v5, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v20, v20, 0x4

    .line 235
    aget v20, v11, v20

    aput v20, v5, v16

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v12

    const/16 v12, 0x8

    goto :goto_5

    :cond_9
    :goto_6
    return-object v17

    .line 237
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    invoke-direct {v0, v9, v1, v5, v13}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v15

    const/16 v0, 0x20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/16 v12, 0x8

    goto :goto_4

    .line 239
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x7

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x64666c38

    if-ne v0, v2, :cond_2

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 133
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 135
    :try_start_0
    invoke-static {p0, v0, v2}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 139
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 140
    throw p0

    :cond_2
    const v2, 0x72617720

    if-eq v0, v2, :cond_3

    return-object v1

    .line 145
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v0, :cond_3

    if-le v3, v1, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x79746d70

    if-eq v0, v2, :cond_2

    const v2, 0x6d736870

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v0, v3

    goto :goto_0

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    return-object v2
.end method

.method private static parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    if-le v3, v2, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v5, 0x6d657368

    if-ne v1, v5, :cond_2

    .line 161
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v4

    .line 165
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    return-object v0
.end method
