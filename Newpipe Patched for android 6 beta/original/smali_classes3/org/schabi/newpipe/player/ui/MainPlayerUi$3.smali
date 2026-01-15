.class Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;
.super Ljava/lang/Object;
.source "MainPlayerUi.java"

# interfaces
.implements Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getStreamSegmentListener()Lorg/schabi/newpipe/info_list/StreamSegmentAdapter$StreamSegmentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lorg/schabi/newpipe/info_list/StreamSegmentItem;I)V
    .locals 4

    .line 723
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->-$$Nest$fgetsegmentAdapter(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V

    .line 724
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 725
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    return-void
.end method

.method public onItemLongClick(Lorg/schabi/newpipe/info_list/StreamSegmentItem;I)V
    .locals 2

    .line 730
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 732
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getServiceId()I

    move-result p1

    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 738
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&t="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 740
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 740
    invoke-static {v0, v1, p2, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
