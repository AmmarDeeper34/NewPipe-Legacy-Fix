.class public final Lorg/schabi/newpipe/error/ErrorPanelHelper;
.super Ljava/lang/Object;
.source "ErrorPanelHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final errorActionButton:Landroid/widget/Button;

.field private errorDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final errorOpenInBrowserButton:Landroid/widget/Button;

.field private final errorPanelRoot:Landroid/view/View;

.field private final errorRetryButton:Landroid/widget/Button;

.field private final errorServiceExplanationTextView:Landroid/widget/TextView;

.field private final errorServiceInfoTextView:Landroid/widget/TextView;

.field private final errorTextView:Landroid/widget/TextView;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private retryShouldBeShown:Z


# direct methods
.method public static synthetic $r8$lambda$M-JLbql5F3jO5lidGBuAMd1BVvU(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError$lambda$0(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vq9koTglaqXxwOxOIxY9_TuTrvU(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError$lambda$2(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEHEqYhRlmvZYd_de8_WO4umFPk(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError$lambda$1(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->Companion:Lorg/schabi/newpipe/error/ErrorPanelHelper$Companion;

    .line 137
    const-class v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->TAG:Ljava/lang/String;

    .line 138
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    const p1, 0x7f0a0152

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    const v0, 0x7f0a0150

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    const v0, 0x7f0a014f

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceInfoTextView:Landroid/widget/TextView;

    const v0, 0x7f0a014e

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceExplanationTextView:Landroid/widget/TextView;

    const v0, 0x7f0a014c

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    const v0, 0x7f0a0153

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    const v1, 0x7f0a0151

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->retryShouldBeShown:Z

    if-eqz p3, :cond_1

    .line 48
    invoke-static {v0}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 49
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 50
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 51
    new-instance p2, Lorg/schabi/newpipe/error/ErrorPanelHelper$1;

    invoke-direct {p2, p3}, Lorg/schabi/newpipe/error/ErrorPanelHelper$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private final ensureDefaultVisibility()V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceInfoTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorServiceExplanationTextView:Landroid/widget/TextView;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setRootVisible()V
    .locals 10

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method private final showAndSetErrorButtonAction(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showError$lambda$0(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    const-class v1, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v0, "recaptcha_url_extra"

    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getRecaptchaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object p1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->fragment:Landroidx/fragment/app/Fragment;

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showError$lambda$1(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 0

    .line 79
    sget-object p2, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private static final showError$lambda$2(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getOpenInBrowserUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final hide()V
    .locals 12

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final isVisible()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 3

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->ensureDefaultVisibility()V

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/error/ErrorInfo;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getRecaptchaUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;)V

    const v1, 0x7f1203aa

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showAndSetErrorButtonAction(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;)V

    const v1, 0x7f12015f

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showAndSetErrorButtonAction(ILandroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->retryShouldBeShown:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 257
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/error/ErrorInfo;->getOpenInBrowserUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorOpenInBrowserButton:Landroid/widget/Button;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/error/ErrorPanelHelper;Lorg/schabi/newpipe/error/ErrorInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_4
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->setRootVisible()V

    return-void
.end method

.method public final showTextError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "errorString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->ensureDefaultVisibility()V

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->setRootVisible()V

    return-void
.end method
