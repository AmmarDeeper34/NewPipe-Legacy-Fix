.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda30;->f$0:Lorg/schabi/newpipe/player/Player;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda30;->f$0:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    return-void
.end method
