.class public final Lorg/schabi/newpipe/util/text/TextEllipsizer;
.super Ljava/lang/Object;
.source "TextEllipsizer.java"


# instance fields
.field private canBeEllipsized:Ljava/lang/Boolean;

.field private content:Lorg/schabi/newpipe/extractor/stream/Description;

.field private final disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final ellipsisWidthPx:F

.field private isEllipsized:Z

.field private final maxLines:I

.field private onContentChanged:Ljava/util/function/Consumer;

.field private final paintAtContentSize:Landroid/graphics/Paint;

.field private stateChangeListener:Ljava/util/function/Consumer;

.field private streamUrl:Ljava/lang/String;

.field private streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

.field private final view:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$8cNi4Xtz002zHWWWQAPMy9qithk(Lorg/schabi/newpipe/util/text/TextEllipsizer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->lambda$setContent$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjU6P6BAbMJgobRpIaFFi85PoO4(Lorg/schabi/newpipe/util/text/TextEllipsizer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->lambda$expand$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zf6sNvCW28vm5XDiUfBIpV6rkl4(Lorg/schabi/newpipe/util/text/TextEllipsizer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->lambda$ellipsize$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBiENG5WOcr0EqYjXLrJDuUL1xA(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;ZLandroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->lambda$linkifyContentView$3(Ljava/util/function/Consumer;ZLandroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->paintAtContentSize:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 47
    iput p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    .line 48
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 49
    iput-object p3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 51
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsisWidthPx:F

    return-void
.end method

.method private synthetic lambda$ellipsize$2(Landroid/view/View;)V
    .locals 9

    .line 98
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 99
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    if-le v1, v2, :cond_2

    .line 103
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 106
    iget v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 107
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 108
    iget v5, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 109
    iget v6, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    const/4 v6, 0x0

    move v7, v1

    :goto_0
    sub-float v6, v2, v6

    .line 115
    iget v8, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsisWidthPx:F

    add-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v6, v8

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    if-lt v7, v5, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 119
    iget-object v6, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->paintAtContentSize:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v7, :cond_1

    add-int/lit8 v1, v7, -0x1

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iput-boolean v3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    goto :goto_2

    .line 132
    :cond_2
    iput-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 134
    :goto_2
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    iget v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method private synthetic lambda$expand$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    return-void
.end method

.method private synthetic lambda$linkifyContentView$3(Ljava/util/function/Consumer;ZLandroid/widget/TextView;)V
    .locals 0

    .line 169
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->notifyStateChangeListener(Z)V

    return-void
.end method

.method private synthetic lambda$setContent$0(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 67
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->onContentChanged:Ljava/util/function/Consumer;

    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private linkifyContentView(Ljava/util/function/Consumer;)V
    .locals 9

    .line 164
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 165
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 166
    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v5, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v6, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamUrl:Ljava/lang/String;

    iget-object v7, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->disposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v8, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, p1, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;Z)V

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyStateChangeListener(Z)V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 189
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ellipsize()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 97
    new-instance v0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public expand()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    new-instance v0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 62
    new-instance p1, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setOnContentChanged(Ljava/util/function/Consumer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->onContentChanged:Ljava/util/function/Consumer;

    return-void
.end method

.method public setStateChangeListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamUrl:Ljava/lang/String;

    return-void
.end method

.method public setStreamingService(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->expand()V

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsize()V

    return-void
.end method
