.class public Lorg/schabi/newpipe/extractor/stream/StreamSegment;
.super Ljava/lang/Object;
.source "StreamSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelName:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private startTimeSeconds:I

.field private title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    .line 38
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->startTimeSeconds:I

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeSeconds()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->startTimeSeconds:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->url:Ljava/lang/String;

    return-void
.end method
