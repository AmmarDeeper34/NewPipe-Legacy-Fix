.class public abstract Lj$/time/chrono/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/b;
.implements Lj$/time/temporal/l;
.implements Lj$/time/temporal/m;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;
    .locals 3

    .line 162
    check-cast p1, Lj$/time/chrono/b;

    .line 163
    invoke-interface {p1}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/l;->i()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/l;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public F(Lj$/time/temporal/m;)Lj$/time/chrono/b;
    .locals 1

    .line 428
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    .line 190
    invoke-interface {p1, p0}, Lj$/time/temporal/m;->u(Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    .line 428
    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic G(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public M()J
    .locals 2

    .line 673
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public N(Lj$/time/i;)Lj$/time/chrono/e;
    .locals 1

    .line 174
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/i;)V

    return-object v0
.end method

.method public O()Lj$/time/chrono/m;
    .locals 2

    .line 326
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 0
    invoke-static {p0, v1}, Lj$/time/temporal/q;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v1

    .line 326
    invoke-interface {v0, v1}, Lj$/time/chrono/l;->B(I)Lj$/time/chrono/m;

    move-result-object v0

    return-object v0
.end method

.method public S(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .locals 1

    .line 452
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    .line 262
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    .line 452
    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public V()I
    .locals 1

    .line 363
    invoke-interface {p0}, Lj$/time/chrono/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    return v0

    :cond_0
    const/16 v0, 0x16d

    return v0
.end method

.method public final synthetic W(Lj$/time/chrono/b;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/time/chrono/b;Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method public final synthetic Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/time/chrono/b;Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a0(J)Lj$/time/chrono/b;
.end method

.method public abstract b0(J)Lj$/time/chrono/b;
.end method

.method public c(JLj$/time/temporal/p;)Lj$/time/chrono/b;
    .locals 1

    .line 439
    instance-of v0, p3, Lj$/time/temporal/a;

    if-nez v0, :cond_0

    .line 442
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->L(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 440
    :cond_0
    new-instance p1, Lj$/time/temporal/r;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 440
    throw p1
.end method

.method public bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/d;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract c0(J)Lj$/time/chrono/b;
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 241
    check-cast p1, Lj$/time/chrono/b;

    invoke-virtual {p0, p1}, Lj$/time/chrono/d;->W(Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method public d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 3

    .line 199
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    const-string v1, "Unsupported unit: "

    if-eqz v0, :cond_0

    .line 200
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 201
    sget-object v2, Lj$/time/chrono/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance p1, Lj$/time/temporal/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 211
    throw p1

    .line 209
    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p0, p3}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/d;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p1

    .line 208
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->c0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p1

    .line 207
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->c0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p1

    .line 206
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->c0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 205
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->c0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 204
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->b0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/4 p3, 0x7

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p1

    .line 203
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->a0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 202
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/d;->a0(J)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 465
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    .line 463
    :cond_1
    new-instance p1, Lj$/time/temporal/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 463
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lj$/time/temporal/p;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->h(Lj$/time/chrono/b;Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 415
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 416
    check-cast p1, Lj$/time/chrono/b;

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/time/chrono/b;Lj$/time/chrono/b;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 423
    invoke-virtual {p0}, Lj$/time/chrono/d;->M()J

    move-result-wide v0

    .line 424
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/l;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public final synthetic k(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/q;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic n(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/q;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 430
    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    .line 431
    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v2

    .line 432
    sget-object v4, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p0, v4}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v4

    .line 433
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v7

    invoke-interface {v7}, Lj$/time/chrono/l;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p0}, Lj$/time/chrono/d;->O()Lj$/time/chrono/m;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    const-string v0, "-"

    const-string v1, "-0"

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-gez v9, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, v4, v7

    if-gez v2, :cond_1

    move-object v0, v1

    .line 440
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/b;Lj$/time/temporal/l;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public x()Z
    .locals 3

    .line 341
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/time/chrono/l;->X(J)Z

    move-result v0

    return v0
.end method

.method public z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 1

    .line 486
    invoke-interface {p0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/q;->b(Lj$/time/temporal/l;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1
.end method
