.class final Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "SecondsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/player/SecondsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomValueAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/views/player/SecondsView;


# direct methods
.method public static synthetic $r8$lambda$n5G8opgp2uf2TnPPQJSUciysGz4(Lkotlin/jvm/functions/Function1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;->_init_$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;->this$0:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 162
    invoke-virtual {p1}, Lorg/schabi/newpipe/views/player/SecondsView;->getCycleDuration()J

    move-result-wide v0

    const/4 p1, 0x5

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p1, 0x2

    .line 163
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 165
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    new-instance p1, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;

    invoke-direct {p1, p4, p2}, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final _init_$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
