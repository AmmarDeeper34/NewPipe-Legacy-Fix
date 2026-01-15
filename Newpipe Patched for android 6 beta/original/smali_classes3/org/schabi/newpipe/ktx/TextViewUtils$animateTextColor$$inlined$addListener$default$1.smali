.class public final Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/ktx/TextViewUtils;->animateTextColor(Landroid/widget/TextView;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $colorEnd$inlined:I

.field final synthetic $colorEnd$inlined$1:I

.field final synthetic $this_animateTextColor$inlined:Landroid/widget/TextView;

.field final synthetic $this_animateTextColor$inlined$1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined:Landroid/widget/TextView;

    iput p2, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined:I

    iput-object p3, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined$1:Landroid/widget/TextView;

    iput p4, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined$1:I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined$1:Landroid/widget/TextView;

    iget v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined$1:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined:Landroid/widget/TextView;

    iget v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
