.class public final synthetic Lj$/desugar/sun/nio/fs/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;
.implements Lj$/time/temporal/m;
.implements Ljava/util/function/Function;
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/BinaryOperator;
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 0
    :pswitch_0
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x13 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    .line 710
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Ljava/util/List;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 299
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->G([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    check-cast p1, [I

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 675
    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :sswitch_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 298
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 0
    :sswitch_0
    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 262
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 0
    :sswitch_1
    check-cast p1, [I

    check-cast p2, [I

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 674
    aget v0, p1, v1

    aget p2, p2, v1

    add-int/2addr v0, p2

    aput v0, p1, v1

    return-object p1

    .line 0
    :sswitch_2
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 151
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-static {p1, v2, v0}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v1

    const/4 v1, 0x1

    aput-object v3, p2, v1

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const-string v0, "Duplicate key %s (attempted merging values %s and %s)"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p1

    :cond_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x13 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sget-object v1, Lj$/time/temporal/q;->a:Lj$/desugar/sun/nio/fs/m;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 446
    :pswitch_0
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/i;->e0(J)Lj$/time/i;

    move-result-object v2

    :cond_0
    return-object v2

    .line 428
    :pswitch_1
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/p;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalDate;->j0(J)Lj$/time/LocalDate;

    move-result-object v2

    :cond_1
    return-object v2

    .line 412
    :pswitch_2
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 413
    :cond_2
    sget-object v0, Lj$/time/temporal/q;->d:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj$/time/ZoneId;

    :goto_0
    return-object v0

    .line 394
    :pswitch_3
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->i0(I)Lj$/time/ZoneOffset;

    move-result-object v2

    :cond_3
    return-object v2

    .line 378
    :pswitch_4
    sget-object v0, Lj$/time/temporal/q;->c:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/TemporalUnit;

    return-object p1

    .line 362
    :pswitch_5
    sget-object v0, Lj$/time/temporal/q;->b:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/l;

    return-object p1

    .line 347
    :pswitch_6
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    return-object p1

    .line 159
    :pswitch_7
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    if-eqz p1, :cond_4

    .line 160
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-nez v0, :cond_4

    move-object v2, p1

    :cond_4
    return-object v2

    .line 0
    :pswitch_8
    invoke-static {p1}, Lj$/time/ZonedDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_9
    sget v0, Lj$/time/OffsetDateTime;->c:I

    .line 355
    instance-of v0, p1, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_5

    .line 356
    check-cast p1, Lj$/time/OffsetDateTime;

    goto :goto_1

    .line 359
    :cond_5
    :try_start_0
    invoke-static {p1}, Lj$/time/ZoneOffset;->f0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 360
    sget-object v1, Lj$/time/temporal/q;->f:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDate;

    .line 361
    sget-object v2, Lj$/time/temporal/q;->g:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/i;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 262
    invoke-static {v1, v2}, Lj$/time/LocalDateTime;->c0(Lj$/time/LocalDate;Lj$/time/i;)Lj$/time/LocalDateTime;

    move-result-object v1

    .line 263
    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v1, v0}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    move-object p1, v2

    goto :goto_1

    .line 365
    :cond_6
    invoke-static {p1}, Lj$/time/Instant;->a0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v1

    .line 366
    invoke-static {v1, v0}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Lj$/time/DateTimeException;

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    throw v1

    .line 0
    :pswitch_a
    invoke-static {p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_b
    invoke-static {p1}, Lj$/time/LocalDate;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_c
    invoke-static {p1}, Lj$/time/Instant;->a0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 v0, 0x4

    .line 839
    new-array v0, v0, [D

    return-object v0

    .line 0
    :sswitch_0
    new-instance v0, Lj$/util/x;

    invoke-direct {v0}, Lj$/util/x;-><init>()V

    return-object v0

    .line 0
    :sswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 0
    :sswitch_2
    new-instance v0, Lj$/util/w;

    invoke-direct {v0}, Lj$/util/w;-><init>()V

    return-object v0

    .line 0
    :sswitch_3
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 v0, 0x1

    .line 672
    new-array v0, v0, [I

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/m;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 454
    :pswitch_0
    const-string v0, "LocalTime"

    return-object v0

    .line 436
    :pswitch_1
    const-string v0, "LocalDate"

    return-object v0

    .line 418
    :pswitch_2
    const-string v0, "Zone"

    return-object v0

    .line 402
    :pswitch_3
    const-string v0, "ZoneOffset"

    return-object v0

    .line 383
    :pswitch_4
    const-string v0, "Precision"

    return-object v0

    .line 367
    :pswitch_5
    const-string v0, "Chronology"

    return-object v0

    .line 352
    :pswitch_6
    const-string v0, "ZoneId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 189
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    move-result-object v1

    .line 253
    iget-wide v1, v1, Lj$/time/temporal/s;->d:J

    .line 189
    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method
