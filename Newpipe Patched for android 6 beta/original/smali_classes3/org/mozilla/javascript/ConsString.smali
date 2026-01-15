.class public Lorg/mozilla/javascript/ConsString;
.super Ljava/lang/Object;
.source "ConsString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x750759072398571aL


# instance fields
.field private isFlat:Z

.field private left:Ljava/lang/CharSequence;

.field private final length:I

.field private right:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/mozilla/javascript/ConsString;

    if-nez v0, :cond_1

    .line 39
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/ConsString;->length:I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    return-void
.end method

.method private declared-synchronized flatten()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-nez v0, :cond_4

    .line 59
    iget v0, p0, Lorg/mozilla/javascript/ConsString;->length:I

    new-array v1, v0, [C

    .line 62
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 63
    iget-object v3, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 65
    iget-object v3, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    .line 67
    :cond_0
    instance-of v4, v3, Lorg/mozilla/javascript/ConsString;

    if-eqz v4, :cond_2

    .line 68
    check-cast v3, Lorg/mozilla/javascript/ConsString;

    .line 69
    iget-boolean v4, v3, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v4, :cond_1

    .line 70
    iget-object v3, v3, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 72
    :cond_1
    iget-object v4, v3, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 73
    iget-object v3, v3, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    check-cast v3, Ljava/lang/String;

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_1
    if-nez v3, :cond_0

    .line 84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    .line 88
    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/mozilla/javascript/ConsString;->length:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
