.class public Lorg/mozilla/javascript/ast/Jump;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Jump.java"


# instance fields
.field private jumpNode:Lorg/mozilla/javascript/ast/Jump;

.field public target:Lorg/mozilla/javascript/Node;

.field private target2:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 29
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 34
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void
.end method


# virtual methods
.method public getContinue()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 86
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x92

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getDefault()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 50
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getFinally()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 62
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getJumpStatement()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .line 38
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public getLoop()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .line 74
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public setContinue(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 91
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x92

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 94
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setDefault(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 55
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 56
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 58
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setFinally(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 67
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 70
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 2

    .line 43
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    if-nez p1, :cond_1

    .line 44
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 46
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void
.end method

.method public setLoop(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 2

    .line 79
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    if-nez p1, :cond_1

    .line 80
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    .line 82
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 1

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
