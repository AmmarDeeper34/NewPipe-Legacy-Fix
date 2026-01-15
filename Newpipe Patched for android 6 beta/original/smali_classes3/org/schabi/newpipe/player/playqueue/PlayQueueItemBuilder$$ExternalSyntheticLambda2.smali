.class public final synthetic Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->$r8$lambda$BjmpgLI7sCwc4h4Wi_CrN28TUQU(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
