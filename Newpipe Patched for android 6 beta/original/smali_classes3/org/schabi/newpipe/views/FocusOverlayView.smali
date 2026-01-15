.class public final Lorg/schabi/newpipe/views/FocusOverlayView;
.super Landroid/graphics/drawable/Drawable;
.source "FocusOverlayView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# instance fields
.field private final animator:Landroid/os/Handler;

.field private final focusRect:Landroid/graphics/Rect;

.field private focused:Ljava/lang/ref/WeakReference;

.field private isInTouchMode:Z

.field private final rectPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$monKey(Lorg/schabi/newpipe/views/FocusOverlayView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/views/FocusOverlayView;->onKey(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRect(Lorg/schabi/newpipe/views/FocusOverlayView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->rectPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Lorg/schabi/newpipe/views/FocusOverlayView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;-><init>(Lorg/schabi/newpipe/views/FocusOverlayView;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    .line 71
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06035e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static clearFocusObstacles(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setKeyboardNavigationCluster(Z)V

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 286
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 288
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 289
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lorg/schabi/newpipe/views/FocusOverlayView;->clearFocusObstacles(Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static fixFocusHierarchy(Landroid/view/View;)V
    .locals 2

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 270
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->clearFocusObstacles(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 252
    iget-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static setupFocusObserver(Landroid/app/Activity;)V
    .locals 4

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 208
    new-instance v2, Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/views/FocusOverlayView;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-static {v1, v2}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupOverlay(Landroid/view/Window;Lorg/schabi/newpipe/views/FocusOverlayView;)V

    return-void
.end method

.method public static setupFocusObserver(Landroid/app/Dialog;)V
    .locals 4

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 195
    new-instance v2, Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/views/FocusOverlayView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    invoke-static {v1, v2}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupOverlay(Landroid/view/Window;Lorg/schabi/newpipe/views/FocusOverlayView;)V

    return-void
.end method

.method private static setupOverlay(Landroid/view/Window;Lorg/schabi/newpipe/views/FocusOverlayView;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-static {v0}, Lorg/schabi/newpipe/views/FocusOverlayView;->fixFocusHierarchy(Landroid/view/View;)V

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 221
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 222
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 223
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 224
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 225
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/views/FocusOverlayView;->setCurrentFocus(Landroid/view/View;)V

    .line 235
    new-instance v0, Lorg/schabi/newpipe/views/FocusOverlayView$2;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/views/FocusOverlayView$2;-><init>(Landroid/view/Window$Callback;Lorg/schabi/newpipe/views/FocusOverlayView;)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method private shouldClearFocusRect(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private updateRect()V
    .locals 6

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focused:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 92
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 93
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 94
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 95
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/views/FocusOverlayView;->isShown(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    :cond_1
    iget-object v5, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v5}, Lorg/schabi/newpipe/views/FocusOverlayView;->shouldClearFocusRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v5, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ne v3, v2, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v2, :cond_4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 107
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->isInTouchMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focusRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method public onDraw()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 79
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focused:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->focused:Ljava/lang/ref/WeakReference;

    .line 84
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 86
    iget-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 130
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .line 122
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->animator:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->isInTouchMode:Z

    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setCurrentFocus(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView;->isInTouchMode:Z

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/views/FocusOverlayView;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
