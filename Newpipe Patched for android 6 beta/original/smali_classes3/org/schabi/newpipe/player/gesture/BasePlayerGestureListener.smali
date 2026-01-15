.class public abstract Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BasePlayerGestureListener.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

.field private static final DEBUG:Z


# instance fields
.field private final binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

.field private doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

.field private doubleTapDelay:J

.field private final doubleTapHandler:Landroid/os/Handler;

.field private isDoubleTapping:Z

.field private final player:Lorg/schabi/newpipe/player/Player;

.field private final playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

    .line 183
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 2

    const-string v0, "playerUi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 24
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    const-string v1, "getPlayer(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p1

    const-string v0, "getBinding(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    const-wide/16 v0, 0x226

    .line 134
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapDelay:J

    .line 135
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 20
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getDoubleTapControls$p(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;)Lorg/schabi/newpipe/player/gesture/DoubleTapListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    return-object p0
.end method

.method public static final synthetic access$setDoubleTapping$p(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    return-void
.end method

.method private final isDoubleTapEnabled()Z
    .locals 5

    .line 125
    iget-wide v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final onDoubleTap(Landroid/view/MotionEvent;Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V
    .locals 3

    .line 36
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayerType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap called with playerType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], portion = ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "BasePlayerGestListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 46
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    if-eq p2, v0, :cond_4

    sget-object v0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    if-ne p2, p1, :cond_3

    .line 49
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    :cond_3
    return-void

    .line 47
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->startMultiDoubleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private final startMultiDoubleTap(Landroid/view/MotionEvent;)V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    if-nez v0, :cond_1

    .line 139
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMultiDoubleTap called with e = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlayerGestListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->keepInDoubleTapMode()V

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/player/gesture/DoubleTapListener;->onDoubleTapStarted(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final doubleTapControls(Lorg/schabi/newpipe/player/gesture/DoubleTapListener;)Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    return-object p0
.end method

.method public final endMultiDoubleTap()V
    .locals 2

    .line 164
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "BasePlayerGestListener"

    const-string v1, "endMultiDoubleTap called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    const-string v1, "doubleTap"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/schabi/newpipe/player/gesture/DoubleTapListener;->onDoubleTapFinished()V

    :cond_1
    return-void
.end method

.method protected final getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    return-object v0
.end method

.method public abstract getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
.end method

.method protected final getPlayer()Lorg/schabi/newpipe/player/Player;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    return-object v0
.end method

.method public final isDoubleTapping()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    return v0
.end method

.method public final keepInDoubleTapMode()V
    .locals 5

    .line 148
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "BasePlayerGestListener"

    const-string v1, "keepInDoubleTapMode called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    const-string v1, "doubleTap"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    .line 38
    new-instance v2, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;-><init>(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;)V

    const-wide/16 v3, 0x226

    .line 42
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTap called with e = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlayerGestListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onDoubleTap(Landroid/view/MotionEvent;Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-boolean v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDown called with e = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlayerGestListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/player/gesture/DoubleTapListener;->onDoubleTapProgressDown(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V

    :cond_1
    return v1

    .line 97
    :cond_2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 0
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-boolean p1, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayerType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollEnd called with playerType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    const-string v0, "BasePlayerGestListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    :cond_1
    return-void
.end method

.method protected final onSingleTap()V
    .locals 5

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
