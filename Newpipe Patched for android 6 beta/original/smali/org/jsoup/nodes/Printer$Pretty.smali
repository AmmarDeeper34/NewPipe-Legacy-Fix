.class Lorg/jsoup/nodes/Printer$Pretty;
.super Lorg/jsoup/nodes/Printer;
.source "Printer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pretty"
.end annotation


# instance fields
.field preserveWhitespace:Z


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Printer;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    :goto_0
    if-eqz p1, :cond_1

    .line 66
    sget p2, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    invoke-static {p2, p1}, Lorg/jsoup/nodes/Printer$Pretty;->tagIs(ILorg/jsoup/nodes/Node;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static hasChildBlocks(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 175
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    if-eqz p0, :cond_2

    .line 177
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method static hasNonTextNodes(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 185
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    if-eqz p0, :cond_1

    .line 187
    instance-of v2, p0, Lorg/jsoup/nodes/TextNode;

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static isBlankText(Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 205
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static nextNonBlank(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 200
    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/Printer$Pretty;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static previousNonblank(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object p0

    .line 195
    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/Printer$Pretty;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static tagIs(ILorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 209
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addHead(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer;->indent(I)V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addHead(Lorg/jsoup/nodes/Element;I)V

    .line 78
    sget p2, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    invoke-static {p2, p1}, Lorg/jsoup/nodes/Printer$Pretty;->tagIs(ILorg/jsoup/nodes/Node;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    :cond_1
    return-void
.end method

.method addNode(Lorg/jsoup/nodes/LeafNode;I)V
    .locals 1

    .line 99
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer;->indent(I)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addNode(Lorg/jsoup/nodes/LeafNode;I)V

    return-void
.end method

.method addTail(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/Printer$Pretty;->nextNonBlank(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer;->indent(I)V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addTail(Lorg/jsoup/nodes/Element;I)V

    .line 89
    iget-boolean p2, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    sget v0, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Tag;->is(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 90
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    :cond_3
    :goto_0
    return-void
.end method

.method addText(Lorg/jsoup/nodes/TextNode;II)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    if-nez v0, :cond_0

    or-int/lit8 p2, p2, 0x4

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer$Pretty;->textTrim(Lorg/jsoup/nodes/TextNode;I)I

    move-result p2

    .line 110
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Printer;->indent(I)V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/nodes/Printer;->addText(Lorg/jsoup/nodes/TextNode;II)V

    return-void
.end method

.method isBlockEl(Lorg/jsoup/nodes/Node;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_4

    .line 161
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 162
    const-string v1, "br"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 163
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 164
    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    instance-of v1, v1, Lorg/jsoup/nodes/Document;

    if-nez v1, :cond_3

    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->hasChildBlocks(Lorg/jsoup/nodes/Element;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method shouldIndent(Lorg/jsoup/nodes/Node;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 141
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->root:Lorg/jsoup/nodes/Node;

    if-eq p1, v1, :cond_6

    iget-boolean v1, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    if-nez v1, :cond_6

    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 146
    :cond_1
    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->previousNonblank(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 149
    :cond_2
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 150
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    sget v4, Lorg/jsoup/parser/Tag;->InlineContainer:I

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Tag;->is(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->hasNonTextNodes(Lorg/jsoup/nodes/Element;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 153
    instance-of p1, v1, Lorg/jsoup/nodes/TextNode;

    if-nez p1, :cond_4

    .line 155
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v1, Lorg/jsoup/nodes/Element;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v0
.end method

.method textTrim(Lorg/jsoup/nodes/TextNode;I)I
    .locals 2

    .line 118
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 119
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    .line 123
    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 125
    instance-of v1, v0, Lorg/jsoup/nodes/TextNode;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    or-int/lit8 p2, p2, 0x8

    :cond_3
    if-eqz p1, :cond_6

    .line 129
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 132
    :cond_4
    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->nextNonBlank(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    .line 133
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit8 p1, p2, 0x10

    return p1

    :cond_5
    return p2

    :cond_6
    :goto_0
    or-int/lit8 p1, p2, 0x10

    return p1
.end method
