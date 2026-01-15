.class Lorg/schabi/newpipe/ktx/ExecOnEndListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "View.kt"


# instance fields
.field private final execOnEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/ktx/ExecOnEndListener;->execOnEnd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lorg/schabi/newpipe/ktx/ExecOnEndListener;->execOnEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
