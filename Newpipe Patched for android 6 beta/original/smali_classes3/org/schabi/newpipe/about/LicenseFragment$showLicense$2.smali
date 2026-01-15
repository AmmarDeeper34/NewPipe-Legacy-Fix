.class final Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;
.super Ljava/lang/Object;
.source "LicenseFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/about/LicenseFragment;->showLicense(Lorg/schabi/newpipe/about/SoftwareComponent;)Lio/reactivex/rxjava3/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $softwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

.field final synthetic this$0:Lorg/schabi/newpipe/about/LicenseFragment;


# direct methods
.method public static synthetic $r8$lambda$ClokpM4mxGu7Gmj_hIYaTjmFqac(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->accept$lambda$1(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ncfoxd-c4If0LHgCDAmKGBXmiQc(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->accept$lambda$0(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SSpoTBjXxrwbD-E7jUgIzpxN464(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->accept$lambda$3(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s9TwA6dEZya0VTfMeKfneGB7E-E(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->accept$lambda$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->this$0:Lorg/schabi/newpipe/about/LicenseFragment;

    iput-object p3, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$softwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accept$lambda$0(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 108
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->access$setActiveSoftwareComponent$p(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    return-void
.end method

.method private static final accept$lambda$1(Lorg/schabi/newpipe/about/LicenseFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 109
    invoke-static {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment;->access$setActiveSoftwareComponent$p(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    return-void
.end method

.method private static final accept$lambda$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 110
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final accept$lambda$3(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/about/SoftwareComponent;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 3

    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 99
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v1, "text/html; charset=UTF-8"

    const-string v2, "base64"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->this$0:Lorg/schabi/newpipe/about/LicenseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$softwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    invoke-virtual {v1}, Lorg/schabi/newpipe/about/SoftwareComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->this$0:Lorg/schabi/newpipe/about/LicenseFragment;

    new-instance v1, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/about/LicenseFragment;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->this$0:Lorg/schabi/newpipe/about/LicenseFragment;

    new-instance v1, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/about/LicenseFragment;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 110
    new-instance v0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda2;-><init>()V

    const v1, 0x7f120101

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$softwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    invoke-static {}, Lorg/schabi/newpipe/about/LicenseFragment;->access$getNEWPIPE_SOFTWARE_COMPONENT$cp()Lorg/schabi/newpipe/about/SoftwareComponent;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->this$0:Lorg/schabi/newpipe/about/LicenseFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2;->$softwareComponent:Lorg/schabi/newpipe/about/SoftwareComponent;

    new-instance v2, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/about/LicenseFragment$showLicense$2$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/about/LicenseFragment;Lorg/schabi/newpipe/about/SoftwareComponent;)V

    const v0, 0x7f120338

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
