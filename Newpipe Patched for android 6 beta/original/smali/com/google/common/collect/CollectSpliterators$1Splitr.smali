.class Lcom/google/common/collect/CollectSpliterators$1Splitr;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->filter(Lj$/util/Spliterator;Ljava/util/function/Predicate;)Lj$/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation


# instance fields
.field holder:Ljava/lang/Object;

.field final synthetic val$fromSpliterator:Lj$/util/Spliterator;

.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public characteristics()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x115

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 176
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectSpliterators;->filter(Lj$/util/Spliterator;Ljava/util/function/Predicate;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
