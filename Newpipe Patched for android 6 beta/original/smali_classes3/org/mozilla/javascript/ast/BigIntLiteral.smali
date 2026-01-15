.class public Lorg/mozilla/javascript/ast/BigIntLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "BigIntLiteral.java"


# instance fields
.field private bigInt:Ljava/math/BigInteger;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x59

    .line 19
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x59

    .line 19
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x59

    .line 19
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x59

    .line 19
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 35
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/BigIntLiteral;->setValue(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/BigIntLiteral;-><init>(ILjava/lang/String;)V

    .line 42
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/BigIntLiteral;->setBigInt(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getBigInt()Ljava/math/BigInteger;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BigIntLiteral;->bigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BigIntLiteral;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setBigInt(Ljava/math/BigInteger;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BigIntLiteral;->bigInt:Ljava/math/BigInteger;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BigIntLiteral;->value:Ljava/lang/String;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/BigIntLiteral;->bigInt:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
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

    .line 80
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
