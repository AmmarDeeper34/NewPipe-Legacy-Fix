.class public final Lj$/util/stream/k3;
.super Lj$/util/stream/u6;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/b2;
.implements Lj$/util/stream/u1;


# virtual methods
.method public final a(I)Lj$/util/stream/c2;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic a(I)Lj$/util/stream/d2;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/k3;->a(I)Lj$/util/stream/c2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u3;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u3;->G()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->C(Lj$/util/stream/l5;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1756
    invoke-super {p0}, Lj$/util/stream/w6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public final build()Lj$/util/stream/b2;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/d2;
    .locals 0

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1730
    invoke-virtual {p0}, Lj$/util/stream/w6;->clear()V

    .line 1731
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/w6;->z(J)V

    return-void
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 0

    .line 1706
    check-cast p2, [J

    .line 1750
    invoke-super {p0, p1, p2}, Lj$/util/stream/w6;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1706
    check-cast p1, Ljava/util/function/LongConsumer;

    .line 1722
    invoke-super {p0, p1}, Lj$/util/stream/w6;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/u3;->R(Lj$/util/stream/b2;JJ)Lj$/util/stream/b2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic n([Ljava/lang/Object;I)V
    .locals 0

    .line 394
    check-cast p1, [Ljava/lang/Long;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/u3;->L(Lj$/util/stream/b2;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final synthetic o(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->v(Lj$/util/stream/l5;Ljava/lang/Long;)V

    return-void
.end method

.method public final synthetic q(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->I(Lj$/util/stream/c2;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1716
    invoke-super {p0}, Lj$/util/stream/u6;->D()Lj$/util/x0;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/a1;
    .locals 1

    .line 1716
    invoke-super {p0}, Lj$/util/stream/u6;->D()Lj$/util/x0;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
