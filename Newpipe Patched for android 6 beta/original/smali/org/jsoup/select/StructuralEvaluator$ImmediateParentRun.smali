.class Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateParentRun"
.end annotation


# instance fields
.field cost:I

.field final evaluators:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 2

    .line 222
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 219
    iput v1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 223
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    return-void
.end method


# virtual methods
.method add(Lorg/jsoup/select/Evaluator;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 230
    iget-boolean v0, p0, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    return-void
.end method

.method protected cost()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    return v0

    .line 237
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    if-nez p2, :cond_1

    return v0

    .line 240
    :cond_1
    iget-object v3, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/select/Evaluator;

    .line 241
    invoke-virtual {v3, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 243
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method protected reset()V
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 255
    invoke-virtual {v1}, Lorg/jsoup/select/Evaluator;->reset()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0}, Lorg/jsoup/select/StructuralEvaluator;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    const-string v1, " > "

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
