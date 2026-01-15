.class public Lorg/mozilla/javascript/ast/XmlElemRef;
.super Lorg/mozilla/javascript/ast/XmlRef;
.source "XmlElemRef.java"


# instance fields
.field private indexExpr:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/XmlRef;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 35
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 v0, 0x55

    .line 38
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(I)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 35
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 p1, 0x55

    .line 38
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(II)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 35
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 p1, 0x55

    .line 38
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    return v0
.end method

.method public getRb()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return v0
.end method

.method public setBrackets(II)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 90
    iput p2, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return-void
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    .line 64
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLb(I)V
    .locals 0

    .line 74
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    return-void
.end method

.method public setRb(I)V
    .locals 0

    .line 84
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string p1, "::"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 113
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_1
    return-void
.end method
