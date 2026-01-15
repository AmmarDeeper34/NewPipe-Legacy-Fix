.class public Lorg/mozilla/javascript/dtoa/DoubleFormatter;
.super Ljava/lang/Object;
.source "DoubleFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BQ_MASK:I = 0x7ff

.field private static final C_MIN:J = 0x10000000000000L

.field static final C_TINY:J = 0x3L

.field static final E_MAX:I = 0x135

.field static final E_MIN:I = -0x143

.field static final H:I = 0x11

.field private static final MASK_63:J = 0x7fffffffffffffffL

.field static final P:I = 0x35

.field static final Q_MAX:I = 0x3cb

.field static final Q_MIN:I = -0x432

.field private static final T_MASK:J = 0xfffffffffffffL

.field private static final W:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rop(JJJ)J
    .locals 2

    .line 246
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide p2

    mul-long v0, p0, p4

    .line 248
    invoke-static {p0, p1, p4, p5}, Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide p0

    const/4 p4, 0x1

    ushr-long p4, v0, p4

    add-long/2addr p4, p2

    const/16 p2, 0x3f

    ushr-long v0, p4, p2

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p4, v0

    add-long/2addr p4, v0

    ushr-long p2, p4, p2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 4

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x7ff

    .line 110
    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0
.end method

.method private static toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 24

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    long-to-int v4, v1

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x2

    shl-long v7, v1, v6

    const-wide/16 v9, 0x2

    add-long v11, v7, v9

    const-wide/high16 v13, 0x10000000000000L

    const-wide/16 v15, 0x1

    cmp-long v17, v1, v13

    if-nez v17, :cond_1

    const/16 v1, -0x432

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-long v1, v7, v15

    .line 186
    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10threeQuartersPow2(I)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    sub-long v1, v7, v9

    .line 182
    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10pow2(I)I

    move-result v9

    :goto_1
    neg-int v10, v9

    .line 188
    invoke-static {v10}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog2pow10(I)I

    move-result v10

    add-int/2addr v0, v10

    add-int/2addr v0, v6

    .line 191
    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g1(I)J

    move-result-wide v17

    .line 192
    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g0(I)J

    move-result-wide v19

    shl-long v21, v7, v0

    .line 194
    invoke-static/range {v17 .. v22}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v7

    shl-long v21, v1, v0

    .line 195
    invoke-static/range {v17 .. v22}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v1

    shl-long v21, v11, v0

    .line 196
    invoke-static/range {v17 .. v22}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v10

    shr-long v12, v7, v6

    const-wide/16 v17, 0x64

    cmp-long v14, v12, v17

    move-wide/from16 p0, v1

    if-ltz v14, :cond_5

    const-wide v0, 0x19999999999999a0L

    .line 211
    invoke-static {v12, v13, v0, v1}, Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/16 v17, 0xa

    mul-long v0, v0, v17

    add-long v17, v0, v17

    const/4 v2, 0x1

    const/4 v14, 0x2

    int-to-long v5, v4

    add-long v19, p0, v5

    shl-long v21, v0, v14

    cmp-long v23, v19, v21

    if-gtz v23, :cond_2

    :goto_2
    const/16 v19, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    shl-long v20, v17, v14

    add-long v20, v20, v5

    cmp-long v5, v20, v10

    if-gtz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-eq v2, v5, :cond_6

    .line 216
    new-instance v4, Lorg/mozilla/javascript/dtoa/Decimal;

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    move-wide/from16 v0, v17

    :goto_5
    invoke-direct {v4, v0, v1, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v4

    :cond_5
    const/4 v14, 0x2

    const/16 v19, 0x1

    :cond_6
    add-long v0, v12, v15

    int-to-long v4, v4

    add-long v17, p0, v4

    shl-long v20, v12, v14

    cmp-long v2, v17, v20

    if-gtz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    shl-long v17, v0, v14

    add-long v17, v17, v4

    cmp-long v4, v17, v10

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    if-eq v2, v4, :cond_a

    .line 231
    new-instance v4, Lorg/mozilla/javascript/dtoa/Decimal;

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    move-wide v12, v0

    :goto_8
    add-int v9, v9, p3

    invoke-direct {v4, v12, v13, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v4

    :cond_a
    add-long v4, v12, v0

    shl-long v4, v4, v19

    sub-long/2addr v7, v4

    .line 238
    new-instance v2, Lorg/mozilla/javascript/dtoa/Decimal;

    const-wide/16 v4, 0x0

    cmp-long v6, v7, v4

    if-ltz v6, :cond_c

    if-nez v6, :cond_b

    and-long v6, v12, v15

    cmp-long v8, v6, v4

    if-nez v8, :cond_b

    goto :goto_9

    :cond_b
    move-wide v12, v0

    :cond_c
    :goto_9
    add-int v9, v9, p3

    invoke-direct {v2, v12, v13, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v2
.end method

.method private static toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p4, :cond_2

    rsub-int p1, p4, 0x433

    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr p2, v2

    if-lez p1, :cond_1

    const/16 p4, 0x35

    if-ge p1, p4, :cond_1

    shr-long v2, p2, p1

    shl-long v4, v2, p1

    cmp-long p4, v4, p2

    if-nez p4, :cond_1

    .line 137
    new-instance p1, Lorg/mozilla/javascript/dtoa/Decimal;

    invoke-direct {p1, v2, v3, v1, p0}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object p1

    :cond_1
    neg-int p1, p1

    .line 140
    invoke-static {p1, p2, p3, v1, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p2, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x3

    const/16 p1, -0x432

    cmp-long p4, p2, v2

    if-gez p4, :cond_3

    const-wide/16 v0, 0xa

    mul-long p2, p2, v0

    const/4 p4, -0x1

    .line 145
    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    .line 146
    :cond_3
    invoke-static {p1, p2, p3, v1, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    .line 148
    :cond_4
    new-instance p0, Lorg/mozilla/javascript/dtoa/Decimal;

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object p0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 6

    .line 85
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v3, v2

    const/16 v2, 0x7ff

    and-int/2addr v3, v2

    const-wide/16 v4, 0x0

    if-ge v3, v2, :cond_1

    if-nez v3, :cond_0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 90
    const-string p0, "0"

    return-object p0

    .line 92
    :cond_0
    invoke-static {p0, p1, v0, v1, v3}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 95
    const-string p0, "NaN"

    return-object p0

    :cond_2
    cmp-long v0, p0, v4

    if-lez v0, :cond_3

    .line 97
    const-string p0, "Infinity"

    return-object p0

    :cond_3
    const-string p0, "-Infinity"

    return-object p0
.end method
