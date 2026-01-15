.class public final Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;
.super Ljava/lang/Object;
.source "ListRadioIconItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/RadioButton;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->rootView:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    check-cast p0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;-><init>(Landroid/widget/RadioButton;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;
    .locals 2

    const v0, 0x7f0d0081

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->getRoot()Landroid/widget/RadioButton;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RadioButton;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->rootView:Landroid/widget/RadioButton;

    return-object v0
.end method
