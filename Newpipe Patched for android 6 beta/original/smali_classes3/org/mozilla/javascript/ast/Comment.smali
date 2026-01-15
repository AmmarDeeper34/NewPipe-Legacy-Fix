.class public Lorg/mozilla/javascript/ast/Comment;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Comment.java"


# instance fields
.field private commentType:Lorg/mozilla/javascript/Token$CommentType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0xaf

    .line 44
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 57
    iput-object p3, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 58
    iput-object p4, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentType(Lorg/mozilla/javascript/Token$CommentType;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object p1, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object p1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Comment;->getCommentType()Lorg/mozilla/javascript/Token$CommentType;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 96
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0

    .line 107
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
