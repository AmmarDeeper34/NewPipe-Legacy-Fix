.class public final Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;
.super Ljava/lang/Object;
.source "InstanceSpinnerLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/Spinner;

.field public final spinner:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->rootView:Landroid/widget/Spinner;

    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->spinner:Landroid/widget/Spinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    check-cast p0, Landroid/widget/Spinner;

    .line 56
    new-instance v0, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;

    invoke-direct {v0, p0, p0}, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;
    .locals 2

    const v0, 0x7f0d006b

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->getRoot()Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/Spinner;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/InstanceSpinnerLayoutBinding;->rootView:Landroid/widget/Spinner;

    return-object v0
.end method
