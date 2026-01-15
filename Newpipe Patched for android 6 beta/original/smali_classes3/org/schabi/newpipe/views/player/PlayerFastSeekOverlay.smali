.class public final Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PlayerFastSeekOverlay.kt"

# interfaces
.implements Lorg/schabi/newpipe/player/gesture/DoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;,
        Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

.field private static final DEBUG:Z


# instance fields
.field private circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

.field private initTap:Z

.field private performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

.field private rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

.field private seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

.field private wasForwarding:Z


# direct methods
.method public static synthetic $r8$lambda$QhD7wyVPqfEpHP-_xdBnZPcG8wk(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->_init_$lambda$0(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFsMp0AD_surSrrSNnX9jzvgCXI()I
    .locals 1

    .line 0
    invoke-static {}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier$lambda$1$0()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$vsxpA4Q2mgflK-3YlPjN3gPhd0I()I
    .locals 1

    .line 0
    invoke-static {}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier$lambda$0()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->Companion:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$Companion;

    .line 141
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00db

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a034e

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/schabi/newpipe/views/player/SecondsView;

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    const p1, 0x7f0a00b1

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/schabi/newpipe/views/player/CircleClipTapView;

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    const p1, 0x7f0a0331

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    new-instance p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 44
    new-instance p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final _init_$lambda$0(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updateArcSize(Landroid/view/View;)V

    return-void
.end method

.method private final changeConstraints(Z)V
    .locals 5

    .line 110
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 112
    iget-object v1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 113
    iget-object v1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    :goto_0
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 115
    iget-object v1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x6

    :goto_2
    const/4 p1, 0x0

    .line 114
    invoke-virtual {v0, v1, v4, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 118
    iget-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/views/player/SecondsView;->startAnimation()V

    .line 119
    iget-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private static final seekSecondsSupplier$lambda$0()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private static final seekSecondsSupplier$lambda$1$0()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onDoubleTapFinished()V
    .locals 3

    .line 100
    sget-boolean v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTapFinished called with initTap = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFastSeekOverlay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;->onDoubleTapEnd()V

    :cond_1
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    return-void
.end method

.method public onDoubleTapProgressDown(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V
    .locals 4

    const-string v0, "portion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;->getFastSeekDirection(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->getDirectionAsBoolean()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 67
    sget-boolean v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->wasForwarding:Z

    .line 73
    iget-boolean v1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDoubleTapProgressDown called with shouldForward = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], wasForwarding = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], initTap = ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "PlayerFastSeekOverlay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->wasForwarding:Z

    if-eq v0, p1, :cond_2

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView;->setSeconds(I)V

    .line 82
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->changeConstraints(Z)V

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePosition(Z)V

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/views/player/SecondsView;->setForwarding(Z)V

    .line 86
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->wasForwarding:Z

    .line 88
    iget-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 93
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;->onDoubleTap()V

    .line 95
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {v0}, Lorg/schabi/newpipe/views/player/SecondsView;->getSeconds()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/SecondsView;->setSeconds(I)V

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;->seek(Z)V

    :cond_4
    return-void
.end method

.method public onDoubleTapStarted(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)V
    .locals 2

    const-string v0, "portion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTapStarted called with portion = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerFastSeekOverlay"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 60
    iget-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    return-void
.end method

.method public final performListener(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;

    return-object p0
.end method

.method public final seekSecondsSupplier(Lkotlin/jvm/functions/Function0;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;
    .locals 0

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$$ExternalSyntheticLambda2;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method
