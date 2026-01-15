.class public final Lj$/time/format/f;
.super Lj$/time/format/j;
.source "SourceFile"


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Lj$/time/temporal/p;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3090
    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/p;IIZI)V

    .line 3091
    const-string p1, "field"

    invoke-static {v1, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3092
    invoke-interface {v1}, Lj$/time/temporal/p;->u()Lj$/time/temporal/s;

    move-result-object p1

    .line 204
    iget-wide p2, p1, Lj$/time/temporal/s;->a:J

    .line 204
    iget-wide v4, p1, Lj$/time/temporal/s;->b:J

    cmp-long p4, p2, v4

    if-nez p4, :cond_3

    iget-wide p2, p1, Lj$/time/temporal/s;->c:J

    iget-wide v4, p1, Lj$/time/temporal/s;->d:J

    cmp-long p1, p2, v4

    if-nez p1, :cond_3

    if-ltz v2, :cond_2

    const/16 p1, 0x9

    if-gt v2, p1, :cond_2

    const/4 p2, 0x1

    if-lt v3, p2, :cond_1

    if-gt v3, p1, :cond_1

    if-lt v3, v2, :cond_0

    return-void

    .line 3102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3099
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3096
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3093
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must have a fixed set of values: "

    .line 0
    invoke-static {p2, v1}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p2

    .line 3093
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lj$/time/temporal/p;IIZI)V
    .locals 6

    .line 3117
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;I)V

    .line 3118
    iput-boolean p4, v0, Lj$/time/format/f;->g:Z

    return-void
.end method


# virtual methods
.method public final b(Lj$/time/format/w;)Z
    .locals 1

    .line 270
    iget-boolean p1, p1, Lj$/time/format/w;->c:Z

    if-eqz p1, :cond_0

    .line 3154
    iget p1, p0, Lj$/time/format/j;->b:I

    iget v0, p0, Lj$/time/format/j;->c:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lj$/time/format/f;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lj$/time/format/j;
    .locals 8

    .line 3128
    iget v0, p0, Lj$/time/format/j;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3131
    :cond_0
    new-instance v2, Lj$/time/format/f;

    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget v4, p0, Lj$/time/format/j;->b:I

    iget v5, p0, Lj$/time/format/j;->c:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/f;-><init>(Lj$/time/temporal/p;IIZI)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 3142
    new-instance v0, Lj$/time/format/f;

    iget v1, p0, Lj$/time/format/j;->e:I

    add-int v5, v1, p1

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget v2, p0, Lj$/time/format/j;->b:I

    iget v3, p0, Lj$/time/format/j;->c:I

    iget-boolean v4, p0, Lj$/time/format/f;->g:Z

    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/p;IIZI)V

    return-object v0
.end method

.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 3162
    iget-object v0, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/p;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 261
    :cond_0
    iget-object p1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 1472
    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 3167
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3247
    invoke-interface {v0}, Lj$/time/temporal/p;->u()Lj$/time/temporal/s;

    move-result-object v1

    .line 3248
    invoke-virtual {v1, v3, v4, v0}, Lj$/time/temporal/s;->b(JLj$/time/temporal/p;)V

    .line 217
    iget-wide v5, v1, Lj$/time/temporal/s;->a:J

    .line 3249
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 253
    iget-wide v5, v1, Lj$/time/temporal/s;->d:J

    .line 3250
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3251
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3252
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3254
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 0
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 3168
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0x2e

    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    iget v7, p0, Lj$/time/format/j;->b:I

    if-nez v0, :cond_5

    if-lez v7, :cond_4

    if-eqz v6, :cond_3

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3171
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    if-ge v2, v7, :cond_4

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x30

    .line 3174
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v4

    .line 3178
    :cond_5
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lj$/time/format/j;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3179
    invoke-virtual {v1, v0, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3180
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_6

    .line 3183
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3185
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 12

    .line 270
    iget-boolean v0, p1, Lj$/time/format/w;->c:Z

    iget-object v1, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3192
    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/format/j;->b:I

    .line 270
    :goto_1
    iget-boolean v3, p1, Lj$/time/format/w;->c:Z

    const/16 v4, 0x9

    if-nez v3, :cond_3

    .line 3193
    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/w;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x9

    goto :goto_3

    :cond_3
    :goto_2
    iget v3, p0, Lj$/time/format/j;->c:I

    .line 3194
    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne p3, v5, :cond_4

    if-lez v0, :cond_5

    not-int p1, p3

    return p1

    .line 3199
    :cond_4
    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    if-eqz v6, :cond_7

    .line 3200
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1472
    iget-object v7, v1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 298
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_6

    if-lez v0, :cond_5

    not-int p1, p3

    return p1

    :cond_5
    return p3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    :cond_7
    move v10, p3

    add-int/2addr v0, v10

    if-le v0, v5, :cond_8

    not-int p1, v10

    return p1

    :cond_8
    add-int/2addr v3, v10

    .line 3210
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v11, v10

    const/4 v3, 0x0

    :goto_4
    if-ge v11, p3, :cond_b

    add-int/lit8 v5, v11, 0x1

    .line 3214
    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1472
    iget-object v7, v1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 3215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, -0x30

    if-ltz v6, :cond_9

    if-gt v6, v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v6, -0x1

    :goto_5
    if-gez v6, :cond_a

    if-ge v5, v0, :cond_b

    not-int p1, v10

    return p1

    :cond_a
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    move v11, v5

    goto :goto_4

    .line 3225
    :cond_b
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int p3, v11, v10

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3274
    iget-object p3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-interface {p3}, Lj$/time/temporal/p;->u()Lj$/time/temporal/s;

    move-result-object p3

    .line 217
    iget-wide v0, p3, Lj$/time/temporal/s;->a:J

    .line 3275
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 253
    iget-wide v3, p3, Lj$/time/temporal/s;->d:J

    .line 3276
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    .line 3277
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p2, v2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3278
    invoke-virtual {p2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v8

    .line 3227
    iget-object v7, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 3283
    iget-boolean v0, p0, Lj$/time/format/f;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3284
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fraction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/j;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/j;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
