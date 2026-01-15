.class public final synthetic Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/PlayerService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/PlayerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/PlayerService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
