.class public final Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;
.super Ljava/lang/Object;
.source "FragmentLicensesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final licensesAppReadLicense:Landroid/widget/Button;

.field public final licensesSoftwareComponents:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->licensesAppReadLicense:Landroid/widget/Button;

    .line 33
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->licensesSoftwareComponents:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;
    .locals 3

    const v0, 0x7f0a0203

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0204

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;
    .locals 2

    const v0, 0x7f0d0060

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentLicensesBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
