.class public final Lj$/util/stream/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Lj$/util/Spliterator;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Lj$/util/stream/x6;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 349
    iget v0, p0, Lj$/util/stream/i8;->a:I

    if-nez v0, :cond_0

    .line 350
    iput-object p1, p0, Lj$/util/stream/i8;->b:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 351
    iput v0, p0, Lj$/util/stream/i8;->a:I

    return-void

    :cond_0
    if-lez v0, :cond_2

    .line 354
    iget-object v0, p0, Lj$/util/stream/i8;->c:Lj$/util/stream/x6;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lj$/util/stream/x6;

    invoke-direct {v0}, Lj$/util/stream/x6;-><init>()V

    iput-object v0, p0, Lj$/util/stream/i8;->c:Lj$/util/stream/x6;

    .line 356
    iget-object v1, p0, Lj$/util/stream/i8;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lj$/util/stream/x6;->accept(Ljava/lang/Object;)V

    .line 357
    iget v0, p0, Lj$/util/stream/i8;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/i8;->a:I

    .line 360
    :cond_1
    iget-object v0, p0, Lj$/util/stream/i8;->c:Lj$/util/stream/x6;

    invoke-virtual {v0, p1}, Lj$/util/stream/x6;->accept(Ljava/lang/Object;)V

    return-void

    .line 363
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final characteristics()I
    .locals 1

    .line 314
    const/16 v0, 0x4450

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .line 309
    iget v0, p0, Lj$/util/stream/i8;->a:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    .line 406
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget v0, p0, Lj$/util/stream/i8;->a:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lj$/util/stream/i8;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 410
    iput p1, p0, Lj$/util/stream/i8;->a:I

    :cond_0
    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2

    .line 392
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget v0, p0, Lj$/util/stream/i8;->a:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lj$/util/stream/i8;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 396
    iput p1, p0, Lj$/util/stream/i8;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method
