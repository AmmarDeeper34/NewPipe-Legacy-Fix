.class Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleChannelImageViewModel"
.end annotation


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 436
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method
