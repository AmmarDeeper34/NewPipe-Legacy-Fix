.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;
.source "DToA.java"


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    .line 62
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    const/4 v0, 0x5

    .line 68
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/javascript/DToA;->bigtens:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BASEDIGIT(I)C
    .locals 1

    .line 0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x57

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method static JS_dtobasestr(ID)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    if-gt v0, p0, :cond_16

    const/16 v0, 0x24

    if-gt p0, v0, :cond_16

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string p0, "NaN"

    return-object p0

    .line 190
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    cmpl-double p0, p1, v1

    if-lez p0, :cond_1

    .line 191
    const-string p0, "Infinity"

    return-object p0

    :cond_1
    const-string p0, "-Infinity"

    return-object p0

    :cond_2
    cmpl-double v0, p1, v1

    if-nez v0, :cond_3

    .line 194
    const-string p0, "0"

    return-object p0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    neg-double p1, p1

    const/4 v0, 0x1

    .line 208
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v5, v3

    long-to-double v7, v5

    cmpl-double v9, v7, v3

    if-nez v9, :cond_6

    if-eqz v0, :cond_5

    neg-long v5, v5

    .line 212
    :cond_5
    invoke-static {v5, v6, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 215
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const/16 v7, 0x34

    shr-long v7, v5, v7

    long-to-int v8, v7

    and-int/lit16 v7, v8, 0x7ff

    const-wide v8, 0xfffffffffffffL

    if-nez v7, :cond_7

    and-long/2addr v5, v8

    shl-long/2addr v5, v2

    goto :goto_1

    :cond_7
    and-long/2addr v5, v8

    const-wide/high16 v8, 0x10000000000000L

    or-long/2addr v5, v8

    :goto_1
    if-eqz v0, :cond_8

    neg-long v5, v5

    :cond_8
    add-int/lit16 v7, v7, -0x433

    .line 227
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    if-lez v7, :cond_9

    .line 229
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    :cond_9
    if-gez v7, :cond_a

    neg-int v5, v7

    .line 231
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 233
    :cond_a
    :goto_2
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    cmpl-double v5, p1, v3

    if-nez v5, :cond_b

    return-object v0

    .line 247
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-double v3, p1, v3

    .line 251
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x20

    shr-long v6, p1, v0

    long-to-int v0, v6

    long-to-int p2, p1

    .line 255
    new-array p1, v2, [I

    .line 256
    new-array v6, v2, [I

    .line 258
    invoke-static {v3, v4, p1, v6}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v3

    ushr-int/lit8 v4, v0, 0x14

    and-int/lit16 v4, v4, 0x7ff

    neg-int v4, v4

    if-nez v4, :cond_c

    const/4 v4, -0x1

    :cond_c
    add-int/lit16 v6, v4, 0x434

    const-wide/16 v7, 0x1

    .line 267
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    if-nez p2, :cond_d

    const v10, 0xfffff

    and-int/2addr v10, v0

    if-nez v10, :cond_d

    const/high16 v10, 0x7fe00000

    and-int/2addr v0, v10

    if-eqz v0, :cond_d

    add-int/lit16 v6, v4, 0x435

    const-wide/16 v10, 0x2

    .line 275
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_4

    :cond_d
    move-object v0, v9

    .line 278
    :goto_4
    aget p1, p1, v1

    add-int/2addr p1, v6

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 279
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 280
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v6, p0

    .line 286
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/4 p0, 0x0

    .line 290
    :goto_5
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    .line 292
    aget-object v6, p1, v2

    .line 293
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-char p1, p1

    .line 294
    invoke-static {v9, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v0

    goto :goto_6

    .line 296
    :cond_e
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 297
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v7

    .line 301
    :goto_6
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    .line 303
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 304
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gtz v10, :cond_f

    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    :goto_7
    if-nez v8, :cond_11

    and-int/lit8 v10, p2, 0x1

    if-nez v10, :cond_11

    if-lez v7, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    const/4 p0, 0x1

    goto :goto_b

    :cond_11
    if-ltz v7, :cond_13

    if-nez v7, :cond_12

    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_12

    goto :goto_a

    :cond_12
    if-lez v8, :cond_14

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_13
    :goto_a
    if-lez v8, :cond_10

    .line 313
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 314
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_10

    goto :goto_9

    .line 326
    :cond_14
    :goto_b
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_15

    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    move-object p1, v6

    goto :goto_5

    .line 185
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad base: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .locals 8

    .line 146
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v2, v1

    long-to-int p1, p0

    const p0, 0xfffff

    and-int/2addr p0, v2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    const/high16 v2, 0x100000

    or-int/2addr p0, v2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/16 v5, 0x8

    .line 156
    new-array v5, v5, [B

    .line 157
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v6

    ushr-int/2addr p1, v6

    if-eqz v6, :cond_1

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, p0, v7

    or-int/2addr p1, v7

    .line 160
    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    shr-int/2addr p0, v6

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 163
    :goto_0
    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    if-eqz p0, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    .line 167
    :cond_2
    new-array v5, v3, [B

    .line 168
    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result p1

    ushr-int/2addr p0, p1

    .line 170
    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    add-int/lit8 v6, p1, 0x20

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    add-int/lit16 v1, v1, -0x433

    add-int/2addr v1, v6

    .line 175
    aput v1, p2, v4

    rsub-int/lit8 p0, v6, 0x35

    .line 176
    aput p0, p3, v4

    goto :goto_2

    :cond_4
    add-int/lit16 v1, v1, -0x432

    add-int/2addr v1, v6

    .line 178
    aput v1, p2, v4

    mul-int/lit8 v2, v2, 0x20

    .line 179
    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, p3, v4

    .line 181
    :goto_2
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method private static hi0bits(I)I
    .locals 2

    .line 0
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    :cond_1
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_2
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_3
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p0, v1

    if-nez p0, :cond_4

    const/16 p0, 0x20

    return p0

    :cond_4
    return v0
.end method

.method private static lo0bits(I)I
    .locals 3

    .line 0
    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    ushr-int/lit8 p0, p0, 0x10

    const/16 v1, 0x10

    :cond_3
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_4
    and-int/lit8 v0, p0, 0xf

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_5
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 p0, p0, 0x2

    :cond_6
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_7

    add-int/2addr v1, v2

    ushr-int/2addr p0, v2

    and-int/2addr p0, v2

    if-nez p0, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    return v1
.end method

.method private static stuffBits([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 134
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 135
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 136
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 137
    aput-byte p2, p0, p1

    return-void
.end method
