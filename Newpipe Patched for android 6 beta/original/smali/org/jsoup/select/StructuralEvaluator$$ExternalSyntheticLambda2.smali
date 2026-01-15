.class public final synthetic Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jsoup/select/StructuralEvaluator;

.field public final synthetic f$1:Lorg/jsoup/nodes/Element;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Lorg/jsoup/select/StructuralEvaluator;

    iput-object p2, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Lorg/jsoup/select/StructuralEvaluator;

    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Lorg/jsoup/nodes/Element;

    check-cast p1, Lorg/jsoup/nodes/Node;

    invoke-static {v0, v1, p1}, Lorg/jsoup/select/StructuralEvaluator;->$r8$lambda$Qi8aM_5x8_a0NKD4Quy-q-xLFVk(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
