.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    iget-boolean v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda9;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$b5pV3WlcumFnFOn39AudY5UIaRc(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method
