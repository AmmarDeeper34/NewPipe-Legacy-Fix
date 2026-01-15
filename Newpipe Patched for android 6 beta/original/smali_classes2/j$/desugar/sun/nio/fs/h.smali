.class public final Lj$/desugar/sun/nio/fs/h;
.super Lj$/nio/file/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lj$/desugar/sun/nio/fs/l;


# direct methods
.method public constructor <init>(Lj$/desugar/sun/nio/fs/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/h;->c:Lj$/desugar/sun/nio/fs/l;

    .line 51
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/h;->a:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final f()Ljava/lang/Iterable;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 4

    .line 108
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p2, v1

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2f

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    :goto_1
    new-instance p2, Lj$/desugar/sun/nio/fs/n;

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/h;->b:Ljava/lang/String;

    invoke-direct {p2, p0, p1, v0, v1}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final i(Ljava/lang/String;)Lj$/nio/file/z;
    .locals 17

    move-object/from16 v0, p1

    const/16 v1, 0x3a

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_22

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_22

    .line 135
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v1, v2

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "glob"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1e

    add-int/lit8 v6, v4, 0x1

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_1c

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_1a

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_19

    const/16 v9, 0x3f

    if-eq v7, v9, :cond_18

    const/16 v9, 0x7b

    if-eq v7, v9, :cond_16

    const/16 v9, 0x7d

    if-eq v7, v9, :cond_14

    const/4 v9, -0x1

    const/16 v10, 0x5b

    const/16 v11, 0x5c

    if-eq v7, v10, :cond_5

    .line 64
    const-string v8, ".^$+{[]|()"

    if-eq v7, v11, :cond_1

    .line 37
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 197
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_4

    add-int/lit8 v4, v4, 0x2

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 41
    const-string v7, "\\*?[{"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 73
    :goto_1
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    goto/16 :goto_9

    .line 68
    :cond_4
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "No character to escape"

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 89
    :cond_5
    const-string v12, "[[^/]&&["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v0, v6}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v12

    const/16 v13, 0x5e

    const/16 v14, 0x2d

    if-ne v12, v13, :cond_6

    .line 93
    const-string v6, "\\^"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 97
    :cond_6
    invoke-static {v0, v6}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v12

    const/16 v15, 0x21

    if-ne v12, v15, :cond_7

    .line 98
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x2

    .line 102
    :cond_7
    invoke-static {v0, v6}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v14, :cond_8

    .line 103
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    goto :goto_2

    :cond_8
    move v4, v6

    :goto_2
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 109
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x5d

    if-ge v4, v13, :cond_9

    add-int/lit8 v7, v4, 0x1

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_a

    move v4, v7

    move v7, v13

    :cond_9
    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    if-eq v13, v8, :cond_12

    if-eq v13, v11, :cond_b

    if-eq v13, v10, :cond_b

    const/16 v16, 0x1

    const/16 v2, 0x26

    if-ne v13, v2, :cond_c

    .line 120
    invoke-static {v0, v7}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v8

    if-ne v8, v2, :cond_c

    goto :goto_4

    :cond_b
    const/16 v16, 0x1

    .line 122
    :goto_4
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_c
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v13, v14, :cond_11

    .line 127
    const-string v2, "Invalid range"

    if-eqz v6, :cond_10

    add-int/lit8 v6, v4, 0x2

    .line 131
    invoke-static {v0, v7}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v7

    if-eqz v7, :cond_f

    if-ne v7, v15, :cond_d

    goto :goto_6

    :cond_d
    if-lt v7, v12, :cond_e

    .line 138
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    :goto_5
    const/16 v8, 0x2f

    goto :goto_3

    .line 135
    :cond_e
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    add-int/2addr v4, v9

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_f
    :goto_6
    move v4, v6

    goto :goto_7

    .line 128
    :cond_10
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_11
    move v4, v7

    move v7, v13

    move v12, v7

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_5

    .line 115
    :cond_12
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Explicit \'name separator\' in class"

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :goto_7
    if-ne v7, v15, :cond_13

    .line 148
    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 146
    :cond_13
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Missing \']"

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_14
    const/16 v16, 0x1

    if-eqz v5, :cond_15

    .line 160
    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    const/4 v5, 0x0

    goto :goto_9

    .line 163
    :cond_15
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_16
    const/16 v16, 0x1

    if-nez v5, :cond_17

    .line 155
    const-string v2, "(?:(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    const/4 v5, 0x1

    goto :goto_9

    .line 152
    :cond_17
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Cannot nest groups"

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    const/16 v16, 0x1

    .line 191
    const-string v2, "[^/]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_19
    const/16 v16, 0x1

    .line 81
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1a
    const/16 v16, 0x1

    if-eqz v5, :cond_1b

    .line 168
    const-string v2, ")|(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 170
    :cond_1b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1c
    const/16 v16, 0x1

    .line 174
    invoke-static {v0, v6}, Lj$/com/android/tools/r8/a;->V(Ljava/lang/String;I)C

    move-result v2

    if-ne v2, v8, :cond_1d

    .line 176
    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    .line 183
    :cond_1d
    const-string v2, "[^/]*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v4, v6

    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1e
    const/16 v16, 0x1

    if-nez v5, :cond_1f

    const/16 v0, 0x24

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 204
    :cond_1f
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Missing \'}"

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v2, v0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 142
    :cond_20
    const-string v1, "regex"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 150
    :goto_a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 152
    new-instance v1, Lj$/desugar/sun/nio/fs/g;

    invoke-direct {v1, v3, v0}, Lj$/desugar/sun/nio/fs/g;-><init>(ILjava/lang/Object;)V

    return-object v1

    .line 145
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Syntax \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 v16, 0x1

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v16

    .line 131
    const-string v0, "Requested <syntax>:<pattern> spliterator(\':\') position(%d) is out of bound in %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()Ljava/lang/Iterable;
    .locals 4

    .line 90
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/h;->b:Ljava/lang/String;

    const-string v3, "/"

    invoke-direct {v0, p0, v3, v1, v2}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/com/android/tools/r8/a;->G([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "/"

    return-object v0
.end method

.method public final m()Lj$/nio/file/attribute/a0;
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lj$/nio/file/i0;
    .locals 1

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final t()Lj$/nio/file/spi/d;
    .locals 1

    .line 57
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/h;->c:Lj$/desugar/sun/nio/fs/l;

    return-object v0
.end method

.method public final v()Ljava/util/Set;
    .locals 3

    const/4 v0, 0x1

    .line 0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "basic"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
