.class public final Lj$/nio/file/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/f0;
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/BiFunction;
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Supplier;
.implements Lj$/util/stream/j8;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/nio/file/b0;->a:I

    iput-object p2, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/c7;Lj$/util/stream/q1;Ljava/util/function/Supplier;)V
    .locals 0

    const/16 p1, 0x8

    iput p1, p0, Lj$/nio/file/b0;->a:I

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    .line 214
    iput-object p3, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lj$/nio/file/b0;->a:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/k7;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    .line 1293
    iget-object v0, v0, Lj$/util/stream/k7;->b:Lj$/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 1275
    :cond_0
    sget-object v2, Lj$/util/stream/k7;->d:Ljava/lang/Object;

    .line 1293
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    .line 1543
    invoke-virtual {v0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1294
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 0
    :sswitch_0
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    .line 575
    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 0
    :sswitch_1
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1543
    invoke-virtual {v1, p1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_1
    return-void

    .line 0
    :sswitch_2
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    .line 65
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/nio/file/b0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    .line 71
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiFunction;

    .line 288
    :cond_0
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 290
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lj$/nio/file/b0;->a:I

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/nio/file/b0;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiFunction;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    .line 70
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 230
    iget-object v0, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/p1;

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/a;->s0(Lj$/util/Spliterator;Lj$/util/stream/m5;)Lj$/util/stream/m5;

    .line 261
    iget-boolean p1, v0, Lj$/util/stream/p1;->b:Z

    .line 230
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/nio/file/b0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/q1;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Predicate;

    .line 97
    new-instance v2, Lj$/util/stream/l1;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/l1;-><init>(Lj$/util/stream/q1;Ljava/util/function/Predicate;)V

    return-object v2

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/q1;

    iget-object v1, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntPredicate;

    .line 126
    new-instance v2, Lj$/util/stream/m1;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/m1;-><init>(Lj$/util/stream/q1;Ljava/util/function/IntPredicate;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lj$/util/stream/u3;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 242
    new-instance v0, Lj$/util/stream/r1;

    check-cast p1, Lj$/util/stream/a;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/r1;-><init>(Lj$/nio/file/b0;Lj$/util/stream/a;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public j()I
    .locals 2

    .line 219
    sget v0, Lj$/util/stream/b7;->u:I

    sget v1, Lj$/util/stream/b7;->r:I

    or-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj$/nio/file/b0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public type()Ljava/lang/Class;
    .locals 1

    .line 91
    iget-object v0, p0, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
