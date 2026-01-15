.class public Lorg/jsoup/nodes/XmlDeclaration;
.super Lorg/jsoup/nodes/LeafNode;
.source "XmlDeclaration.java"


# instance fields
.field private final isDeclaration:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 25
    iput-boolean p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->isDeclaration:Z

    return-void
.end method

.method private getWholeDeclaration(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 52
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    .line 55
    invoke-virtual {p1, v3}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 57
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    const/4 v2, 0x2

    .line 60
    invoke-static {p1, v1, p2, v2}, Lorg/jsoup/nodes/Entities;->escape(Lorg/jsoup/internal/QuietAppendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V

    const/16 v1, 0x22

    .line 61
    invoke-virtual {p1, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->clone()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->clone()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/XmlDeclaration;
    .locals 1

    .line 90
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "#declaration"

    return-object v0
.end method

.method outerHtmlHead(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    .line 69
    const-string v0, "<"

    .line 70
    invoke-virtual {p1, v0}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v0

    .line 71
    iget-boolean v1, p0, Lorg/jsoup/nodes/XmlDeclaration;->isDeclaration:Z

    const-string v2, "?"

    if-eqz v1, :cond_0

    const-string v1, "!"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/XmlDeclaration;->getWholeDeclaration(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 75
    iget-boolean p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->isDeclaration:Z

    if-eqz p2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object p1

    const-string p2, ">"

    .line 76
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
