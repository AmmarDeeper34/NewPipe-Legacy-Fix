.class public Lorg/mozilla/javascript/ast/FunctionCall;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "FunctionCall.java"


# static fields
.field protected static final NO_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field

.field protected lp:I

.field protected optionalCall:Z

.field protected rp:I

.field protected target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionCall;->NO_ARGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 22
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    const/16 v0, 0x2b

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    const/16 p1, 0x2b

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    const/16 p1, 0x2b

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public addArgument(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 90
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/FunctionCall;->NO_ARGS:Ljava/util/List;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    return v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public isOptionalCall()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    return v0
.end method

.method public markIsOptionalCall()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    return-void
.end method

.method public setArguments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 78
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/FunctionCall;->addArgument(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLp(I)V
    .locals 0

    .line 109
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    .line 124
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 125
    iput p2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    return-void
.end method

.method public setRp(I)V
    .locals 0

    .line 119
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 51
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 53
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 54
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->optionalCall:Z

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "?."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 150
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    .line 160
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 162
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 163
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
