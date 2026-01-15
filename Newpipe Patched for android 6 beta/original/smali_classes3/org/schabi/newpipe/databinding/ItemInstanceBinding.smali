.class public final Lorg/schabi/newpipe/databinding/ItemInstanceBinding;
.super Ljava/lang/Object;
.source "ItemInstanceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final handle:Landroidx/appcompat/widget/AppCompatImageView;

.field public final instanceIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final instanceName:Landroid/widget/TextView;

.field public final instanceUrl:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final selectInstanceRB:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 43
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->handle:Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 45
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceName:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceUrl:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemInstanceBinding;
    .locals 9

    const v0, 0x7f0a01b3

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01d6

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01d7

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01d8

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0355

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 107
    new-instance v2, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-object v2

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemInstanceBinding;
    .locals 2

    const v0, 0x7f0d006c

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
