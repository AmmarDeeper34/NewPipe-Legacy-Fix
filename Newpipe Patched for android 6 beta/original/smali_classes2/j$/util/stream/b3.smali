.class public final Lj$/util/stream/b3;
.super Lj$/util/stream/s6;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/z1;
.implements Lj$/util/stream/t1;


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
    invoke-virtual {p0, p1}, Lj$/util/stream/b3;->a(I)Lj$/util/stream/c2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u3;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u3;->H()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->t(Lj$/util/stream/k5;Ljava/lang/Object;)V

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

    .line 1696
    invoke-super {p0}, Lj$/util/stream/w6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final build()Lj$/util/stream/d2;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/z1;
    .locals 0

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1670
    invoke-virtual {p0}, Lj$/util/stream/w6;->clear()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/w6;->z(J)V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->r(Lj$/util/stream/k5;Ljava/lang/Integer;)V

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

    .line 1646
    check-cast p2, [I

    .line 1690
    invoke-super {p0, p1, p2}, Lj$/util/stream/w6;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 1662
    invoke-super {p0, p1}, Lj$/util/stream/w6;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/u3;->Q(Lj$/util/stream/z1;JJ)Lj$/util/stream/z1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic n([Ljava/lang/Object;I)V
    .locals 0

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/u3;->K(Lj$/util/stream/z1;[Ljava/lang/Integer;I)V

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

    .line 1656
    invoke-super {p0}, Lj$/util/stream/s6;->D()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/a1;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/s6;->D()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
