.class public Lorg/mozilla/javascript/dtoa/DecimalFormatter;
.super Ljava/lang/Object;
.source "DecimalFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FIXED:D = 1.0E21


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillZeroes(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x30

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toExponential(DI)Ljava/lang/String;
    .locals 6

    if-gez p2, :cond_0

    .line 21
    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 29
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/MathContext;

    add-int/lit8 v3, p2, 0x1

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v2, v3, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-direct {v1, p0, p1, v2}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 32
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    if-ltz p0, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result p0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    sub-int/2addr p0, p1

    :goto_1
    sub-int/2addr p0, v4

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result p0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    neg-int p1, p1

    add-int/2addr p0, p1

    goto :goto_1

    .line 39
    :goto_2
    invoke-static {v1, p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;
    .locals 3

    .line 135
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    add-int v2, v0, p2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_0

    const/16 p3, 0x2d

    .line 141
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p3, 0x0

    .line 143
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    if-gt v0, p3, :cond_1

    if-lt p2, p3, :cond_2

    :cond_1
    const/16 v2, 0x2e

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p3

    sub-int/2addr p2, v0

    .line 147
    invoke-static {v1, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    :cond_2
    const/16 p0, 0x65

    .line 149
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_3

    const/16 p0, 0x2b

    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toFixed(DI)Ljava/lang/String;
    .locals 6

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, p0

    :goto_1
    const-wide v3, 0x444b1ae4d6e2ef50L    # 1.0E21

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 52
    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    new-instance p0, Ljava/math/BigDecimal;

    sget-object p1, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, v1, v2, p1}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 55
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-le p1, p2, :cond_3

    .line 56
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 58
    :cond_3
    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;
    .locals 4

    .line 100
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 p2, 0x2d

    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-lt v0, v1, :cond_3

    .line 120
    const-string p2, "0."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p2, v0, v1

    .line 121
    invoke-static {v2, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v0

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    .line 126
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sub-int/2addr p1, v0

    .line 129
    invoke-static {v2, p1}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPrecision(DI)Ljava/lang/String;
    .locals 7

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    neg-double p0, p0

    .line 72
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/MathContext;

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v2, p2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-direct {v1, p0, p1, v2}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 74
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    .line 75
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result p1

    if-ltz p0, :cond_3

    if-lt p0, p1, :cond_2

    move v4, p2

    goto :goto_1

    :cond_2
    sub-int v2, p1, p0

    sub-int v2, p2, v2

    move v4, v2

    :goto_1
    sub-int/2addr p1, p0

    :goto_2
    sub-int/2addr p1, v5

    goto :goto_3

    :cond_3
    neg-int p0, p0

    add-int/2addr p1, p0

    goto :goto_2

    :goto_3
    const/4 p0, -0x6

    if-lt p1, p0, :cond_5

    if-lt p1, p2, :cond_4

    goto :goto_4

    .line 96
    :cond_4
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    sub-int/2addr p2, v5

    .line 94
    invoke-static {v1, p1, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
