.class public final Lj$/time/format/s;
.super Lj$/time/format/j;
.source "SourceFile"


# instance fields
.field public final g:C

.field public final h:I


# direct methods
.method public constructor <init>(CIIII)V
    .locals 6

    const/4 v1, 0x0

    .line 4863
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;I)V

    .line 4864
    iput-char p1, v0, Lj$/time/format/s;->g:C

    .line 4865
    iput p2, v0, Lj$/time/format/s;->h:I

    return-void
.end method


# virtual methods
.method public final d()Lj$/time/format/j;
    .locals 8

    .line 4875
    iget v0, p0, Lj$/time/format/j;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 4878
    :cond_0
    new-instance v2, Lj$/time/format/s;

    iget v6, p0, Lj$/time/format/j;->c:I

    const/4 v7, -0x1

    iget-char v3, p0, Lj$/time/format/s;->g:C

    iget v4, p0, Lj$/time/format/s;->h:I

    iget v5, p0, Lj$/time/format/j;->b:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/s;-><init>(CIIII)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 4889
    new-instance v0, Lj$/time/format/s;

    iget v1, p0, Lj$/time/format/j;->e:I

    add-int v5, v1, p1

    iget-char v1, p0, Lj$/time/format/s;->g:C

    iget v2, p0, Lj$/time/format/s;->h:I

    iget v3, p0, Lj$/time/format/j;->b:I

    iget v4, p0, Lj$/time/format/j;->c:I

    invoke-direct/range {v0 .. v5}, Lj$/time/format/s;-><init>(CIIII)V

    return-object v0
.end method

.method public final f(Ljava/util/Locale;)Lj$/time/format/j;
    .locals 6

    .line 4911
    sget-object v0, Lj$/time/temporal/u;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 296
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 303
    sget-object v1, Lj$/time/c;->SUNDAY:Lj$/time/c;

    add-int/lit8 v0, v0, -0x1

    int-to-long v2, v0

    const-wide/16 v4, 0x7

    .line 366
    rem-long/2addr v2, v4

    long-to-int v0, v2

    .line 367
    sget-object v2, Lj$/time/c;->a:[Lj$/time/c;

    .line 367
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 367
    rem-int/lit8 v0, v0, 0x7

    aget-object v0, v2, v0

    .line 305
    invoke-virtual {p1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p1

    .line 307
    invoke-static {v0, p1}, Lj$/time/temporal/u;->a(Lj$/time/c;I)Lj$/time/temporal/u;

    move-result-object p1

    const/16 v0, 0x57

    .line 4913
    iget-char v1, p0, Lj$/time/format/s;->g:C

    if-eq v1, v0, :cond_5

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    const/16 v0, 0x77

    if-ne v1, v0, :cond_0

    .line 585
    iget-object p1, p1, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    :goto_0
    move-object v1, p1

    goto :goto_3

    .line 4935
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_1
    iget-object p1, p1, Lj$/time/temporal/u;->c:Lj$/time/temporal/t;

    goto :goto_0

    .line 627
    :cond_2
    iget-object v1, p1, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    const/4 p1, 0x2

    .line 4916
    iget v2, p0, Lj$/time/format/s;->h:I

    if-ne v2, p1, :cond_3

    .line 4917
    new-instance v0, Lj$/time/format/p;

    sget-object v4, Lj$/time/format/p;->h:Lj$/time/LocalDate;

    iget v5, p0, Lj$/time/format/j;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x2

    .line 0
    invoke-direct/range {v0 .. v5}, Lj$/time/format/p;-><init>(Lj$/time/temporal/p;IILj$/time/chrono/b;I)V

    return-object v0

    .line 4920
    :cond_3
    new-instance v0, Lj$/time/format/j;

    const/4 p1, 0x4

    if-ge v2, p1, :cond_4

    .line 4921
    sget-object p1, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_4
    sget-object p1, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    goto :goto_1

    :goto_2
    iget v5, p0, Lj$/time/format/j;->e:I

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;I)V

    return-object v0

    .line 490
    :cond_5
    iget-object p1, p1, Lj$/time/temporal/u;->d:Lj$/time/temporal/t;

    goto :goto_0

    .line 4937
    :goto_3
    new-instance v0, Lj$/time/format/j;

    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    iget v5, p0, Lj$/time/format/j;->e:I

    iget v2, p0, Lj$/time/format/j;->b:I

    iget v3, p0, Lj$/time/format/j;->c:I

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;I)V

    return-object v0
.end method

.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 250
    iget-object v0, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 1437
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4895
    invoke-virtual {p0, v0}, Lj$/time/format/s;->f(Ljava/util/Locale;)Lj$/time/format/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/format/j;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 147
    iget-object v0, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 1437
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4900
    invoke-virtual {p0, v0}, Lj$/time/format/s;->f(Ljava/util/Locale;)Lj$/time/format/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/j;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4944
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    .line 4945
    iget v2, p0, Lj$/time/format/s;->h:I

    iget-char v3, p0, Lj$/time/format/s;->g:C

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    .line 4947
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    .line 4949
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4951
    :cond_1
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",19,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-ge v2, v1, :cond_2

    .line 4953
    sget-object v1, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x57

    if-eq v3, v1, :cond_6

    const/16 v1, 0x63

    if-eq v3, v1, :cond_5

    const/16 v1, 0x65

    if-eq v3, v1, :cond_5

    const/16 v1, 0x77

    if-eq v3, v1, :cond_4

    goto :goto_1

    .line 4962
    :cond_4
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4959
    :cond_5
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4965
    :cond_6
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4970
    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4973
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
