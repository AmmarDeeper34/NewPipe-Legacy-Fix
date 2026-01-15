.class public final Lj$/util/stream/i6;
.super Lj$/util/stream/c5;
.source "SourceFile"


# instance fields
.field public final s:Z

.field public final t:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lj$/util/stream/e5;)V
    .locals 2

    .line 111
    sget v0, Lj$/util/stream/b7;->q:I

    sget v1, Lj$/util/stream/b7;->o:I

    or-int/2addr v0, v1

    .line 94
    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lj$/util/stream/i6;->s:Z

    .line 116
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lj$/util/stream/i6;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/e5;Ljava/util/Comparator;)V
    .locals 2

    .line 126
    sget v0, Lj$/util/stream/b7;->q:I

    sget v1, Lj$/util/stream/b7;->p:I

    or-int/2addr v0, v1

    .line 94
    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lj$/util/stream/i6;->s:Z

    .line 129
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lj$/util/stream/i6;->t:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final A0(Lj$/util/stream/u3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/d2;
    .locals 2

    .line 152
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 152
    invoke-virtual {v0, v1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/i6;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u3;->d0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/d2;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/d2;->q(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lj$/util/stream/i6;->t:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    new-instance p2, Lj$/util/stream/g2;

    invoke-direct {p2, p1}, Lj$/util/stream/g2;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final D0(ILj$/util/stream/m5;)Lj$/util/stream/m5;
    .locals 1

    .line 134
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lj$/util/stream/b7;->SORTED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/i6;->s:Z

    if-eqz v0, :cond_0

    return-object p2

    .line 140
    :cond_0
    sget-object v0, Lj$/util/stream/b7;->SIZED:Lj$/util/stream/b7;

    invoke-virtual {v0, p1}, Lj$/util/stream/b7;->u(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    new-instance p1, Lj$/util/stream/n6;

    iget-object v0, p0, Lj$/util/stream/i6;->t:Ljava/util/Comparator;

    .line 348
    invoke-direct {p1, p2, v0}, Lj$/util/stream/b6;-><init>(Lj$/util/stream/m5;Ljava/util/Comparator;)V

    return-object p1

    .line 143
    :cond_1
    new-instance p1, Lj$/util/stream/j6;

    iget-object v0, p0, Lj$/util/stream/i6;->t:Ljava/util/Comparator;

    .line 388
    invoke-direct {p1, p2, v0}, Lj$/util/stream/b6;-><init>(Lj$/util/stream/m5;Ljava/util/Comparator;)V

    return-object p1
.end method
