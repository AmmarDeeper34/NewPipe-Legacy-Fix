.class final Lorg/schabi/newpipe/ktx/HideAndExecOnEndListener;
.super Lorg/schabi/newpipe/ktx/ExecOnEndListener;
.source "View.kt"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/ktx/ExecOnEndListener;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/schabi/newpipe/ktx/HideAndExecOnEndListener;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/schabi/newpipe/ktx/HideAndExecOnEndListener;->view:Landroid/view/View;

    const/16 v1, 0x8

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-super {p0, p1}, Lorg/schabi/newpipe/ktx/ExecOnEndListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
