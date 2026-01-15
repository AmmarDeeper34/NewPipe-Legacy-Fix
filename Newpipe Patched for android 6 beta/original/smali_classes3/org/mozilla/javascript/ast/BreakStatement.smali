.class public Lorg/mozilla/javascript/ast/BreakStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "BreakStatement.java"


# instance fields
.field private breakLabel:Lorg/mozilla/javascript/ast/Name;

.field private targetNode:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x85

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x85

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 30
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x85

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    .line 35
    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method


# virtual methods
.method public getBreakLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getBreakTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->targetNode:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->targetNode:Lorg/mozilla/javascript/ast/AstNode;

    .line 78
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Jump;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string p1, "break"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    .line 87
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 97
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
