.class public final Lj$/util/stream/l2;
.super Lj$/util/stream/o2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/x1;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->M(Lj$/util/stream/x1;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/u3;->P(Lj$/util/stream/x1;JJ)Lj$/util/stream/x1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic n([Ljava/lang/Object;I)V
    .locals 0

    .line 471
    check-cast p1, [Ljava/lang/Double;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/u3;->J(Lj$/util/stream/x1;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    .line 534
    new-array p1, p1, [D

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 929
    new-instance v0, Lj$/util/stream/c3;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/h3;-><init>(Lj$/util/stream/d2;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/a1;
    .locals 1

    .line 929
    new-instance v0, Lj$/util/stream/c3;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/h3;-><init>(Lj$/util/stream/d2;)V

    return-object v0
.end method
