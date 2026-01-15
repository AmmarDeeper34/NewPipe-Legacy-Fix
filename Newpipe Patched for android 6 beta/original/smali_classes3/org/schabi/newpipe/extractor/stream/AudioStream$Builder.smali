.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
.super Ljava/lang/Object;
.source "AudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/AudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field private averageBitrate:I

.field private content:Ljava/lang/String;

.field private deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private manifestUrl:Ljava/lang/String;

.field private mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioLocale(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/util/Locale;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackId(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackName(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaverageBitrate(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontent(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeliveryMethod(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUrl(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->isUrl:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanifestUrl(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaFormat(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return-void
.end method


# virtual methods
.method public build()Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->validateBuild()V

    .line 294
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)V

    return-object v0
.end method

.method public setAudioLocale(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setAudioTrackId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioTrackName(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public setAverageBitrate(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 194
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    return-object p0
.end method

.method public setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    .line 125
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->isUrl:Z

    return-object p0
.end method

.method public setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setItagItem(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method validateBuild()V
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
