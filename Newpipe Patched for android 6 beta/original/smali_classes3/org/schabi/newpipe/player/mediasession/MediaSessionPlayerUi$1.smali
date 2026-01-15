.class Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;
.super Lcom/google/android/exoplayer2/ForwardingPlayer;
.source "MediaSessionPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->getForwardingPlayer()Lcom/google/android/exoplayer2/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;


# direct methods
.method public static synthetic $r8$lambda$Ery5F7KMFlbP7sSYRlYusNZIjCE(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 141
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ForwardingPlayer;-><init>(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->access$200(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->access$000(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->play()V

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->access$100(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
