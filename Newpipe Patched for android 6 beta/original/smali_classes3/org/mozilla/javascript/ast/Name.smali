.class public Lorg/mozilla/javascript/ast/Name;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Name.java"


# instance fields
.field private identifier:Ljava/lang/String;

.field private scope:Lorg/mozilla/javascript/ast/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x2c

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x2c

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x2c

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x2c

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 48
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x2c

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 53
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method


# virtual methods
.method public getDefiningScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getEnclosingScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->scope:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public isLocalName()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getDefiningScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method

.method public setScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Name;->scope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 137
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0

    .line 143
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
