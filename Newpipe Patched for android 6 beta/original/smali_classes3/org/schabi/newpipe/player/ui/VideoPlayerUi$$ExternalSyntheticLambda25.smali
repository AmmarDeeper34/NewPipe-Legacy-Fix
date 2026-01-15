.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onResizeClicked()V

    return-void
.end method
