.class public final Lj$/time/chrono/a0;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/chrono/a0;

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lj$/time/chrono/a0;

    invoke-direct {v0}, Lj$/time/chrono/a0;-><init>()V

    sput-object v0, Lj$/time/chrono/a0;->c:Lj$/time/chrono/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 361
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1

    .line 308
    invoke-static {}, Lj$/time/chrono/d0;->values()[Lj$/time/chrono/d0;

    move-result-object v0

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->G([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final B(I)Lj$/time/chrono/m;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    sget-object p1, Lj$/time/chrono/d0;->ROC:Lj$/time/chrono/d0;

    return-object p1

    .line 144
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    throw v0

    .line 140
    :cond_1
    sget-object p1, Lj$/time/chrono/d0;->BEFORE_ROC:Lj$/time/chrono/d0;

    return-object p1
.end method

.method public final D(Lj$/time/chrono/m;I)I
    .locals 1

    .line 295
    instance-of v0, p1, Lj$/time/chrono/d0;

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Lj$/time/chrono/d0;->ROC:Lj$/time/chrono/d0;

    if-ne p1, v0, :cond_0

    return p2

    :cond_0
    rsub-int/lit8 p1, p2, 0x1

    return p1

    .line 296
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be MinguoEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;
    .locals 1

    .line 253
    instance-of v0, p1, Lj$/time/chrono/c0;

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Lj$/time/chrono/c0;

    return-object p1

    .line 256
    :cond_0
    new-instance v0, Lj$/time/chrono/c0;

    invoke-static {p1}, Lj$/time/LocalDate;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/c0;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final R(III)Lj$/time/chrono/b;
    .locals 1

    .line 191
    new-instance v0, Lj$/time/chrono/c0;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/c0;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final T(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;
    .locals 0

    .line 334
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->T(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/c0;

    return-object p1
.end method

.method public final U(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 534
    invoke-static {p0, p1, p2}, Lj$/time/chrono/k;->a0(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final X(J)Z
    .locals 3

    .line 290
    sget-object v0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    const-wide/16 v1, 0x777

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/s;->X(J)Z

    move-result p1

    return p1
.end method

.method public final h(J)Lj$/time/chrono/b;
    .locals 1

    .line 233
    new-instance v0, Lj$/time/chrono/c0;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->j0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/c0;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "Minguo"

    return-object v0
.end method

.method public final n()Lj$/time/chrono/b;
    .locals 2

    .line 238
    invoke-static {}, Lj$/com/android/tools/r8/a;->X()Lj$/time/a;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lj$/time/LocalDate;->i0(Lj$/time/a;)Lj$/time/LocalDate;

    move-result-object v0

    .line 256
    new-instance v1, Lj$/time/chrono/c0;

    invoke-static {v0}, Lj$/time/LocalDate;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {v1, v0}, Lj$/time/chrono/c0;-><init>(Lj$/time/LocalDate;)V

    return-object v1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "roc"

    return-object v0
.end method

.method public final s(II)Lj$/time/chrono/b;
    .locals 1

    .line 221
    new-instance v0, Lj$/time/chrono/c0;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2}, Lj$/time/LocalDate;->k0(II)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/c0;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 747
    new-instance v0, Lj$/time/chrono/e0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/e0;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public final y(Lj$/time/temporal/a;)Lj$/time/temporal/s;
    .locals 10

    .line 314
    sget-object v0, Lj$/time/chrono/z;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-wide/16 v2, 0x777

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    return-object p1

    .line 324
    :cond_0
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 217
    iget-wide v0, p1, Lj$/time/temporal/s;->a:J

    sub-long/2addr v0, v2

    .line 253
    iget-wide v4, p1, Lj$/time/temporal/s;->d:J

    sub-long/2addr v4, v2

    .line 325
    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 320
    :cond_1
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 253
    iget-wide v0, p1, Lj$/time/temporal/s;->d:J

    sub-long v6, v0, v2

    .line 217
    iget-wide v0, p1, Lj$/time/temporal/s;->a:J

    neg-long v0, v0

    const-wide/16 v2, 0x778

    add-long v8, v0, v2

    const-wide/16 v4, 0x1

    .line 147
    invoke-static/range {v4 .. v9}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 316
    :cond_2
    sget-object p1, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 217
    iget-wide v0, p1, Lj$/time/temporal/s;->a:J

    const-wide/16 v2, 0x5994

    sub-long/2addr v0, v2

    .line 253
    iget-wide v4, p1, Lj$/time/temporal/s;->d:J

    sub-long/2addr v4, v2

    .line 317
    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method
