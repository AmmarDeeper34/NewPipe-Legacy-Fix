.class public final Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;
.super Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.source "MainPlayerGestureListener.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isMoving:Z

.field private final playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;

    .line 229
    const-class v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->TAG:Ljava/lang/String;

    .line 230
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 1

    const-string v0, "playerUi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    return-void
.end method

.method private final onScrollBrightness(F)V
    .locals 11

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const-string v4, "brightnessProgressBar"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 115
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    float-to-int p1, p1

    .line 116
    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 119
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 120
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->setScreenBrightness(Landroid/content/Context;F)V

    .line 125
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->TAG:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll().brightnessControl, currentBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 136
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    const p1, 0x7f0800ed

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    const p1, 0x7f0800ee

    goto :goto_0

    :cond_3
    const p1, 0x7f0800ec

    .line 135
    :goto_0
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "brightnessRelativeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 149
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "volumeRelativeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onScrollVolume(F)V
    .locals 14

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "volumeProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getAudioReactor()Lorg/schabi/newpipe/player/helper/AudioReactor;

    move-result-object v1

    const-string v2, "getAudioReactor(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v3, "volumeRelativeLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->getVolume()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->getMaxVolume()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 73
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 81
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->getMaxVolume()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 82
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/helper/AudioReactor;->setVolume(I)V

    .line 83
    sget-boolean v1, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll().volumeControl, currentVolume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 90
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    const p1, 0x7f080163

    goto :goto_1

    :cond_2
    float-to-double v4, p1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double p1, v4, v6

    if-gez p1, :cond_3

    const p1, 0x7f080162

    goto :goto_1

    :cond_3
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpg-double p1, v4, v6

    if-gez p1, :cond_4

    const p1, 0x7f080161

    goto :goto_1

    :cond_4
    const p1, 0x7f080164

    .line 89
    :goto_1
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v4, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0xc8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 104
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "brightnessRelativeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getDisplayHalfPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1

    .line 224
    :cond_0
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1
.end method

.method public getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    div-double/2addr v2, v4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1

    .line 217
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const-string v0, "movingEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 168
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ThemeHelper;->getAndroidDimenPx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 174
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/ThemeHelper;->getAndroidDimenPx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v1, v1

    const/4 v4, 0x1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_c

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 183
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 185
    :goto_2
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    if-nez v1, :cond_5

    if-nez p2, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_6

    .line 186
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p2

    const/16 p3, 0x80

    if-ne p2, p3, :cond_7

    :cond_6
    return v0

    .line 191
    :cond_7
    iput-boolean v4, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 194
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->getDisplayHalfPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    const p3, 0x7f120068

    const v0, 0x7f1204cb

    if-ne p1, p2, :cond_9

    .line 195
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getActionForRightGestureSide(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 197
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollVolume(F)V

    goto :goto_3

    .line 198
    :cond_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 199
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollBrightness(F)V

    goto :goto_3

    .line 202
    :cond_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getActionForLeftGestureSide(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 204
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollVolume(F)V

    goto :goto_3

    .line 205
    :cond_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 206
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollBrightness(F)V

    :cond_b
    :goto_3
    return v4

    :cond_c
    :goto_4
    return v0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 11

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 154
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "volumeRelativeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const-wide/16 v6, 0xc8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "brightnessRelativeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const-wide/16 v6, 0xc8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed() called with: e = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 59
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onSingleTap()V

    :cond_2
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    if-eqz v0, :cond_0

    .line 37
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 38
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    return v2

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return v1

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    return v2
.end method
