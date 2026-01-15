.class public Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final Combinators:[C

.field private static final NthOffset:Ljava/util/regex/Pattern;

.field private static final NthStepOffset:Ljava/util/regex/Pattern;

.field private static final SequenceEnders:[C


# instance fields
.field private inNodeContext:Z

.field private final query:Ljava/lang/String;

.field private final tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 27
    const-string v5, "*="

    const-string v6, "~="

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jsoup/select/QueryParser;->SequenceEnders:[C

    .line 382
    const-string v1, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    .line 383
    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x3es
        0x2bs
        0x7es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2cs
        0x29s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    return-void
.end method

.method static and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;
    .locals 3

    if-nez p0, :cond_0

    return-object p1

    .line 191
    :cond_0
    instance-of v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;

    if-eqz v0, :cond_1

    .line 192
    move-object v0, p0

    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$And;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/CombiningEvaluator;->add(Lorg/jsoup/select/Evaluator;)V

    return-object p0

    .line 195
    :cond_1
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jsoup/select/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    return-object v0
.end method

.method private byAttribute()Lorg/jsoup/select/Evaluator;
    .locals 4

    .line 341
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 342
    :try_start_0
    invoke-direct {p0, v0}, Lorg/jsoup/select/QueryParser;->evaluatorForAttribute(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 341
    :try_start_1
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private byClass()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 313
    new-instance v1, Lorg/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private byId()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 305
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 307
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private byTag()Lorg/jsoup/select/Evaluator;
    .locals 8

    .line 320
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 324
    const-string v1, "*|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ":"

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    new-instance v5, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v5, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/jsoup/select/Evaluator$TagEndsWith;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lorg/jsoup/select/Evaluator;

    aput-object v5, v0, v2

    const/4 v2, 0x1

    aput-object v6, v0, v2

    invoke-direct {v1, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    return-object v1

    .line 330
    :cond_0
    const-string v1, "|*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Lorg/jsoup/select/Evaluator$TagStartsWith;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$TagStartsWith;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 333
    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_2
    new-instance v1, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static combinator(Lorg/jsoup/select/Evaluator;CLorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_0

    .line 163
    new-instance p1, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {p1, p0}, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-static {p1, p2}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Unknown combinator \'%s\'"

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 154
    :cond_1
    instance-of p1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    if-eqz p1, :cond_2

    .line 155
    check-cast p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    invoke-direct {p1, p0}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;-><init>(Lorg/jsoup/select/Evaluator;)V

    move-object p0, p1

    .line 156
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->add(Lorg/jsoup/select/Evaluator;)V

    return-object p0

    .line 161
    :cond_3
    new-instance p1, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {p1, p0}, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-static {p1, p2}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object p0

    return-object p0

    .line 159
    :cond_4
    new-instance p1, Lorg/jsoup/select/StructuralEvaluator$Ancestor;

    invoke-direct {p1, p0}, Lorg/jsoup/select/StructuralEvaluator$Ancestor;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-static {p1, p2}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object p0

    return-object p0
.end method

.method private consumeIndex()I
    .locals 3

    .line 421
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private consumeParens()Ljava/lang/String;
    .locals 3

    .line 417
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private contains(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    if-eqz p1, :cond_0

    .line 445
    const-string v0, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":contains"

    .line 446
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(text) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-boolean v0, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    if-eqz v0, :cond_1

    .line 450
    new-instance p1, Lorg/jsoup/select/NodeEvaluator$ContainsValue;

    invoke-direct {p1, v1}, Lorg/jsoup/select/NodeEvaluator$ContainsValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 453
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 454
    :cond_2
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private containsData()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 468
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    const-string v1, ":containsData(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v1, Lorg/jsoup/select/Evaluator$ContainsData;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private containsWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    if-eqz p1, :cond_0

    .line 458
    const-string v0, ":containsWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":containsWholeText"

    .line 459
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(text) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 462
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 463
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeText;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private cssNthChild(ZZ)Lorg/jsoup/select/Evaluator;
    .locals 8

    .line 386
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, "odd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 391
    :cond_0
    const-string v1, "even"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 396
    :cond_2
    sget-object v1, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const-string v6, ""

    const-string v7, "^\\+"

    if-eqz v5, :cond_5

    const/4 v0, 0x3

    .line 397
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 400
    :cond_3
    const-string v0, "-"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    :cond_4
    move v3, v2

    :goto_0
    const/4 v0, 0x4

    .line 402
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 403
    :cond_5
    sget-object v1, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 405
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    .line 412
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    return-object p1

    :cond_6
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    return-object p1

    :cond_7
    if-eqz p1, :cond_8

    .line 413
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    return-object p1

    :cond_8
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    return-object p1

    .line 407
    :cond_9
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private evaluatorForAttribute(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 347
    sget-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 350
    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Absolute attribute key must have a name"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 354
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 355
    const-string p1, "^"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    new-instance p1, Lorg/jsoup/select/Evaluator$AttributeStarting;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 357
    :cond_0
    const-string p1, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    new-instance p1, Lorg/jsoup/select/Evaluator$AttributeStarting;

    const-string v0, ""

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 360
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/16 v1, 0x3d

    .line 362
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 364
    :cond_3
    const-string v1, "!="

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 366
    :cond_4
    const-string v1, "^="

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 368
    :cond_5
    const-string v1, "$="

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 369
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 370
    :cond_6
    const-string v1, "*="

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 371
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 372
    :cond_7
    const-string v1, "~="

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 373
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Lorg/jsoup/helper/Regex;)V

    return-object v1

    .line 375
    :cond_8
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p1, v3, v2

    const-string p1, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, p1, v3}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private has()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 428
    new-instance v0, Lorg/jsoup/select/QueryParser$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/jsoup/select/QueryParser$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, ":has() must have a selector"

    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/QueryParser;->parseNested(Ljava/util/function/Function;Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0
.end method

.method private is()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 433
    new-instance v0, Lorg/jsoup/select/QueryParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/select/QueryParser$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ":is() must have a selector"

    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/QueryParser;->parseNested(Ljava/util/function/Function;Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0
.end method

.method private matches(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    if-eqz p1, :cond_0

    .line 475
    const-string v0, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":matches"

    .line 476
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(regex) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {v1}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    move-result-object v0

    .line 480
    iget-boolean v1, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    if-eqz v1, :cond_1

    .line 481
    new-instance p1, Lorg/jsoup/select/NodeEvaluator$MatchesValue;

    invoke-direct {p1, v0}, Lorg/jsoup/select/NodeEvaluator$MatchesValue;-><init>(Lorg/jsoup/helper/Regex;)V

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 484
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Lorg/jsoup/helper/Regex;)V

    return-object p1

    .line 485
    :cond_2
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Lorg/jsoup/helper/Regex;)V

    return-object p1
.end method

.method private matchesWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    if-eqz p1, :cond_0

    .line 490
    const-string v0, ":matchesWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":matchesWholeText"

    .line 491
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(regex) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {v1}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 496
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;-><init>(Lorg/jsoup/helper/Regex;)V

    return-object p1

    .line 497
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeText;

    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesWholeText;-><init>(Lorg/jsoup/helper/Regex;)V

    return-object p1
.end method

.method private not()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 502
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/StructuralEvaluator$Not;-><init>(Lorg/jsoup/select/Evaluator;)V

    return-object v1
.end method

.method static or(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 181
    instance-of v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/CombiningEvaluator;->add(Lorg/jsoup/select/Evaluator;)V

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jsoup/select/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 1

    .line 55
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 55
    :try_start_3
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNested(Ljava/util/function/Function;Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 437
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v0

    invoke-static {v0, p2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelectorGroup()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v1

    invoke-static {v1, p2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 440
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/select/Evaluator;

    return-object p1
.end method

.method private parseNodeSelector()Lorg/jsoup/select/Evaluator;
    .locals 6

    .line 266
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "leafnode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "comment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "cdata"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "node"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 290
    new-instance v2, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    const-string v0, "Could not parse query \'%s\': unknown node type \'::%s\'"

    invoke-direct {v2, v0, v3}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 275
    :pswitch_0
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/LeafNode;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :pswitch_1
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/Comment;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :pswitch_2
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/CDataNode;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :pswitch_3
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :pswitch_4
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/Node;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :pswitch_5
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    const-class v2, Lorg/jsoup/nodes/DataNode;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 296
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSubclass()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 297
    invoke-static {v1, v0}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object v1

    goto :goto_1

    .line 300
    :cond_6
    iput-boolean v4, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x33ae02 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5a2068d -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x5d2b6e60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parsePseudoSelector()Lorg/jsoup/select/Evaluator;
    .locals 6

    .line 199
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "last-of-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "containsWholeText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "matchesOwn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "only-of-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "first-of-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "matchesWholeOwnText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "matches"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "last-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "matchText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "containsOwn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "not"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "has"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "gt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "eq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "containsWholeOwnText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "nth-last-of-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_16
    const-string v1, "nth-of-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_17
    const-string v1, "only-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_18
    const-string v1, "nth-last-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_19
    const-string v1, "nth-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1a
    const-string v1, "matchesWholeText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1b
    const-string v1, "first-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1c
    const-string v1, "containsData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 260
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v5}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v5, v2, v3

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 246
    :pswitch_0
    new-instance v0, Lorg/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    return-object v0

    .line 216
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 224
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_3
    new-instance v0, Lorg/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    return-object v0

    .line 244
    :pswitch_4
    new-instance v0, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    return-object v0

    .line 228
    :pswitch_5
    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 222
    :pswitch_6
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_7
    new-instance v0, Lorg/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsLastChild;-><init>()V

    return-object v0

    .line 258
    :pswitch_8
    new-instance v0, Lorg/jsoup/select/Evaluator$MatchText;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$MatchText;-><init>()V

    return-object v0

    .line 214
    :pswitch_9
    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 252
    :pswitch_a
    new-instance v0, Lorg/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsEmpty;-><init>()V

    return-object v0

    .line 254
    :pswitch_b
    new-instance v0, Lorg/jsoup/select/NodeEvaluator$BlankValue;

    invoke-direct {v0}, Lorg/jsoup/select/NodeEvaluator$BlankValue;-><init>()V

    return-object v0

    .line 256
    :pswitch_c
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>()V

    return-object v0

    .line 230
    :pswitch_d
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->not()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_e
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->has()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_f
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    return-object v0

    .line 210
    :pswitch_10
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->is()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_11
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    return-object v0

    .line 206
    :pswitch_12
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    return-object v0

    .line 218
    :pswitch_13
    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_14
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_15
    invoke-direct {p0, v3, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_16
    invoke-direct {p0, v4, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_17
    new-instance v0, Lorg/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    return-object v0

    .line 234
    :pswitch_18
    invoke-direct {p0, v3, v4}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_19
    invoke-direct {p0, v4, v4}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_1a
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_1b
    new-instance v0, Lorg/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    return-object v0

    .line 220
    :pswitch_1c
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->containsData()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fa84d97 -> :sswitch_1c
        -0x7f5fe841 -> :sswitch_1b
        -0x73a0d86f -> :sswitch_1a
        -0x6899dd0f -> :sswitch_19
        -0x6123fd90 -> :sswitch_18
        -0x38814845 -> :sswitch_17
        -0x357f41fb -> :sswitch_16
        -0x3403463c -> :sswitch_15
        -0x21d289e1 -> :sswitch_14
        -0x34d8c25 -> :sswitch_13
        0xcac -> :sswitch_12
        0xced -> :sswitch_11
        0xd2a -> :sswitch_10
        0xd88 -> :sswitch_f
        0x1929a -> :sswitch_e
        0x1aad3 -> :sswitch_d
        0x3580e2 -> :sswitch_c
        0x5979154 -> :sswitch_b
        0x5c2854d -> :sswitch_a
        0xc6618e7 -> :sswitch_9
        0x24992892 -> :sswitch_8
        0x31d1d325 -> :sswitch_7
        0x321e8933 -> :sswitch_6
        0x4adb88ef -> :sswitch_5
        0x4d10b753 -> :sswitch_4
        0x56c7484f -> :sswitch_3
        0x6f813d53 -> :sswitch_2
        0x780e0425 -> :sswitch_1
        0x78c13139 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->close()V

    return-void
.end method

.method parse()Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 78
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelectorGroup()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 80
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method parseSelector()Lorg/jsoup/select/Evaluator;
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 100
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v1, Lorg/jsoup/select/QueryParser;->Combinators:[C

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v0}, Lorg/jsoup/select/StructuralEvaluator$Root;-><init>()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSimpleSequence()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 109
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 111
    :goto_1
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v3, Lorg/jsoup/select/QueryParser;->Combinators:[C

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    goto :goto_2

    .line 113
    :cond_2
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v3, Lorg/jsoup/select/QueryParser;->SequenceEnders:[C

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSimpleSequence()Lorg/jsoup/select/Evaluator;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lorg/jsoup/select/QueryParser;->combinator(Lorg/jsoup/select/Evaluator;CLorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method parseSelectorGroup()Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelector()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 88
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelector()Lorg/jsoup/select/Evaluator;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lorg/jsoup/select/QueryParser;->or(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method parseSimpleSequence()Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 129
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 132
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byTag()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 139
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSubclass()Lorg/jsoup/select/Evaluator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 141
    invoke-static {v0, v1}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    return-object v0

    .line 147
    :cond_4
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method parseSubclass()Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byId()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byClass()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byAttribute()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 174
    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->parseNodeSelector()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    .line 175
    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->parsePseudoSelector()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    return-object v0
.end method
