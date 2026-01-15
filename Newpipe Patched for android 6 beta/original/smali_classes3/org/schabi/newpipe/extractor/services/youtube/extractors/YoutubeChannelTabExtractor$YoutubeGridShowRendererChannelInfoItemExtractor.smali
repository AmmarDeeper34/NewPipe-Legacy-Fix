.class final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeBaseShowInfoItemExtractor;
.source "YoutubeChannelTabExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "YoutubeGridShowRendererChannelInfoItemExtractor"
.end annotation


# instance fields
.field private final channelName:Ljava/lang/String;

.field private final channelUrl:Ljava/lang/String;

.field private final verifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;


# direct methods
.method private constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 603
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeBaseShowInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 604
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->verifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    .line 605
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->channelName:Ljava/lang/String;

    .line 606
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->channelUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUploaderVerified()Z
    .locals 2

    .line 621
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$7;->$SwitchMap$org$schabi$newpipe$extractor$services$youtube$extractors$YoutubeChannelTabExtractor$VerifiedStatus:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$YoutubeGridShowRendererChannelInfoItemExtractor;->verifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 627
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader verification status"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
