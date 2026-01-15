.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# instance fields
.field private final attrName:Lorg/jsoup/parser/TokenData;

.field attrNameEnd:I

.field attrNameStart:I

.field attrValEnd:I

.field attrValStart:I

.field private final attrValue:Lorg/jsoup/parser/TokenData;

.field attributes:Lorg/jsoup/nodes/Attributes;

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Lorg/jsoup/parser/TokenData;

.field final trackSource:Z

.field final treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    .line 100
    new-instance p1, Lorg/jsoup/parser/TokenData;

    invoke-direct {p1}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 105
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    .line 106
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    .line 107
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 116
    iput-object p2, p0, Lorg/jsoup/parser/Token$Tag;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 117
    iget-boolean p1, p2, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    return-void
.end method

.method private attrNamePos(II)V
    .locals 2

    .line 282
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_1

    .line 283
    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    .line 284
    iput p2, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    :cond_1
    return-void
.end method

.method private attrValPos(II)V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_1

    .line 290
    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 291
    iput p2, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    :cond_1
    return-void
.end method

.method private resetPendingAttr()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 133
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 136
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    :cond_0
    return-void
.end method

.method private trackAttributeRange(Ljava/lang/String;)V
    .locals 9

    .line 171
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    .line 173
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    iget-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 174
    iget-object v0, v0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->sourceRange(Ljava/lang/String;)Lorg/jsoup/nodes/Range$AttributeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange()Lorg/jsoup/nodes/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->hasData()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 183
    :cond_2
    new-instance v0, Lorg/jsoup/nodes/Range$AttributeRange;

    new-instance v2, Lorg/jsoup/nodes/Range;

    new-instance v3, Lorg/jsoup/nodes/Range$Position;

    iget v4, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    .line 185
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v5

    iget v6, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    new-instance v4, Lorg/jsoup/nodes/Range$Position;

    iget v5, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    .line 186
    invoke-virtual {v1, v5}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v6

    iget v7, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    invoke-direct {v2, v3, v4}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    new-instance v3, Lorg/jsoup/nodes/Range;

    new-instance v4, Lorg/jsoup/nodes/Range$Position;

    iget v5, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 188
    invoke-virtual {v1, v5}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v6

    iget v7, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    new-instance v5, Lorg/jsoup/nodes/Range$Position;

    iget v6, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    .line 189
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v7

    iget v8, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v1

    invoke-direct {v5, v6, v7, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    invoke-direct {v3, v4, v5}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    invoke-direct {v0, v2, v3}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    .line 191
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1, p1, v0}, Lorg/jsoup/nodes/Attributes;->sourceRange(Ljava/lang/String;Lorg/jsoup/nodes/Range$AttributeRange;)Lorg/jsoup/nodes/Attributes;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method final appendAttributeName(CII)V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(C)V

    .line 257
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->attrNamePos(II)V

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 250
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->attrNamePos(II)V

    return-void
.end method

.method final appendAttributeValue(CII)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(C)V

    .line 267
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->attrValPos(II)V

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;II)V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->attrValPos(II)V

    return-void
.end method

.method final appendAttributeValue([III)V
    .locals 4

    .line 271
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 272
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v3, v2}, Lorg/jsoup/parser/TokenData;->appendCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->attrValPos(II)V

    return-void
.end method

.method final appendTagName(C)V
    .locals 0

    .line 245
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 239
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method final hasAttributeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final hasAttributes()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isSelfClosing()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->set(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final newAttribute()V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    const/16 v1, 0x200

    if-ge v0, v1, :cond_3

    .line 151
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_1
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v1, :cond_2

    .line 158
    const-string v1, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 162
    :goto_0
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 164
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token$Tag;->trackAttributeRange(Ljava/lang/String;)V

    .line 167
    :cond_3
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->resetPendingAttr()V

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 218
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .locals 2

    .line 122
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    .line 123
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 125
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 126
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 127
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->resetPendingAttr()V

    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method final toStringName()Ljava/lang/String;
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[unset]"

    :cond_0
    return-object v0
.end method
