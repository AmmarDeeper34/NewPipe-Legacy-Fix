.class public Lorg/schabi/newpipe/views/NewPipeEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "NewPipeEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020035

    if-ne p1, v0, :cond_0

    .line 41
    invoke-static {p0}, Lorg/schabi/newpipe/util/NewPipeTextViewHelper;->shareSelectedTextWithShareUtils(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method
