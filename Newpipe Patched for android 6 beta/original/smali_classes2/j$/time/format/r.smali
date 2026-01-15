.class public final Lj$/time/format/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/e;


# instance fields
.field public final a:Lj$/time/temporal/p;

.field public final b:Lj$/time/format/g0;

.field public final c:Lj$/time/format/b0;

.field public volatile d:Lj$/time/format/j;


# direct methods
.method public constructor <init>(Lj$/time/temporal/p;Lj$/time/format/g0;Lj$/time/format/b0;)V
    .locals 0

    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    .line 3312
    iput-object p2, p0, Lj$/time/format/r;->b:Lj$/time/format/g0;

    .line 3313
    iput-object p3, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    return-void
.end method


# virtual methods
.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 10

    .line 3318
    iget-object v0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/p;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 238
    :cond_0
    iget-object v2, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 3323
    sget-object v3, Lj$/time/temporal/q;->b:Lj$/desugar/sun/nio/fs/m;

    invoke-interface {v2, v3}, Lj$/time/temporal/TemporalAccessor;->Y(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lj$/time/chrono/l;

    if-eqz v4, :cond_1

    .line 3324
    sget-object v2, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    if-ne v4, v2, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 3327
    :cond_2
    iget-object v3, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    iget-object v5, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lj$/time/format/r;->b:Lj$/time/format/g0;

    .line 1437
    iget-object v9, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 3327
    invoke-virtual/range {v3 .. v9}, Lj$/time/format/b0;->b(Lj$/time/chrono/l;Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3325
    :goto_0
    iget-object v1, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    move-object v3, v2

    iget-object v2, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v3

    move-wide v3, v4

    iget-object v5, p0, Lj$/time/format/r;->b:Lj$/time/format/g0;

    .line 1437
    iget-object v6, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 3325
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/b0;->c(Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3380
    iget-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    if-nez v0, :cond_3

    .line 3381
    new-instance v0, Lj$/time/format/j;

    iget-object v2, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    const/16 v3, 0x13

    sget-object v4, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    iput-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 3383
    :cond_3
    iget-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 3330
    invoke-virtual {v0, p1, p2}, Lj$/time/format/j;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 3332
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 10

    .line 3338
    iget-object v1, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    iget-object v6, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz p3, :cond_9

    if-gt p3, v2, :cond_9

    .line 270
    iget-boolean v2, p1, Lj$/time/format/w;->c:Z

    iget-object v3, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    if-eqz v2, :cond_0

    .line 3342
    iget-object v2, p0, Lj$/time/format/r;->b:Lj$/time/format/g0;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3343
    :goto_0
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/chrono/l;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3345
    sget-object v5, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    if-ne v7, v5, :cond_1

    goto :goto_2

    .line 1437
    :cond_1
    iget-object v3, v3, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 3348
    invoke-virtual {v1, v7, v6, v2, v3}, Lj$/time/format/b0;->d(Lj$/time/chrono/l;Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    move-object v8, v1

    goto :goto_3

    .line 1437
    :cond_2
    :goto_2
    iget-object v3, v3, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 3346
    invoke-virtual {v1, v6, v2, v3}, Lj$/time/format/b0;->e(Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    :goto_3
    if-eqz v8, :cond_7

    .line 3351
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3352
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Map$Entry;

    .line 3353
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3354
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->h(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 3355
    iget-object v1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result v0

    return v0

    .line 3358
    :cond_4
    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne v6, v1, :cond_6

    .line 270
    iget-boolean v1, p1, Lj$/time/format/w;->c:Z

    if-nez v1, :cond_6

    .line 3360
    invoke-interface {v7}, Lj$/time/chrono/l;->A()Ljava/util/List;

    move-result-object v1

    .line 3361
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lj$/time/chrono/m;

    .line 3362
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3363
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->h(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 3364
    iget-object v1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-interface {v7}, Lj$/time/chrono/m;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/p;JII)I

    move-result v0

    return v0

    .line 270
    :cond_6
    iget-boolean v1, p1, Lj$/time/format/w;->c:Z

    if-eqz v1, :cond_7

    not-int v0, p3

    return v0

    .line 3380
    :cond_7
    iget-object v1, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    if-nez v1, :cond_8

    .line 3381
    new-instance v1, Lj$/time/format/j;

    iget-object v2, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    const/16 v3, 0x13

    sget-object v5, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6, v3, v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    iput-object v1, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 3383
    :cond_8
    iget-object v1, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 3372
    invoke-virtual {v1, p1, p2, p3}, Lj$/time/format/j;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 3340
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 3388
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    iget-object v4, p0, Lj$/time/format/r;->b:Lj$/time/format/g0;

    if-ne v4, v0, :cond_0

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
