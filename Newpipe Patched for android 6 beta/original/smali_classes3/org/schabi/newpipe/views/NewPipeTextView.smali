.class public Lorg/schabi/newpipe/views/NewPipeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "NewPipeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020035

    if-ne p1, v0, :cond_0

    .line 53
    invoke-static {p0}, Lorg/schabi/newpipe/util/NewPipeTextViewHelper;->shareSelectedTextWithShareUtils(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
