.class abstract Lcom/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
    }
.end annotation


# direct methods
.method static filter(Lj$/util/Spliterator;Ljava/util/function/Predicate;)Lj$/util/Spliterator;
    .locals 1

    .line 154
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1Splitr;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1Splitr;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method static flatMap(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;
    .locals 9

    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 224
    :cond_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 227
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v2
.end method

.method static indexed(IILjava/util/function/IntFunction;)Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 105
    :cond_1
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    invoke-static {v0, p0}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object p0

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method

.method static map(Lj$/util/Spliterator;Ljava/util/function/Function;)Lj$/util/Spliterator;
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;-><init>(Lj$/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method
