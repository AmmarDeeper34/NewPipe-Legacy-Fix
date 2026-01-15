.class Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;
.source "YoutubeChannelTabExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->commitPlaylistLockup(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

.field final synthetic val$channelName:Ljava/lang/String;

.field final synthetic val$channelUrl:Ljava/lang/String;

.field final synthetic val$channelVerifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelName:Ljava/lang/String;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelUrl:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelVerifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelName:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUploaderVerified()Z
    .locals 2

    .line 424
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$7;->$SwitchMap$org$schabi$newpipe$extractor$services$youtube$extractors$YoutubeChannelTabExtractor$VerifiedStatus:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$4;->val$channelVerifiedStatus:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 430
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistLockupInfoItemExtractor;->isUploaderVerified()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method
