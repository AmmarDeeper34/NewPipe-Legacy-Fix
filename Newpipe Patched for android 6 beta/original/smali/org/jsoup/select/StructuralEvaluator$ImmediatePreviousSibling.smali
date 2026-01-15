.class Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediatePreviousSibling"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 301
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->previousElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator;->memoMatches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%s + "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
