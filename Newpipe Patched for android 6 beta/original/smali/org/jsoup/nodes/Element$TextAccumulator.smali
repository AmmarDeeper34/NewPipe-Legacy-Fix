.class Lorg/jsoup/nodes/Element$TextAccumulator;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextAccumulator"
.end annotation


# instance fields
.field private final accum:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1566
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz p2, :cond_0

    .line 1567
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 1568
    iget-object p2, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    return-void

    .line 1569
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_2

    .line 1570
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 1571
    iget-object p2, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1572
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    .line 1573
    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1574
    iget-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1580
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_1

    .line 1581
    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 1582
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    .line 1583
    iget-object p2, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isInline()Z

    move-result p2

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-nez p2, :cond_0

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isInline()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1584
    iget-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/jsoup/select/NodeVisitor$-CC;->$default$traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
