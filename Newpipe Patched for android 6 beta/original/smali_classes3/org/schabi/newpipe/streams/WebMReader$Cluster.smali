.class public Lorg/schabi/newpipe/streams/WebMReader$Cluster;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

.field ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field final synthetic this$0:Lorg/schabi/newpipe/streams/WebMReader;

.field public timecode:J


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 478
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 479
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 483
    iput-object p2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    return-void
.end method


# virtual methods
.method public getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 7

    .line 491
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->insideClusterBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    if-eqz v0, :cond_1

    .line 496
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v2, v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 497
    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 498
    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    if-eqz v0, :cond_2

    .line 500
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->-$$Nest$fgetref(Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 503
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->insideClusterBounds()Z

    move-result v0

    if-nez v0, :cond_6

    .line 504
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    const/16 v3, 0x23

    const/16 v4, 0x20

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$muntilElement(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 509
    :cond_3
    iget v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    if-ne v2, v4, :cond_4

    .line 510
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 511
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    const/16 v3, 0x21

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$muntilElement(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_4

    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    invoke-static {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 515
    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Lorg/schabi/newpipe/streams/WebMReader$Element;

    goto :goto_0

    .line 520
    :cond_4
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v2, v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mreadSimpleBlock(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 521
    iget-wide v2, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->trackNumber:J

    iget-object v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v4}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgettracks(Lorg/schabi/newpipe/streams/WebMReader;)[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v5}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetselectedTrack(Lorg/schabi/newpipe/streams/WebMReader;)I

    move-result v5

    aget-object v4, v4, v5

    iget-wide v4, v4, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 522
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v1}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetstream(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/DataReader;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    iget v2, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/streams/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    .line 525
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    iget-short v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    int-to-long v1, v1

    iget-wide v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 527
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v3}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Lorg/schabi/newpipe/streams/WebMReader$Info;

    iget-wide v3, v3, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    mul-long v1, v1, v3

    iput-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 529
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    return-object v0

    .line 532
    :cond_5
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v2, v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method

.method insideClusterBounds()Z
    .locals 7

    .line 487
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetstream(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/DataReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->position()J

    move-result-wide v0

    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    iget-wide v3, v2, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    iget-wide v5, v2, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    add-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
