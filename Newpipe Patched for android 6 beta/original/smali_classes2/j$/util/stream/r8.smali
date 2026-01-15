.class public final Lj$/util/stream/r8;
.super Lj$/util/stream/x0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/w8;


# instance fields
.field public final synthetic s:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/z0;ILjava/util/function/IntPredicate;)V
    .locals 0

    .line 410
    iput-object p3, p0, Lj$/util/stream/r8;->s:Ljava/util/function/IntPredicate;

    .line 91
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 1

    .line 431
    new-instance v0, Lj$/util/stream/y8;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/y8;-><init>(Lj$/util/stream/a;Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 432
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/d2;

    return-object p1
.end method

.method public final B0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 417
    sget-object v0, Lj$/util/stream/b7;->ORDERED:Lj$/util/stream/b7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 417
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Lj$/util/stream/j2;

    const/16 v1, 0xc

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/j2;-><init>(I)V

    .line 418
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/r8;->A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Lj$/util/stream/d2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 422
    :cond_0
    new-instance v0, Lj$/util/stream/b9;

    .line 423
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->u0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Spliterator$OfInt;

    iget-object p2, p0, Lj$/util/stream/r8;->s:Ljava/util/function/IntPredicate;

    .line 887
    invoke-direct {v0, p1, p2}, Lj$/util/stream/d9;-><init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntPredicate;)V

    return-object v0
.end method

.method public final D0(ILj$/util/stream/m5;)Lj$/util/stream/m5;
    .locals 1

    .line 469
    new-instance p1, Lj$/util/stream/q8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/q8;-><init>(Lj$/util/stream/r8;Lj$/util/stream/m5;Z)V

    return-object p1
.end method

.method public final h(Lj$/util/stream/v1;Z)Lj$/util/stream/x8;
    .locals 1

    .line 469
    new-instance v0, Lj$/util/stream/q8;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/q8;-><init>(Lj$/util/stream/r8;Lj$/util/stream/m5;Z)V

    return-object v0
.end method
