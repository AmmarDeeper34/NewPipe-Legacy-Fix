.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field public static final d:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field public final transient a:Lj$/time/LocalDate;

.field public final transient b:Lj$/time/chrono/y;

.field public final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDate;)V
    .locals 2

    .line 343
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 344
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->f0(Lj$/time/chrono/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-static {p1}, Lj$/time/chrono/y;->h(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 762
    iget v1, p1, Lj$/time/LocalDate;->a:I

    .line 272
    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 762
    iget v0, v0, Lj$/time/LocalDate;->a:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 352
    iput v1, p0, Lj$/time/chrono/x;->c:I

    .line 353
    iput-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    return-void

    .line 345
    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    const-string v0, "JapaneseDate before Meiji 6 is not supported"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 345
    throw p1
.end method

.method public constructor <init>(Lj$/time/chrono/y;ILj$/time/LocalDate;)V
    .locals 1

    .line 364
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 365
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    invoke-virtual {p3, v0}, Lj$/time/LocalDate;->f0(Lj$/time/chrono/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iput-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 369
    iput p2, p0, Lj$/time/chrono/x;->c:I

    .line 370
    iput-object p3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    return-void

    .line 366
    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    const-string p2, "JapaneseDate before Meiji 6 is not supported"

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 774
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 791
    new-instance v0, Lj$/time/chrono/e0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/e0;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final F(Lj$/time/temporal/m;)Lj$/time/chrono/b;
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final G(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final L(Lj$/time/temporal/p;)J
    .locals 2

    .line 512
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Lj$/time/chrono/w;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 539
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    .line 527
    :pswitch_0
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 422
    iget p1, p1, Lj$/time/chrono/y;->a:I

    int-to-long v0, p1

    return-wide v0

    .line 523
    :pswitch_1
    new-instance v0, Lj$/time/temporal/r;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 523
    throw v0

    .line 525
    :pswitch_2
    iget p1, p0, Lj$/time/chrono/x;->c:I

    int-to-long v0, p1

    return-wide v0

    .line 534
    :pswitch_3
    iget p1, p0, Lj$/time/chrono/x;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 535
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->e0()I

    move-result p1

    iget-object v1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 272
    iget-object v1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 535
    invoke-virtual {v1}, Lj$/time/LocalDate;->e0()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0

    .line 537
    :cond_0
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->e0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 541
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->G(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M()J
    .locals 2

    .line 728
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

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
    .locals 1

    .line 396
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final S(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .locals 0

    .line 610
    invoke-super {p0, p1}, Lj$/time/chrono/d;->S(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final V()I
    .locals 4

    .line 420
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {v0}, Lj$/time/chrono/y;->i()Lj$/time/chrono/y;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 762
    iget v2, v0, Lj$/time/LocalDate;->a:I

    .line 421
    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    .line 762
    iget v3, v3, Lj$/time/LocalDate;->a:I

    if-ne v2, v3, :cond_0

    .line 422
    invoke-virtual {v0}, Lj$/time/LocalDate;->e0()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->V()I

    move-result v0

    .line 426
    :goto_0
    iget v2, p0, Lj$/time/chrono/x;->c:I

    if-ne v2, v1, :cond_1

    .line 427
    iget-object v2, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 272
    iget-object v2, v2, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 427
    invoke-virtual {v2}, Lj$/time/LocalDate;->e0()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    :cond_1
    return v0
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    return-object v0
.end method

.method public final a0(J)Lj$/time/chrono/b;
    .locals 1

    .line 677
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->m0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final b0(J)Lj$/time/chrono/b;
    .locals 1

    .line 667
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->n0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/chrono/b;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->e0(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->e0(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final c0(J)Lj$/time/chrono/b;
    .locals 1

    .line 662
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->p0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d0(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/x;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final e(Lj$/time/temporal/p;)Z
    .locals 1

    .line 465
    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 475
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->isDateBased()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 477
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e0(JLj$/time/temporal/p;)Lj$/time/chrono/x;
    .locals 7

    .line 566
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 567
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 568
    invoke-virtual {p0, v0}, Lj$/time/chrono/x;->L(Lj$/time/temporal/p;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object p0

    .line 571
    :cond_0
    sget-object v1, Lj$/time/chrono/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    sget-object v2, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 575
    invoke-virtual {v2, v0}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v6

    .line 576
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    .line 588
    :goto_0
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDate;->r0(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 580
    :cond_2
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v6}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 582
    :cond_3
    invoke-static {v6}, Lj$/time/chrono/y;->j(I)Lj$/time/chrono/y;

    move-result-object p1

    iget p2, p0, Lj$/time/chrono/x;->c:I

    .line 638
    invoke-virtual {v2, p1, p2}, Lj$/time/chrono/v;->D(Lj$/time/chrono/m;I)I

    move-result p1

    .line 639
    iget-object p2, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p2, p1}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 396
    :cond_4
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 638
    invoke-virtual {v2, p1, v6}, Lj$/time/chrono/v;->D(Lj$/time/chrono/m;I)I

    move-result p1

    .line 639
    iget-object p2, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p2, p1}, Lj$/time/LocalDate;->t0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 590
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 749
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_1

    .line 750
    check-cast p1, Lj$/time/chrono/x;

    .line 751
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f0(Lj$/desugar/sun/nio/fs/m;)Lj$/time/chrono/x;
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final g0(Lj$/time/LocalDate;)Lj$/time/chrono/x;
    .locals 1

    .line 711
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 763
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, -0x29035c2f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final n(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->F(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 5

    .line 482
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->e(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    check-cast p1, Lj$/time/temporal/a;

    .line 485
    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 503
    invoke-virtual {v0, p1}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 494
    :cond_0
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 272
    iget-object v0, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 762
    iget v0, v0, Lj$/time/LocalDate;->a:I

    .line 495
    invoke-virtual {p1}, Lj$/time/chrono/y;->i()Lj$/time/chrono/y;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 762
    iget p1, p1, Lj$/time/LocalDate;->a:I

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    int-to-long v0, p1

    .line 497
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x3b9ac9ff

    sub-int/2addr p1, v0

    int-to-long v0, p1

    .line 500
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 487
    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/x;->V()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 409
    :cond_3
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->g0()I

    move-result p1

    int-to-long v0, p1

    .line 486
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1

    .line 505
    :cond_4
    new-instance v0, Lj$/time/temporal/r;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/b;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 505
    throw v0

    .line 507
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    move-result-object p1

    return-object p1
.end method

.method public final z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method
