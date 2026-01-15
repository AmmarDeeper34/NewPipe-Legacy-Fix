.class Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;
.super Ljava/lang/Object;
.source "MediaSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/playback/MediaSourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemsToLoad"
.end annotation


# instance fields
.field private final center:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field private final neighbors:Ljava/util/Collection;


# direct methods
.method static bridge synthetic -$$Nest$fgetcenter(Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->center:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneighbors(Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;)Ljava/util/Collection;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->neighbors:Ljava/util/Collection;

    return-object p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/Collection;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->center:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 605
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$ItemsToLoad;->neighbors:Ljava/util/Collection;

    return-void
.end method
