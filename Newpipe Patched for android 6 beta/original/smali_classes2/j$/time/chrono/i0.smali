.class public final Lj$/time/chrono/i0;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field public final transient a:Lj$/time/LocalDate;


# direct methods
.method public constructor <init>(Lj$/time/LocalDate;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 213
    const-string v0, "isoDate"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iput-object p1, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 485
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 502
    new-instance v0, Lj$/time/chrono/e0;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/e0;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final F(Lj$/time/temporal/m;)Lj$/time/chrono/b;
    .locals 0

    .line 347
    invoke-super {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final G(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 398
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final L(Lj$/time/temporal/p;)J
    .locals 4

    .line 283
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_6

    .line 284
    sget-object v0, Lj$/time/chrono/h0;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    .line 292
    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 302
    :cond_3
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object p1, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    .line 776
    iget-short p1, p1, Lj$/time/LocalDate;->b:S

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 288
    :cond_4
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 298
    :cond_6
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->G(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()J
    .locals 2

    .line 439
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final N(Lj$/time/i;)Lj$/time/chrono/e;
    .locals 1

    .line 174
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/i;)V

    return-object v0
.end method

.method public final O()Lj$/time/chrono/m;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/j0;->BE:Lj$/time/chrono/j0;

    return-object v0

    :cond_0
    sget-object v0, Lj$/time/chrono/j0;->BEFORE_BE:Lj$/time/chrono/j0;

    return-object v0
.end method

.method public final S(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lj$/time/chrono/d;->S(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 228
    sget-object v0, Lj$/time/chrono/g0;->c:Lj$/time/chrono/g0;

    return-object v0
.end method

.method public final a0(J)Lj$/time/chrono/b;
    .locals 1

    .line 388
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->m0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b0(J)Lj$/time/chrono/b;
    .locals 1

    .line 378
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->n0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/chrono/b;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/i0;->e0(JLj$/time/temporal/p;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/i0;->e0(JLj$/time/temporal/p;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1
.end method

.method public final c0(J)Lj$/time/chrono/b;
    .locals 1

    .line 373
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->p0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final d0()I
    .locals 1

    .line 306
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    .line 762
    iget v0, v0, Lj$/time/LocalDate;->a:I

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public final e0(JLj$/time/temporal/p;)Lj$/time/chrono/i0;
    .locals 7

    .line 312
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    .line 313
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 314
    invoke-virtual {p0, v0}, Lj$/time/chrono/i0;->L(Lj$/time/temporal/p;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object p0

    .line 317
    :cond_0
    sget-object v1, Lj$/time/chrono/h0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 228
    :cond_1
    sget-object p3, Lj$/time/chrono/g0;->c:Lj$/time/chrono/g0;

    .line 319
    invoke-virtual {p3, v0}, Lj$/time/chrono/g0;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/s;->b(JLj$/time/temporal/p;)V

    .line 302
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object p3, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    .line 776
    iget-short v2, p3, Lj$/time/LocalDate;->b:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 378
    invoke-virtual {p3, p1, p2}, Lj$/time/LocalDate;->n0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    sget-object v2, Lj$/time/chrono/g0;->c:Lj$/time/chrono/g0;

    .line 324
    invoke-virtual {v2, v0}, Lj$/time/chrono/g0;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v2

    .line 325
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    .line 335
    :goto_0
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDate;->r0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1

    .line 331
    :cond_3
    iget-object p1, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p2

    rsub-int p2, p2, -0x21e

    invoke-virtual {p1, p2}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1

    .line 329
    :cond_4
    iget-object p1, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1

    .line 327
    :cond_5
    iget-object p1, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_6

    goto :goto_1

    :cond_6
    rsub-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/i0;->f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;

    move-result-object p1

    return-object p1

    .line 337
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 460
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/i0;

    if-eqz v0, :cond_1

    .line 461
    check-cast p1, Lj$/time/chrono/i0;

    .line 462
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f0(Lj$/time/LocalDate;)Lj$/time/chrono/i0;
    .locals 1

    .line 422
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/chrono/i0;

    invoke-direct {v0, p1}, Lj$/time/chrono/i0;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 228
    sget-object v0, Lj$/time/chrono/g0;->c:Lj$/time/chrono/g0;

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, 0x8b59791

    xor-int/2addr v0, v1

    return v0
.end method

.method public final n(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 0

    .line 347
    invoke-super {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method

.method public final o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 7

    .line 260
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->h(Lj$/time/chrono/b;Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 263
    sget-object v1, Lj$/time/chrono/h0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    .line 228
    sget-object p1, Lj$/time/chrono/g0;->c:Lj$/time/chrono/g0;

    .line 274
    invoke-virtual {p1, v0}, Lj$/time/chrono/g0;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 270
    invoke-virtual {p0}, Lj$/time/chrono/i0;->d0()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x21f

    if-gtz v0, :cond_1

    .line 217
    iget-wide v5, p1, Lj$/time/temporal/s;->a:J

    add-long/2addr v5, v3

    neg-long v3, v5

    add-long/2addr v3, v1

    goto :goto_0

    .line 253
    :cond_1
    iget-wide v5, p1, Lj$/time/temporal/s;->d:J

    add-long/2addr v3, v5

    .line 271
    :goto_0
    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 267
    :cond_2
    iget-object v0, p0, Lj$/time/chrono/i0;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 276
    :cond_3
    new-instance v0, Lj$/time/temporal/r;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    throw v0

    .line 278
    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    .line 398
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/i0;

    return-object p1
.end method
