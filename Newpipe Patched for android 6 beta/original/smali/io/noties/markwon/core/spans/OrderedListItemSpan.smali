.class public Lio/noties/markwon/core/spans/OrderedListItemSpan;
.super Ljava/lang/Object;
.source "OrderedListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private margin:I

.field private final number:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    .line 62
    iput-object p1, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 63
    iput-object p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    if-eqz p11, :cond_3

    .line 77
    invoke-static {p9, p8, p0}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    iget-object p5, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 83
    iget-object p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object p5, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Lio/noties/markwon/core/MarkwonTheme;->applyListItemStyle(Landroid/graphics/Paint;)V

    .line 88
    iget-object p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    iget-object p5, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p2, p5

    float-to-int p2, p2

    .line 91
    iget-object p5, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p5}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result p5

    if-le p2, p5, :cond_1

    .line 96
    iput p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    move p5, p2

    goto :goto_0

    :cond_1
    const/4 p7, 0x0

    .line 98
    iput p7, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    :goto_0
    if-lez p4, :cond_2

    mul-int p5, p5, p4

    add-int/2addr p3, p5

    sub-int/2addr p3, p2

    goto :goto_1

    :cond_2
    mul-int p4, p4, p5

    add-int/2addr p3, p4

    sub-int/2addr p5, p2

    add-int/2addr p3, p5

    .line 109
    :goto_1
    iget-object p2, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->number:Ljava/lang/String;

    int-to-float p3, p3

    int-to-float p4, p6

    iget-object p5, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 69
    iget p1, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->margin:I

    iget-object v0, p0, Lio/noties/markwon/core/spans/OrderedListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
