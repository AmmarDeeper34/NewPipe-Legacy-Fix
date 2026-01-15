.class public abstract Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 7

    .line 24
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 25
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_c

    .line 30
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v5

    .line 34
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    if-eqz v3, :cond_7

    .line 37
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v6

    if-nez v6, :cond_7

    .line 38
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 39
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_6

    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 49
    invoke-interface {p0, v3, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    if-ne v3, p1, :cond_4

    :goto_2
    move-object v1, v3

    goto :goto_3

    .line 51
    :cond_4
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_3

    .line 55
    :cond_5
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :goto_3
    if-eq v1, p1, :cond_c

    if-nez v1, :cond_0

    goto :goto_6

    :cond_6
    move-object v1, v5

    goto :goto_0

    .line 63
    :cond_7
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_8

    .line 64
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_a

    if-gtz v2, :cond_9

    goto :goto_5

    .line 70
    :cond_9
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 71
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 74
    :cond_a
    :goto_5
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    if-ne v1, p1, :cond_b

    goto :goto_6

    .line 77
    :cond_b
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_0

    :cond_c
    :goto_6
    return-void
.end method
