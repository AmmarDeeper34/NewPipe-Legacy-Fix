.class Lorg/jsoup/nodes/Printer$Outline;
.super Lorg/jsoup/nodes/Printer$Pretty;
.source "Printer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Outline"
.end annotation


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Printer$Pretty;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method


# virtual methods
.method isBlockEl(Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method shouldIndent(Lorg/jsoup/nodes/Node;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 226
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->root:Lorg/jsoup/nodes/Node;

    if-eq p1, v1, :cond_3

    iget-boolean v1, p0, Lorg/jsoup/nodes/Printer$Pretty;->preserveWhitespace:Z

    if-nez v1, :cond_3

    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    instance-of v1, p1, Lorg/jsoup/nodes/TextNode;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v0
.end method
