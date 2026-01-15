.class public final synthetic Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    iput-object p2, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    iput-object p3, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    iget-object v1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    iget-object v2, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/QueueItemMenuUtil;->$r8$lambda$xorQVTQAqV1II6rSJIAR7VYlfmc(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
