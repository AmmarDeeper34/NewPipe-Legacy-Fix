.class public final Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;-><init>(Lorg/schabi/newpipe/views/player/SecondsView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $end$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $start$inlined:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;->$end$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;->$start$inlined:Lkotlin/jvm/functions/Function0;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;->$end$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator$special$$inlined$addListener$default$1;->$start$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
