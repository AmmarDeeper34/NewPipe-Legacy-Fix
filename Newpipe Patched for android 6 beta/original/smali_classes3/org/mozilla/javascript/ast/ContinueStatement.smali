.class public Lorg/mozilla/javascript/ast/ContinueStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "ContinueStatement.java"


# instance fields
.field private label:Lorg/mozilla/javascript/ast/Name;

.field private targetLoop:Lorg/mozilla/javascript/ast/Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x86

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x86

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    .line 35
    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    .line 49
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(I)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/Name;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x86

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 39
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method


# virtual methods
.method public getLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/Loop;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->targetLoop:Lorg/mozilla/javascript/ast/Loop;

    return-object v0
.end method

.method public setLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->targetLoop:Lorg/mozilla/javascript/ast/Loop;

    .line 67
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Jump;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    .line 97
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 107
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
