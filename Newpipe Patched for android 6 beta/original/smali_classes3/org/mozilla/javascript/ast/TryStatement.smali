.class public Lorg/mozilla/javascript/ast/TryStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "TryStatement.java"


# static fields
.field private static final NO_CATCHES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private catchClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation
.end field

.field private finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

.field private finallyPosition:I

.field private tryBlock:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/TryStatement;->NO_CATCHES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    const/16 v0, 0x5a

    .line 37
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    const/16 p1, 0x5a

    .line 37
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    const/16 p1, 0x5a

    .line 37
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public addCatchClause(Lorg/mozilla/javascript/ast/CatchClause;)V
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getCatchClauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/TryStatement;->NO_CATCHES:Ljava/util/List;

    return-object v0
.end method

.method public getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getFinallyPosition()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    return v0
.end method

.method public getTryBlock()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCatchClauses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/CatchClause;

    .line 83
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/TryStatement;->addCatchClause(Lorg/mozilla/javascript/ast/CatchClause;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setFinallyPosition(I)V
    .locals 0

    .line 120
    iput p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    return-void
.end method

.method public setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    .line 62
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "try "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/CatchClause;

    .line 133
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/CatchClause;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v1, :cond_2

    .line 136
    const-string v1, " finally "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    .line 145
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 147
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/CatchClause;

    .line 148
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/CatchClause;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_1
    return-void
.end method
