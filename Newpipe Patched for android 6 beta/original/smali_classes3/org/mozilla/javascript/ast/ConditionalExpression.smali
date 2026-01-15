.class public Lorg/mozilla/javascript/ast/ConditionalExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ConditionalExpression.java"


# instance fields
.field private colonPosition:I

.field private falseExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private questionMarkPosition:I

.field private testExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private trueExpression:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 30
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 v0, 0x73

    .line 33
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 30
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 p1, 0x73

    .line 33
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 30
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    const/16 p1, 0x73

    .line 33
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getColonPosition()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    return v0
.end method

.method public getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getQuestionMarkPosition()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    return v0
.end method

.method public getTestExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setColonPosition(I)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    return-void
.end method

.method public setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 94
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setQuestionMarkPosition(I)V
    .locals 0

    .line 108
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    return-void
.end method

.method public setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 60
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 76
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 77
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string p1, " ? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 148
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 150
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 151
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
