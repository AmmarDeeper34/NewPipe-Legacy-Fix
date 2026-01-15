.class Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Has"
.end annotation


# static fields
.field static final NodeIterPool:Lorg/jsoup/internal/SoftPool;


# instance fields
.field private final checkSiblings:Z


# direct methods
.method public static synthetic $r8$lambda$HZ5ZZjZJV4TqoS_jMmk9vFJy0WU()Lorg/jsoup/nodes/NodeIterator;
    .locals 3

    .line 77
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    new-instance v1, Lorg/jsoup/nodes/TextNode;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/jsoup/nodes/Node;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lorg/jsoup/internal/SoftPool;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 84
    invoke-static {p1}, Lorg/jsoup/select/StructuralEvaluator$Has;->evalWantsSiblings(Lorg/jsoup/select/Evaluator;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->checkSiblings:Z

    return-void
.end method

.method private static evalWantsSiblings(Lorg/jsoup/select/Evaluator;)Z
    .locals 2

    .line 119
    instance-of v0, p0, Lorg/jsoup/select/CombiningEvaluator;

    if-eqz v0, :cond_2

    .line 120
    check-cast p0, Lorg/jsoup/select/CombiningEvaluator;

    .line 121
    iget-object p0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    .line 122
    instance-of v1, v0, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    if-nez v1, :cond_1

    instance-of v0, v0, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 88
    iget-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->checkSiblings:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->firstElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    .line 90
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, p2, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p1, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p1}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/NodeIterator;

    .line 97
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/NodeIterator;->restart(Lorg/jsoup/nodes/Node;)V

    .line 99
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/NodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {p1}, Lorg/jsoup/nodes/NodeIterator;->next()Lorg/jsoup/nodes/Node;

    move-result-object v1

    if-ne v1, p2, :cond_3

    goto :goto_1

    .line 102
    :cond_3
    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p2, v1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 107
    sget-object p2, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p2, p1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    sget-object p2, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p2, p1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :goto_2
    sget-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v0, p1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 108
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ":has(%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
