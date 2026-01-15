.class public Lorg/mozilla/javascript/ast/CatchClause;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "CatchClause.java"


# instance fields
.field private body:Lorg/mozilla/javascript/ast/Scope;

.field private catchCondition:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private lp:I

.field private rp:I

.field private varName:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 24
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 v0, 0x89

    .line 27
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 23
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 24
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x89

    .line 27
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 23
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 24
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x89

    .line 27
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getIfPosition()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    return v0
.end method

.method public getLp()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return v0
.end method

.method public getVarName()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    .line 95
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setIfPosition(I)V
    .locals 0

    .line 139
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    return-void
.end method

.method public setLp(I)V
    .locals 0

    .line 105
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    .line 120
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 121
    iput p2, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return-void
.end method

.method public setRp(I)V
    .locals 0

    .line 115
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return-void
.end method

.method public setVarName(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string p1, "catch ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    .line 149
    const-string p1, " if "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Scope;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 163
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 165
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_1
    return-void
.end method
