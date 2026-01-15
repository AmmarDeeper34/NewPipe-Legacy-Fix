.class public final Lorg/jsoup/select/Evaluator$IsEmpty;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 780
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 783
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 784
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 785
    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p2}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 787
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Comment;

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/jsoup/nodes/XmlDeclaration;

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/jsoup/nodes/DocumentType;

    if-nez p2, :cond_1

    return v0

    .line 783
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 795
    const-string v0, ":empty"

    return-object v0
.end method
