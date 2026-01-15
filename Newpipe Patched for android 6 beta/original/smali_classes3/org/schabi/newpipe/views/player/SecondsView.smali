.class public final Lorg/schabi/newpipe/views/player/SecondsView;
.super Landroid/widget/LinearLayout;
.source "SecondsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/views/player/SecondsView$Companion;,
        Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/views/player/SecondsView$Companion;


# instance fields
.field private final animationsEnabled:Z

.field private final binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

.field private cycleDuration:J

.field private final fifthAnimator:Landroid/animation/ValueAnimator;

.field private final firstAnimator:Landroid/animation/ValueAnimator;

.field private final fourthAnimator:Landroid/animation/ValueAnimator;

.field private final secondAnimator:Landroid/animation/ValueAnimator;

.field private seconds:I

.field private final thirdAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$-7f8VQ0QgfvfVDK_ZuwbDQaCl5g(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2caC7pADs09MgE532BCiXPbnsXE(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9TQCXq_X9DW_lz-so5aPJXQgfAw(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J763vTNexhjXO7r7i_WYZVcWelU(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KsqiKS8JPndPDGT9yjqIdskLxmo(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T4_mdC2Yg75Pb_tgwDcwks6mRDk(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VUPRHk9z8_LCqANnrAotPFDkXrQ(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cz3QrMsEhI_nRyTbXjQGr9KXgtA(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dh8O9apc2Z9aA1VJulHTSrVG0NA(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fbD4mvwOI9E28FwzCDpqHC7-rKM(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gZAgBVp8ltP0-VQwiDo-s6QeAbI(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hH5a6hELkPiY3wocB0Noq6p5xJM(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lFrEVCJDqMbxEGxfCvZnNcIOwkI(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lt-Muqs32bdr1vvAr6jEo509i4g(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xPc5RlSzFa-vcD3KRY6vBuvQggY(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/views/player/SecondsView;->Companion:Lorg/schabi/newpipe/views/player/SecondsView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x2ee

    .line 19
    iput-wide v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    .line 38
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->hasAnimationsAnimatorDurationEnabled(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/schabi/newpipe/views/player/SecondsView;->animationsEnabled:Z

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 85
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 90
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 93
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 84
    invoke-direct {p1, p0, p2, v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Landroid/animation/ValueAnimator;

    .line 98
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 99
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 104
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 107
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 98
    invoke-direct {p1, p0, p2, v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Landroid/animation/ValueAnimator;

    .line 112
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 113
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 118
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 122
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 112
    invoke-direct {p1, p0, p2, v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Landroid/animation/ValueAnimator;

    .line 127
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 128
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 133
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 136
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 127
    invoke-direct {p1, p0, p2, v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Landroid/animation/ValueAnimator;

    .line 141
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 142
    new-instance p2, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 147
    new-instance v0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 150
    new-instance v1, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;)V

    .line 141
    invoke-direct {p1, p0, p2, v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private static final fifthAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 145
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 146
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fifthAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 1

    .line 148
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fifthAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 151
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 152
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final firstAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final firstAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final firstAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fourthAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 131
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fourthAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 1

    .line 134
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fourthAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 138
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final reset()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final secondAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final secondAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final secondAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 109
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showWithoutAnimation()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final thirdAnimator$lambda$0(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final thirdAnimator$lambda$1(Lorg/schabi/newpipe/views/player/SecondsView;F)Lkotlin/Unit;
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final thirdAnimator$lambda$2(Lorg/schabi/newpipe/views/player/SecondsView;)Lkotlin/Unit;
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getBinding()Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    return-object v0
.end method

.method public final getCycleDuration()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    return-wide v0
.end method

.method public final getSeconds()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->seconds:I

    return v0
.end method

.method public final setCycleDuration(J)V
    .locals 3

    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x5

    int-to-long v1, v1

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    iput-wide p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->cycleDuration:J

    return-void
.end method

.method public final setForwarding(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->triangleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public final setSeconds(I)V
    .locals 5

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->tvSeconds:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v2, 0x7f11000c

    .line 31
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iput p1, p0, Lorg/schabi/newpipe/views/player/SecondsView;->seconds:I

    return-void
.end method

.method public final startAnimation()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    .line 54
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->animationsEnabled:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->showWithoutAnimation()V

    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->reset()V

    return-void
.end method
