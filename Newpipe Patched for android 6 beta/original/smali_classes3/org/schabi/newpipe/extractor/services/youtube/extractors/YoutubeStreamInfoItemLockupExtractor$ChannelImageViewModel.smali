.class abstract Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.super Ljava/lang/Object;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ChannelImageViewModel"
.end annotation


# instance fields
.field protected viewModel:Lcom/grack/nanojson/JsonObject;


# direct methods
.method protected constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public abstract forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
.end method

.method public abstract forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
.end method
