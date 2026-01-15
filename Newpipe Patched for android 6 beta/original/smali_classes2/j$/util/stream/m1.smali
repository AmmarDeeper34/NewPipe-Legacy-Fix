.class public final Lj$/util/stream/m1;
.super Lj$/util/stream/p1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/k5;


# instance fields
.field public final synthetic c:Lj$/util/stream/q1;

.field public final synthetic d:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/q1;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lj$/util/stream/m1;->c:Lj$/util/stream/q1;

    iput-object p2, p0, Lj$/util/stream/m1;->d:Ljava/util/function/IntPredicate;

    .line 114
    invoke-direct {p0, p1}, Lj$/util/stream/p1;-><init>(Lj$/util/stream/q1;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lj$/util/stream/p1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/m1;->d:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p1

    .line 0
    iget-object v0, p0, Lj$/util/stream/m1;->c:Lj$/util/stream/q1;

    iget-boolean v1, v0, Lj$/util/stream/q1;->a:Z

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lj$/util/stream/p1;->a:Z

    .line 0
    iget-boolean p1, v0, Lj$/util/stream/q1;->b:Z

    .line 121
    iput-boolean p1, p0, Lj$/util/stream/p1;->b:Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->t(Lj$/util/stream/k5;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u3;->r(Lj$/util/stream/k5;Ljava/lang/Integer;)V

    return-void
.end method
