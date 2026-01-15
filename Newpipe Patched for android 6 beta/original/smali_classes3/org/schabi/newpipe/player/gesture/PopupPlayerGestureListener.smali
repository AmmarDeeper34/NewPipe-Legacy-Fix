.class public final Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;
.super Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.source "PopupPlayerGestureListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private initFirstPointerX:F

.field private initFirstPointerY:F

.field private initPointerDistance:D

.field private initSecPointerX:F

.field private initSecPointerY:F

.field private initialPopupX:I

.field private initialPopupY:I

.field private isMoving:Z

.field private isResizing:Z

.field private final playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;

    .line 283
    const-class v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    .line 284
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V
    .locals 2

    const-string v0, "playerUi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    .line 24
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 28
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    const/high16 p1, -0x40800000    # -1.0f

    .line 29
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 30
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 31
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 32
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    return-void
.end method

.method private final handleMultiDrag(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 109
    iget-wide v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    return v4

    .line 115
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 116
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-double v2, v2

    iget v5, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    float-to-double v5, v5

    sub-double/2addr v2, v5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-double v5, v3

    iget v3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    float-to-double v7, v3

    sub-double/2addr v5, v7

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-double v7, v3

    iget v3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    float-to-double v9, v3

    sub-double/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    .line 124
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 125
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    int-to-double v5, v3

    cmpg-double v3, v0, v5

    if-gtz v3, :cond_2

    return v4

    .line 131
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-double v5, v3

    sub-double/2addr v0, v5

    .line 132
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-double v5, p1

    sub-double/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 135
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v3, p1

    mul-double v5, v3, v0

    .line 137
    iget-wide v7, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    div-double/2addr v5, v7

    .line 138
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 139
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-double/2addr v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v7

    double-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 141
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 142
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 143
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    return v2
.end method

.method private final onPopupResizingEnd()V
    .locals 2

    .line 158
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    const-string v1, "onPopupResizingEnd called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final onPopupResizingStart()V
    .locals 11

    .line 148
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    const-string v1, "onPopupResizingStart called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 153
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    const-string v0, "fastSeekOverlay"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v0, "currentDisplaySeek"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/16 v9, 0x10

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v0, p1

    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v2, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    div-double/2addr v2, v4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1

    .line 271
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    return-object p1
.end method

.method public onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 199
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 200
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 201
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    .line 202
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->popupPlayerSelected()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 176
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 177
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 178
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    const v2, 0x451c4000    # 2500.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 180
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    float-to-int p3, p3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    cmpl-float p1, v0, v2

    if-lez p1, :cond_1

    .line 183
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    float-to-int p3, p4

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 185
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 186
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p3

    iget-object p4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 165
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 166
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getScreenWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const-string v0, "movingEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 230
    :cond_0
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    if-eqz v1, :cond_1

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 234
    :cond_1
    iget-boolean p3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    if-nez p3, :cond_2

    .line 235
    iget-object p3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p3}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getCloseOverlayBinding()Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    move-result-object p3

    iget-object v1, p3, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string p3, "closeButton"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_2
    const/4 p3, 0x1

    .line 238
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p4, v1

    .line 241
    iget v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    .line 243
    iget-object p4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getScreenWidth()I

    move-result p4

    iget-object v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p4, v2

    int-to-float p4, p4

    const/4 v2, 0x0

    .line 244
    invoke-static {p4, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p4

    .line 241
    invoke-static {v1, v2, p4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v1, p1

    .line 247
    iget p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    .line 249
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getScreenHeight()I

    move-result v1

    iget-object v3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v3}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 250
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 247
    invoke-static {p1, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 253
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    float-to-int p4, p4

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iget-object p4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    float-to-int p1, p1

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 257
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isInsideClosingRadius(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 259
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    const-string p2, "closingOverlay"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eq v0, v2, :cond_4

    .line 260
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 263
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return p3
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isInsideClosingRadius(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closePopup()V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getCloseOverlayBinding()Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    move-result-object p1

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string p1, "closeButton"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    const-string p1, "closingOverlay"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v0 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed() called with: e = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 216
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onSingleTap()V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    if-nez v0, :cond_1

    .line 37
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    const-string v4, "onTouch() 2 finger pointer detected, enabling resizing."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->onPopupResizingStart()V

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 46
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 49
    iget v4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    float-to-double v4, v4

    iget v6, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    .line 50
    iget v6, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    float-to-double v6, v6

    float-to-double v8, v0

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 48
    iput-wide v4, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 53
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v4, "]"

    const-string v5, ", "

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    if-eqz v0, :cond_3

    .line 56
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch() ACTION_MOVE > v = ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], e1.getRaw =["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->handleMultiDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 65
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 66
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 68
    sget-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->TAG:Ljava/lang/String;

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch() ACTION_UP > v = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], e1.getRaw = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    if-eqz v0, :cond_5

    .line 74
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 75
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 77
    :cond_5
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    if-eqz p2, :cond_6

    .line 78
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 80
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    const/high16 p2, -0x40800000    # -1.0f

    .line 81
    iput p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 82
    iput p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 83
    iput p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 84
    iput p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 86
    invoke-direct {p0}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->onPopupResizingEnd()V

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 89
    :cond_6
    iget-object p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing()Z

    move-result p2

    if-nez p2, :cond_7

    .line 90
    iget-object p2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->savePopupPositionAndSizeToPrefs()V

    .line 94
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v2
.end method
