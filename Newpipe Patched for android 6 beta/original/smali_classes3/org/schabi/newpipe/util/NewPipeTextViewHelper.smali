.class public abstract Lorg/schabi/newpipe/util/NewPipeTextViewHelper;
.super Ljava/lang/Object;
.source "NewPipeTextViewHelper.java"


# direct methods
.method private static getSelectedText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    if-le v0, p0, :cond_1

    .line 50
    invoke-interface {p1, p0, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 50
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static shareSelectedTextIfNotNullAndNotEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static shareSelectedTextWithShareUtils(Landroid/widget/TextView;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/NewPipeTextViewHelper;->getSelectedText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/NewPipeTextViewHelper;->shareSelectedTextIfNotNullAndNotEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    invoke-static {v0, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method
