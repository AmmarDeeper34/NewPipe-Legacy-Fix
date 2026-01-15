.class public Lorg/mozilla/javascript/ast/SwitchStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "SwitchStatement.java"


# static fields
.field private static final NO_CASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation
.end field

.field private expression:Lorg/mozilla/javascript/ast/AstNode;

.field private lp:I

.field private rp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 38
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x7f

    .line 41
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 38
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x7f

    .line 41
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 48
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 38
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x7f

    .line 41
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 52
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    .line 53
    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method


# virtual methods
.method public addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    return-object v0
.end method

.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return v0
.end method

.method public setCases(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 68
    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    .line 69
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLp(I)V
    .locals 0

    .line 112
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    .line 127
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 128
    iput p2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return-void
.end method

.method public setRp(I)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5

    .line 133
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, "switch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ") {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/SwitchCase;

    add-int/lit8 v4, p1, 0x1

    .line 141
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string p1, "}\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    .line 152
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 154
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 155
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/SwitchCase;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
