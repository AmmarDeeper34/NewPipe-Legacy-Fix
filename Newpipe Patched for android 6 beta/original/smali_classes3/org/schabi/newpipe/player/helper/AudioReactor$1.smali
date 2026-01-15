.class Lorg/schabi/newpipe/player/helper/AudioReactor$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioReactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/helper/AudioReactor;->animateAudio(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

.field final synthetic val$from:F

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/helper/AudioReactor;FF)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->this$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    iput p2, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->val$from:F

    iput p3, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->this$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/helper/AudioReactor;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iget v0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->val$to:F

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->this$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/helper/AudioReactor;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iget v0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->val$to:F

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->this$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/AudioReactor;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/helper/AudioReactor;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iget v0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$1;->val$from:F

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    return-void
.end method
