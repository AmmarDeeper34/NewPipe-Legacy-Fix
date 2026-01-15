.class public final Lorg/schabi/newpipe/databinding/FragmentAboutBinding;
.super Ljava/lang/Object;
.source "FragmentAboutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aboutAppVersion:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final aboutDonationLink:Landroid/widget/Button;

.field public final aboutGithubLink:Landroid/widget/Button;

.field public final aboutPrivacyPolicyLink:Landroid/widget/Button;

.field public final aboutWebsiteLink:Landroid/widget/Button;

.field public final faqLink:Landroid/widget/Button;

.field private final rootView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 46
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutAppVersion:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 47
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutDonationLink:Landroid/widget/Button;

    .line 48
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutGithubLink:Landroid/widget/Button;

    .line 49
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutPrivacyPolicyLink:Landroid/widget/Button;

    .line 50
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutWebsiteLink:Landroid/widget/Button;

    .line 51
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->faqLink:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentAboutBinding;
    .locals 10

    const v0, 0x7f0a000e

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a000f

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0010

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0011

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0015

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0189

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 117
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v2

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentAboutBinding;
    .locals 2

    const v0, 0x7f0d0051

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentAboutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
