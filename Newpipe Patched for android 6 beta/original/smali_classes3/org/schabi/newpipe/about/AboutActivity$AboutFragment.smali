.class public final Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;
.super Landroidx/fragment/app/Fragment;
.source "AboutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/about/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AboutFragment"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$p9YQvY_AeXmIjWn2cRH3Z2tqiVs(Landroid/widget/Button;Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink$lambda$0(Landroid/widget/Button;Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final openLink(Landroid/widget/Button;I)V
    .locals 1

    .line 60
    new-instance v0, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p2}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Button;Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final openLink$lambda$0(Landroid/widget/Button;Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;ILandroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 70
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentAboutBinding;

    move-result-object p1

    .line 71
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutAppVersion:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string p3, "0.28.1"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutGithubLink:Landroid/widget/Button;

    const-string p3, "aboutGithubLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f1201e5

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink(Landroid/widget/Button;I)V

    .line 73
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutDonationLink:Landroid/widget/Button;

    const-string p3, "aboutDonationLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f120100

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink(Landroid/widget/Button;I)V

    .line 74
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutWebsiteLink:Landroid/widget/Button;

    const-string p3, "aboutWebsiteLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f1204d0

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink(Landroid/widget/Button;I)V

    .line 75
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->aboutPrivacyPolicyLink:Landroid/widget/Button;

    const-string p3, "aboutPrivacyPolicyLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f120398

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink(Landroid/widget/Button;I)V

    .line 76
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->faqLink:Landroid/widget/Button;

    const-string p3, "faqLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f1201ad

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;->openLink(Landroid/widget/Button;I)V

    .line 77
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentAboutBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
