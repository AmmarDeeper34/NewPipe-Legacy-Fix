.class Lorg/jsoup/nodes/Printer;
.super Ljava/lang/Object;
.source "Printer.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Printer$Outline;,
        Lorg/jsoup/nodes/Printer$Pretty;
    }
.end annotation


# instance fields
.field final accum:Lorg/jsoup/internal/QuietAppendable;

.field final root:Lorg/jsoup/nodes/Node;

.field final settings:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->root:Lorg/jsoup/nodes/Node;

    .line 18
    iput-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    .line 19
    iput-object p3, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method static printerFor(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;)Lorg/jsoup/nodes/Printer;
    .locals 2

    .line 236
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jsoup/nodes/Printer$Outline;

    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer$Outline;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/jsoup/nodes/Printer$Pretty;

    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer$Pretty;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-object v1

    .line 239
    :cond_1
    new-instance v1, Lorg/jsoup/nodes/Printer;

    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-object v1
.end method


# virtual methods
.method addHead(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    .line 23
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/nodes/Element;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method

.method addNode(Lorg/jsoup/nodes/LeafNode;I)V
    .locals 1

    .line 36
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method

.method addTail(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    .line 27
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/nodes/Element;->outerHtmlTail(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method

.method addText(Lorg/jsoup/nodes/TextNode;II)V
    .locals 1

    or-int/lit8 p2, p2, 0x1

    .line 32
    iget-object p3, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {p3, p1, v0, p2}, Lorg/jsoup/nodes/Entities;->escape(Lorg/jsoup/internal/QuietAppendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V

    return-void
.end method

.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jsoup/nodes/TextNode;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/nodes/TextNode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/nodes/Printer;->addText(Lorg/jsoup/nodes/TextNode;II)V

    return-void

    .line 46
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addHead(Lorg/jsoup/nodes/Element;I)V

    return-void

    .line 47
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/LeafNode;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addNode(Lorg/jsoup/nodes/LeafNode;I)V

    return-void
.end method

.method indent(I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->accum:Lorg/jsoup/internal/QuietAppendable;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    move-result v1

    mul-int p1, p1, v1

    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->settings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jsoup/internal/StringUtil;->padding(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    .line 52
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addTail(Lorg/jsoup/nodes/Element;I)V

    :cond_0
    return-void
.end method

.method public synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/jsoup/select/NodeVisitor$-CC;->$default$traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
