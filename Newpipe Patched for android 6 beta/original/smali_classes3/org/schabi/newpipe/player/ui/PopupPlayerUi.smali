.class public final Lorg/schabi/newpipe/player/ui/PopupPlayerUi;
.super Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.source "PopupPlayerUi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupPlayerUi"


# instance fields
.field private closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

.field private isPopupClosing:Z

.field private popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private screenHeight:I

.field private screenWidth:I

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetcloseOverlayBinding(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)Landroid/view/WindowManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcloseOverlayBinding(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 94
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private animatePopupOverlayAndFinishService()V
    .locals 3

    .line 365
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 367
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 369
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 370
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    .line 372
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;-><init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private anyPopupViewIsNull()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 571
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static buildCloseOverlayLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 532
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 534
    invoke-static {}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParamType()I

    move-result v3

    const v4, 0x20018

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    .line 541
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_0
    const/16 v1, 0x33

    .line 544
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 545
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method

.method private changePopupWindowFlags(I)V
    .locals 3

    .line 400
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePopupWindowFlags() called with: flags = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->anyPopupViewIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 406
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private distanceFromCloseButton(Landroid/view/MotionEvent;)I
    .locals 8

    .line 448
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 450
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 451
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 453
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 454
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr v3, p1

    int-to-float p1, v0

    sub-float/2addr p1, v2

    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 456
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-float p1, v1

    sub-float/2addr p1, v3

    float-to-double v0, p1

    .line 457
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v4, v0

    .line 456
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getClosingRadius()F
    .locals 2

    .line 461
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    return v0
.end method

.method private initPopup()V
    .locals 3

    .line 111
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "initPopup() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupHasParent()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 122
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->retrievePopupLayoutParamsFromPrefs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 123
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0, v0}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    .line 125
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 130
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupVideoSurfaceIfNeeded()V

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    return-void
.end method

.method private initPopupCloseOverlay()V
    .locals 3

    .line 139
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "initPopupCloseOverlay() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    if-eqz v0, :cond_1

    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    .line 150
    invoke-static {}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->buildCloseOverlayLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->closeButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private popupHasParent()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 566
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static popupLayoutParamType()I
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/16 v0, 0x7d2

    return v0

    :cond_0
    const/16 v0, 0x7f6

    return v0
.end method


# virtual methods
.method buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 1

    .line 106
    new-instance v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V

    return-object v0
.end method

.method protected calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
    .locals 0

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public changePopupSize(I)V
    .locals 5

    .line 288
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    const-string v1, "]"

    if-eqz v0, :cond_0

    .line 289
    sget-object v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changePopupSize() called with: width = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->anyPopupViewIsNull()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 296
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07036a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 297
    iget v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    invoke-static {p1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    int-to-float p1, p1

    .line 298
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimumVideoHeight(F)F

    move-result p1

    float-to-int p1, p1

    if-eqz v0, :cond_2

    .line 300
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePopupSize() updated values:  width = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], height = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 305
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 306
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v0, p1, p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    .line 307
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public checkPopupPositionBounds()V
    .locals 5

    .line 246
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPopupPositionBounds() called with: screenWidth = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], screenHeight = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 255
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v4

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public closePopup()V
    .locals 3

    .line 325
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePopup() called, isPopupClosing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 333
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 334
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 336
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->animatePopupOverlayAndFinishService()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 201
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->destroy()V

    .line 202
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->removePopupFromView()V

    return-void
.end method

.method public getCloseOverlayBinding()Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;
    .locals 1

    .line 575
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    return-object v0
.end method

.method public getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 587
    iget v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 591
    iget v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public isInsideClosingRadius(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 467
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->distanceFromCloseButton(Landroid/view/MotionEvent;)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getClosingRadius()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPopupClosing()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 215
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 217
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    .line 218
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->useVideoSource(Z)V

    return-void

    .line 223
    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 225
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->useVideoSource(Z)V

    :cond_3
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 424
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onCompleted()V

    const v0, 0x20008

    .line 425
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    return-void
.end method

.method public onPaused()V
    .locals 1

    .line 418
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPaused()V

    const v0, 0x20008

    .line 419
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    return-void
.end method

.method protected onPlaybackSpeedClicked()V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    return-void
.end method

.method public onPlaying()V
    .locals 1

    .line 412
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlaying()V

    const v0, 0x20088

    .line 413
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    return-void
.end method

.method public removePopupFromView()V
    .locals 3

    .line 346
    :try_start_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupHasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    sget-object v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove popup from window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 360
    sget-object v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove popup overlay from window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public removeViewFromParent()V
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public retrievePopupLayoutParamsFromPrefs()Landroid/view/WindowManager$LayoutParams;
    .locals 11

    .line 483
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12037e

    .line 487
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 486
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 488
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070369

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v2, :cond_0

    const v4, 0x7f120381

    .line 490
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 492
    :cond_0
    invoke-static {v3}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimumVideoHeight(F)F

    move-result v4

    .line 494
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    float-to-int v6, v3

    float-to-int v7, v4

    .line 496
    invoke-static {}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParamType()I

    move-result v8

    const v9, 0x20008

    const/4 v10, -0x3

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v6, 0x33

    .line 499
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, 0x10

    .line 500
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 502
    iget v6, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-float/2addr v3, v7

    sub-float/2addr v6, v3

    float-to-int v3, v6

    .line 503
    iget v6, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    div-float/2addr v4, v7

    sub-float/2addr v6, v4

    float-to-int v4, v6

    if-eqz v2, :cond_1

    const v6, 0x7f120382

    .line 505
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_1
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v2, :cond_2

    const v2, 0x7f120383

    .line 507
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_2
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v5
.end method

.method public savePopupPositionAndSizeToPrefs()V
    .locals 4

    .line 513
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->getPopupLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f120381

    .line 516
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f120382

    .line 518
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f120383

    .line 520
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setupAfterIntent()V
    .locals 0

    .line 99
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupAfterIntent()V

    .line 100
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->initPopup()V

    .line 101
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->initPopupCloseOverlay()V

    return-void
.end method

.method protected setupElementsSize(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f070361

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070360

    .line 189
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1, v1, v0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsSize(IIII)V

    return-void
.end method

.method protected setupElementsVisibility()V
    .locals 4

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v3, 0x7f0a024c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->primaryControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 175
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomControls:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 179
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x30

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 180
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsVisibility()V

    return-void
.end method

.method protected setupSubtitleView(F)V
    .locals 2

    .line 430
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const v1, 0x3d5a511a    # 0.0533f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public updateScreenSize()V
    .locals 5

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 267
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 266
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 268
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 269
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 272
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 273
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 274
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 276
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenSize() called: screenWidth = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], screenHeight = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
