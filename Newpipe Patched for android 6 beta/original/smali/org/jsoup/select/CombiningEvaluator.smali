.class public abstract Lorg/jsoup/select/CombiningEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/CombiningEvaluator$Or;,
        Lorg/jsoup/select/CombiningEvaluator$And;
    }
.end annotation


# instance fields
.field cost:I

.field final evaluators:Ljava/util/ArrayList;

.field num:I

.field final sortedEvaluators:Ljava/util/List;

.field wantsNodes:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    .line 22
    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->cost:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->sortedEvaluators:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 33
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    return-void
.end method


# virtual methods
.method public add(Lorg/jsoup/select/Evaluator;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    return-void
.end method

.method protected cost()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/jsoup/select/CombiningEvaluator;->cost:I

    return v0
.end method

.method protected reset()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 44
    invoke-virtual {v1}, Lorg/jsoup/select/Evaluator;->reset()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    return-void
.end method

.method updateEvaluators()V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->cost:I

    .line 64
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 65
    iget v2, p0, Lorg/jsoup/select/CombiningEvaluator;->cost:I

    invoke-virtual {v1}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/select/CombiningEvaluator;->cost:I

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->sortedEvaluators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->sortedEvaluators:Ljava/util/List;

    iget-object v1, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->sortedEvaluators:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/select/CombiningEvaluator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 73
    invoke-virtual {v1}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/jsoup/select/CombiningEvaluator;->wantsNodes:Z

    :cond_2
    return-void
.end method

.method wantsNodes()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/jsoup/select/CombiningEvaluator;->wantsNodes:Z

    return v0
.end method
