.class Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiChannelImageViewModel"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$M8WGJ-OcDD4_pii3fvBCCPYNM-w(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 460
    const-string v0, "listItemViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 467
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "avatars"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "rendererContext"

    .line 448
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commandContext"

    .line 449
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "onTap"

    .line 450
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    .line 451
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "showDialogCommand"

    .line 452
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "panelLoadingStrategy"

    .line 453
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "inlineContent"

    .line 454
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "dialogViewModel"

    .line 455
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "customContent"

    .line 456
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "listViewModel"

    .line 457
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "listItems"

    .line 458
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 460
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 462
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method
