.class public Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "FormElement.java"


# static fields
.field private static final submittable:Lorg/jsoup/select/Evaluator;


# instance fields
.field private final linkedEls:Lorg/jsoup/select/Elements;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget-object v0, Lorg/jsoup/internal/SharedConstants;->FormSubmitTags:[Ljava/lang/String;

    const-string v1, ", "

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/select/Selector;->evaluatorOf(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/FormElement;->submittable:Lorg/jsoup/select/Evaluator;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 23
    new-instance p1, Lorg/jsoup/select/Elements;

    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/FormElement;->linkedEls:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->linkedEls:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/FormElement;
    .locals 1

    .line 139
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/FormElement;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 67
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->linkedEls:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Nodes;->remove(Ljava/lang/Object;)Z

    return-void
.end method
