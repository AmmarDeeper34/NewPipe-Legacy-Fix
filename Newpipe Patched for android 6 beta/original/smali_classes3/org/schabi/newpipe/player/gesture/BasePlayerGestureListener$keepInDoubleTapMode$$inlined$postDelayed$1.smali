.class public final Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "Handler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->keepInDoubleTapMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;->this$0:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 39
    invoke-static {}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "BasePlayerGestListener"

    const-string v1, "doubleTapRunnable called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;->this$0:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->access$setDoubleTapping$p(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;Z)V

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$keepInDoubleTapMode$$inlined$postDelayed$1;->this$0:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    invoke-static {v0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->access$getDoubleTapControls$p(Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;)Lorg/schabi/newpipe/player/gesture/DoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/schabi/newpipe/player/gesture/DoubleTapListener;->onDoubleTapFinished()V

    :cond_1
    return-void
.end method
