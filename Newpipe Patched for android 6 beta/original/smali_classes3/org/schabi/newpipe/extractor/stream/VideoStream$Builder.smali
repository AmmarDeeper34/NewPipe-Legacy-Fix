.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
.super Ljava/lang/Object;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private isVideoOnly:Ljava/lang/Boolean;

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-void
.end method


# virtual methods
.method public build()Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 11

    .line 243
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 250
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 255
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eqz v5, :cond_2

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 267
    iget-object v6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 274
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-object v4, v3

    iget-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    move-object v7, v4

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 275
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    iget-object v9, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/stream/VideoStream-IA;)V

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    return-object p0
.end method

.method public setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setItagItem(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    return-object p0
.end method
