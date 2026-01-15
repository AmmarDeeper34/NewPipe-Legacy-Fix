.class public final Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "View.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $targetRotation:I

.field final synthetic $this_animateRotation:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    iput p2, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    .line 139
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    iget v0, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    iget v0, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
