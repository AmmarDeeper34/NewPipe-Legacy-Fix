.class Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->animatePopupOverlayAndFinishService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private end()V
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->-$$Nest$fgetwindowManager(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    invoke-static {v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->-$$Nest$fgetcloseOverlayBinding(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->-$$Nest$fputcloseOverlayBinding(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;Lorg/schabi/newpipe/databinding/PlayerPopupCloseOverlayBinding;)V

    .line 388
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->end()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi$1;->end()V

    return-void
.end method
