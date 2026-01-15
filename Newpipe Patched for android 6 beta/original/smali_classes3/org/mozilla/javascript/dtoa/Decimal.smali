.class public Lorg/mozilla/javascript/dtoa/Decimal;
.super Ljava/lang/Object;
.source "Decimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/dtoa/Decimal$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MASK_28:I = 0xfffffff

.field public static final MAX_CHARS:I = 0x20


# instance fields
.field private final buf:[C

.field private final digits:J

.field private final exponent:I

.field private length:I

.field private final negative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(JIZ)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 35
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    .line 43
    iput-wide p1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    .line 44
    iput p3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->exponent:I

    .line 45
    iput-boolean p4, p0, Lorg/mozilla/javascript/dtoa/Decimal;->negative:Z

    return-void
.end method

.method private append(C)V
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    iget v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    aput-char p1, v0, v1

    return-void
.end method

.method private append8Digits(I)V
    .locals 2

    .line 245
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v1, p1, 0x1c

    .line 248
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const v1, 0xfffffff

    and-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendDigit(I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    iget v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method private exponent(I)V
    .locals 3

    const/16 v0, 0x65

    .line 255
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    .line 257
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    neg-int p1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    .line 260
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 263
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    return-void

    :cond_1
    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    mul-int/lit16 v2, p1, 0x51f

    ushr-int/lit8 v2, v2, 0x11

    .line 273
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    mul-int/lit8 v2, v2, 0x64

    sub-int/2addr p1, v2

    :cond_2
    mul-int/lit8 v1, p1, 0x67

    ushr-int/2addr v1, v0

    .line 281
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr p1, v1

    .line 282
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    return-void
.end method

.method private lowDigits(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->trimZeroes()V

    return-void
.end method

.method private makeString()Ljava/lang/String;
    .locals 4

    .line 303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private toExponential(IIII)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const/16 p1, 0x2e

    .line 214
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    .line 215
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    .line 216
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    add-int/lit8 p4, p4, -0x1

    .line 217
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->exponent(I)V

    .line 218
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixed(IIII)Ljava/lang/String;
    .locals 2

    .line 137
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    .line 138
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    const v0, 0xfffffff

    if-ge p2, p4, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v1, p1, 0x1c

    .line 143
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x2e

    .line 146
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_1
    const/16 p4, 0x8

    if-gt p2, p4, :cond_1

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 p4, p1, 0x1c

    .line 149
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    .line 153
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedBigger(IIII)Ljava/lang/String;
    .locals 1

    .line 163
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    .line 164
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    .line 165
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/16 p2, 0x9

    :goto_0
    const p3, 0xfffffff

    if-ge p2, p4, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v0, p1, 0x1c

    .line 170
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x2e

    .line 173
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_1
    const/16 p4, 0x10

    if-gt p2, p4, :cond_1

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 p4, p1, 0x1c

    .line 176
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 179
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->trimZeroes()V

    .line 180
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedBiggest(IIII)Ljava/lang/String;
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    .line 189
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    .line 190
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    const/16 p1, 0x11

    :goto_0
    if-ge p1, p4, :cond_0

    const/16 p2, 0x30

    .line 192
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedSmall(IIII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const/16 v1, 0x2e

    .line 201
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_0
    if-gez p4, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    .line 206
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    .line 207
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    .line 208
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private trimZeroes()V
    .locals 3

    .line 286
    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 287
    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 289
    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 290
    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    :cond_1
    return-void
.end method

.method private y(I)I
    .locals 4

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    const/16 p1, 0x1c

    shl-long/2addr v0, p1

    const-wide v2, 0x2af31dc4611873cL    # 9.53972865917246E-296

    .line 230
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const/16 p1, 0x14

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    .line 66
    iget-wide v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10pow2(I)I

    move-result v0

    .line 67
    iget-wide v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->pow10(I)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_0
    iget-wide v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    rsub-int/lit8 v3, v0, 0x11

    invoke-static {v3}, Lorg/mozilla/javascript/dtoa/MathUtils;->pow10(I)J

    move-result-wide v3

    mul-long v1, v1, v3

    .line 78
    iget v3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->exponent:I

    add-int/2addr v3, v0

    const-wide v4, 0x2af31dc4611873cL    # 9.53972865917246E-296

    .line 104
    invoke-static {v1, v2, v4, v5}, Lorg/mozilla/javascript/dtoa/Decimal$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    const/16 v0, 0x14

    ushr-long/2addr v4, v0

    const-wide/32 v6, 0x5f5e100

    mul-long v8, v4, v6

    sub-long/2addr v1, v8

    long-to-int v0, v1

    const-wide/32 v1, 0x55e63b89

    mul-long v1, v1, v4

    const/16 v8, 0x39

    ushr-long/2addr v1, v8

    long-to-int v2, v1

    int-to-long v8, v2

    mul-long v8, v8, v6

    sub-long/2addr v4, v8

    long-to-int v1, v4

    .line 109
    iget-boolean v4, p0, Lorg/mozilla/javascript/dtoa/Decimal;->negative:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x2d

    .line 110
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    .line 113
    :cond_1
    sget-object v4, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    if-ne p1, v4, :cond_5

    const/16 p1, 0x8

    if-lez v3, :cond_2

    if-gt v3, p1, :cond_2

    .line 115
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixed(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v4, 0x10

    if-ge p1, v3, :cond_3

    if-gt v3, v4, :cond_3

    .line 118
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedBigger(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-ge v4, v3, :cond_4

    const/16 p1, 0x15

    if-gt v3, p1, :cond_4

    .line 121
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedBiggest(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, -0x6

    if-ge p1, v3, :cond_5

    if-gtz v3, :cond_5

    .line 124
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedSmall(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :cond_5
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toExponential(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
