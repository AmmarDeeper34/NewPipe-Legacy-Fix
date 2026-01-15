.class public final Lj$/time/chrono/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/e;
.implements Lj$/time/temporal/l;
.implements Lj$/time/temporal/m;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field public final transient a:Lj$/time/chrono/b;

.field public final transient b:Lj$/time/i;


# direct methods
.method public constructor <init>(Lj$/time/chrono/b;Lj$/time/i;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-string v0, "date"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const-string v0, "time"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 206
    iput-object p2, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    return-void
.end method

.method public static Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/g;
    .locals 3

    .line 188
    check-cast p1, Lj$/time/chrono/g;

    .line 229
    iget-object v0, p1, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 193
    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    .line 189
    invoke-interface {p0, v0}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/l;->i()Ljava/lang/String;

    move-result-object p0

    .line 229
    iget-object p1, p1, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 193
    invoke-interface {p1}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object p1

    .line 191
    invoke-interface {p1}, Lj$/time/chrono/l;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, required: "

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 423
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 413
    new-instance v0, Lj$/time/chrono/e0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/e0;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final G(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 1

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 193
    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    .line 319
    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/q;->b(Lj$/time/temporal/l;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final H(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-static {p1, v0, p0}, Lj$/time/chrono/k;->Z(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lj$/time/temporal/p;)J
    .locals 2

    .line 267
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 268
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 269
    invoke-virtual {v0}, Lj$/time/temporal/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, p1}, Lj$/time/i;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    .line 271
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->G(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic Q(Lj$/time/chrono/e;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Lj$/time/chrono/e;Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final synthetic Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/time/chrono/e;Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 193
    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    return-object v0
.end method

.method public final a0(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/g;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object/from16 v1, p3

    .line 305
    instance-of v4, v1, Lj$/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 306
    move-object v4, v1

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    .line 307
    sget-object v5, Lj$/time/chrono/f;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 316
    iget-object v4, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v4, v2, v3, v1}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v1

    iget-object v2, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-wide/16 v4, 0x100

    .line 314
    div-long v6, v2, v4

    .line 322
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    sget-object v8, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v6, v7, v8}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v1

    iget-object v6, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, v1, v6}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v7

    .line 314
    rem-long v1, v2, v4

    const-wide/16 v3, 0xc

    mul-long v9, v1, v3

    .line 326
    iget-object v8, v7, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v16}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 326
    :pswitch_1
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v9}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 330
    :pswitch_2
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v9}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 334
    :pswitch_3
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v0 .. v9}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_4
    const-wide/32 v1, 0x5265c00

    .line 310
    div-long v3, p1, v1

    .line 322
    iget-object v5, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v3, v4, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v3

    iget-object v4, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, v3, v4}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v5

    .line 310
    rem-long v1, p1, v1

    const-wide/32 v3, 0xf4240

    mul-long v13, v1, v3

    .line 338
    iget-object v6, v5, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v14}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_5
    const-wide v1, 0x141dd76000L

    .line 309
    div-long v3, p1, v1

    .line 322
    iget-object v5, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v3, v4, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v3

    iget-object v4, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, v3, v4}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v5

    .line 309
    rem-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    mul-long v13, v1, v3

    .line 338
    iget-object v6, v5, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v14}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 338
    :pswitch_6
    iget-object v1, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-wide/from16 v8, p1

    invoke-virtual/range {v0 .. v9}, Lj$/time/chrono/g;->b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    .line 318
    :cond_0
    iget-object v4, v0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v4}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object v1

    invoke-static {v4, v1}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lj$/time/i;
    .locals 1

    .line 234
    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    return-object v0
.end method

.method public final b0(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 345
    iget-object v2, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 347
    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v8, v4

    const-wide/16 v4, 0x5a0

    div-long v10, p4, v4

    add-long/2addr v10, v8

    const-wide/16 v8, 0x18

    div-long v12, p2, v8

    add-long/2addr v12, v10

    .line 351
    rem-long v10, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v6, v10

    rem-long v4, p4, v4

    const-wide v10, 0xdf8475800L

    mul-long v4, v4, v10

    add-long/2addr v4, v6

    rem-long v6, p2, v8

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v6, v4

    .line 355
    iget-object v4, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v4}, Lj$/time/i;->l0()J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 357
    invoke-static {v6, v7, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    .line 358
    invoke-static {v6, v7, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 359
    iget-object v2, v0, Lj$/time/chrono/g;->b:Lj$/time/i;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lj$/time/i;->e0(J)Lj$/time/i;

    move-result-object v2

    .line 360
    :goto_0
    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v8, v9, v3}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->c0(JLj$/time/temporal/p;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final c0(JLj$/time/temporal/p;)Lj$/time/chrono/g;
    .locals 2

    .line 291
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 292
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 293
    invoke-virtual {v0}, Lj$/time/temporal/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/i;->n0(JLj$/time/temporal/p;)Lj$/time/i;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    .line 296
    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1, p2, p3}, Lj$/time/chrono/b;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->L(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Lj$/time/chrono/e;

    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->Q(Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->a0(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;
    .locals 2

    .line 218
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    if-ne v1, p2, :cond_0

    return-object p0

    .line 222
    :cond_0
    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/l;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/time/chrono/d;->Z(Lj$/time/chrono/l;Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    .line 223
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p1, p2}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/i;)V

    return-object v0
.end method

.method public final e(Lj$/time/temporal/p;)Z
    .locals 1

    .line 240
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lj$/time/temporal/a;

    .line 242
    invoke-virtual {p1}, Lj$/time/temporal/a;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/a;->Z()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 244
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 443
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 444
    check-cast p1, Lj$/time/chrono/e;

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Lj$/time/chrono/e;Lj$/time/chrono/e;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Lj$/time/chrono/b;
    .locals 1

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 451
    invoke-interface {v0}, Lj$/time/chrono/b;->hashCode()I

    move-result v0

    .line 234
    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    .line 451
    invoke-virtual {v1}, Lj$/time/i;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Lj$/time/temporal/p;)I
    .locals 3

    .line 258
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 259
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 260
    invoke-virtual {v0}, Lj$/time/temporal/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0, p1}, Lj$/time/i;->k(Lj$/time/temporal/p;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    return p1

    .line 262
    :cond_1
    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->L(Lj$/time/temporal/p;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final n(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 1

    .line 280
    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {p0, p1, v0}, Lj$/time/chrono/g;->d0(Lj$/time/temporal/l;Lj$/time/i;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 1

    .line 249
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 250
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    .line 251
    invoke-virtual {v0}, Lj$/time/temporal/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    invoke-static {v0, p1}, Lj$/time/temporal/q;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 229
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    .line 456
    invoke-interface {v0}, Lj$/time/chrono/b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/i;

    .line 456
    invoke-virtual {v1}, Lj$/time/i;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 385
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 386
    invoke-virtual {p0}, Lj$/time/chrono/g;->f()Lj$/time/chrono/b;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/b;->M()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 387
    invoke-virtual {p0}, Lj$/time/chrono/g;->b()Lj$/time/i;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/i;->l0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method
