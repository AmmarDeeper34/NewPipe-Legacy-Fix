.class public Lorg/schabi/newpipe/streams/WebMReader$Segment;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Segment"
.end annotation


# instance fields
.field private currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field firstClusterInSegment:Z

.field public info:Lorg/schabi/newpipe/streams/WebMReader$Info;

.field private final ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field final synthetic this$0:Lorg/schabi/newpipe/streams/WebMReader;

.field tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;


# direct methods
.method static bridge synthetic -$$Nest$fgetref(Lorg/schabi/newpipe/streams/WebMReader$Segment;)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentCluster(Lorg/schabi/newpipe/streams/WebMReader$Segment;Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p2, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    return-void
.end method


# virtual methods
.method public getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    .locals 4

    .line 436
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetdone(Lorg/schabi/newpipe/streams/WebMReader;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 439
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 441
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0

    .line 443
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    invoke-static {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mensure(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 445
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    const v3, 0xf43b675

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$muntilElement(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 450
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v1}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v1

    iput-object v0, v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 452
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Lorg/schabi/newpipe/streams/WebMReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$fgetsegment(Lorg/schabi/newpipe/streams/WebMReader;)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Lorg/schabi/newpipe/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0
.end method
