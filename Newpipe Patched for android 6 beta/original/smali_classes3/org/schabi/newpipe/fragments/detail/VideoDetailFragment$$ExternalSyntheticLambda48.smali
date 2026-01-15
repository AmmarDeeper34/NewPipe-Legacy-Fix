.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda48;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda48;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->$r8$lambda$ysaX1ZYn81qo3EeHvqHLNHLNen8(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method
