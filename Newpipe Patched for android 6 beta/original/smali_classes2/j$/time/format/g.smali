.class public final Lj$/time/format/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/e;


# virtual methods
.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3414
    sget-object v2, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v2}, Lj$/time/format/y;->a(Lj$/time/temporal/p;)Ljava/lang/Long;

    move-result-object v2

    .line 238
    iget-object v0, v0, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 3416
    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3417
    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    .line 3422
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_2

    .line 3423
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide v9, v7

    .line 669
    :goto_1
    iget-object v0, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 732
    invoke-virtual {v0, v9, v10, v3}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    move-result v0

    .line 3425
    const-string v9, ":00"

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    const-wide v13, 0xe79747c00L

    const-wide v15, -0xe79747c00L

    const-wide v2, 0x497968bd80L

    cmp-long v17, v5, v15

    if-ltz v17, :cond_4

    const-wide v15, 0x3afff44180L

    sub-long/2addr v5, v15

    .line 3428
    invoke-static {v5, v6, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v15

    add-long/2addr v10, v15

    .line 3429
    invoke-static {v5, v6, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v2

    sub-long/2addr v2, v13

    .line 3430
    sget-object v5, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v2, v3, v4, v5}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    cmp-long v3, v10, v7

    if-lez v3, :cond_3

    const/16 v3, 0x2b

    .line 3432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3434
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v2, v2, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 729
    iget-byte v2, v2, Lj$/time/i;->c:B

    if-nez v2, :cond_8

    .line 3436
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-long/2addr v5, v13

    move-wide v15, v2

    .line 3441
    div-long v2, v5, v15

    .line 3442
    rem-long/2addr v5, v15

    sub-long v13, v5, v13

    .line 3443
    sget-object v15, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v13, v14, v4, v15}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v13

    .line 3444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 3445
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v15, v13, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 729
    iget-byte v15, v15, Lj$/time/i;->c:B

    if-nez v15, :cond_5

    .line 3447
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    cmp-long v9, v2, v7

    if-gez v9, :cond_8

    .line 750
    iget-object v9, v13, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 762
    iget v9, v9, Lj$/time/LocalDate;->a:I

    const/16 v13, -0x2710

    if-ne v9, v13, :cond_6

    add-int/lit8 v5, v14, 0x2

    sub-long/2addr v2, v10

    .line 3451
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v5, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    cmp-long v9, v5, v7

    if-nez v9, :cond_7

    .line 3453
    invoke-virtual {v1, v14, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/2addr v14, v12

    .line 3455
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v14, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    if-gtz v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v2, 0x2e

    .line 3461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x5f5e100

    :goto_3
    if-gtz v0, :cond_b

    .line 3463
    rem-int/lit8 v3, v4, 0x3

    if-nez v3, :cond_b

    const/4 v3, -0x2

    if-ge v4, v3, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/16 v0, 0x5a

    .line 3472
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v12

    .line 3466
    :cond_b
    :goto_5
    div-int v3, v0, v2

    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    .line 3467
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int v3, v3, v2

    sub-int/2addr v0, v3

    .line 3469
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 16

    move-object/from16 v0, p1

    move/from16 v4, p3

    .line 3481
    new-instance v1, Lj$/time/format/v;

    invoke-direct {v1}, Lj$/time/format/v;-><init>()V

    sget-object v2, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    .line 3482
    invoke-virtual {v1, v2}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lj$/time/format/v;->d(C)V

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const/4 v3, 0x2

    .line 3483
    invoke-virtual {v1, v2, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Lj$/time/format/v;->d(C)V

    sget-object v6, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 3484
    invoke-virtual {v1, v6, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    invoke-virtual {v1, v5}, Lj$/time/format/v;->d(C)V

    sget-object v5, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 3485
    invoke-virtual {v1, v5, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    const/4 v3, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    .line 3486
    invoke-virtual {v1, v7, v3, v8, v9}, Lj$/time/format/v;->b(Lj$/time/temporal/a;IIZ)V

    const/16 v8, 0x5a

    .line 3487
    invoke-virtual {v1, v8}, Lj$/time/format/v;->d(C)V

    .line 2203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 2224
    sget-object v10, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v10, v11}, Lj$/time/format/v;->s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    move-result-object v1

    .line 3488
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/format/d;

    move-result-object v1

    .line 131
    new-instance v8, Lj$/time/format/w;

    iget-object v10, v0, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    invoke-direct {v8, v10}, Lj$/time/format/w;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 132
    iget-boolean v10, v0, Lj$/time/format/w;->b:Z

    iput-boolean v10, v8, Lj$/time/format/w;->b:Z

    .line 133
    iget-boolean v10, v0, Lj$/time/format/w;->c:Z

    iput-boolean v10, v8, Lj$/time/format/w;->c:Z

    move-object/from16 v10, p2

    .line 3490
    invoke-virtual {v1, v8, v10, v4}, Lj$/time/format/d;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    move-result v1

    if-gez v1, :cond_0

    return v1

    .line 3496
    :cond_0
    sget-object v10, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v8, v10}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 3497
    sget-object v12, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v8, v12}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v12

    .line 3498
    sget-object v13, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v8, v13}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->intValue()I

    move-result v13

    .line 3499
    invoke-virtual {v8, v2}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 3500
    invoke-virtual {v8, v6}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3501
    invoke-virtual {v8, v5}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v5

    .line 3502
    invoke-virtual {v8, v7}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v5, :cond_1

    .line 3503
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v8, :cond_2

    .line 3504
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/16 v14, 0x18

    if-ne v2, v14, :cond_3

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    if-nez v8, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v14, 0x17

    if-ne v2, v14, :cond_4

    const/16 v14, 0x3b

    if-ne v6, v14, :cond_4

    const/16 v15, 0x3c

    if-ne v5, v15, :cond_4

    .line 424
    invoke-virtual {v0}, Lj$/time/format/w;->c()Lj$/time/format/d0;

    move-result-object v5

    iput-boolean v9, v5, Lj$/time/format/d0;->d:Z

    const/16 v5, 0x3b

    :cond_4
    const/4 v9, 0x0

    :goto_2
    long-to-int v14, v10

    .line 3513
    rem-int/lit16 v14, v14, 0x2710

    .line 3516
    :try_start_0
    sget-object v15, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 361
    invoke-static {v14, v12, v13}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v12

    .line 362
    invoke-static {v2, v6, v5, v3}, Lj$/time/i;->d0(IIII)Lj$/time/i;

    move-result-object v2

    .line 363
    new-instance v3, Lj$/time/LocalDateTime;

    invoke-direct {v3, v12, v2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/i;)V

    int-to-long v5, v9

    .line 3516
    invoke-virtual {v3, v5, v6}, Lj$/time/LocalDateTime;->f0(J)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 3517
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 0
    invoke-static {v2, v3}, Lj$/com/android/tools/r8/a;->n(Lj$/time/chrono/e;Lj$/time/ZoneOffset;)J

    move-result-wide v2

    const-wide/16 v5, 0x2710

    .line 3518
    div-long/2addr v10, v5

    const-wide v5, 0x497968bd80L

    invoke-static {v10, v11, v5, v6}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v5

    move v5, v1

    .line 3523
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result v5

    int-to-long v2, v8

    move-object/from16 v0, p1

    move/from16 v4, p3

    move-object v1, v7

    .line 3524
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result v0

    return v0

    :catch_0
    not-int v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 3529
    const-string v0, "Instant()"

    return-object v0
.end method
