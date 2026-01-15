.class public Lorg/mozilla/javascript/ast/ElementGet;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ElementGet.java"


# instance fields
.field private element:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x27

    .line 29
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 p1, 0x27

    .line 29
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 p1, 0x27

    .line 29
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x27

    .line 29
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 43
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getElement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    return v0
.end method

.method public getRb()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setElement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    .line 78
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLb(I)V
    .locals 0

    .line 88
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    .line 102
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 103
    iput p2, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return-void
.end method

.method public setRb(I)V
    .locals 0

    .line 98
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 61
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 62
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 120
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 122
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
