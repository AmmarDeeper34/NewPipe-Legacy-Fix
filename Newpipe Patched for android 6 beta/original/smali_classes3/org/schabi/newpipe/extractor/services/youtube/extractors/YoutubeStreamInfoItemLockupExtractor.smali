.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;
.super Ljava/lang/Object;
.source "YoutubeStreamInfoItemLockupExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;,
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;,
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
    }
.end annotation


# static fields
.field private static final PREMIERES_DATE_FORMATTER:Lj$/time/format/DateTimeFormatter;


# instance fields
.field private cachedChannelImageViewModel:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

.field private cachedDateText:Lj$/util/Optional;

.field private cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

.field private cachedName:Ljava/lang/String;

.field private cachedStreamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private final lockupViewModel:Lcom/grack/nanojson/JsonObject;

.field private final timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;


# direct methods
.method public static synthetic $r8$lambda$-WPnwSvue8neGer2spIj-gMDCCY(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 240
    const-string v0, "text"

    .line 241
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "attachmentRuns"

    .line 242
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QPrSgUUbi5YH9Tx82MLptvmawkA(ILcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 2

    .line 383
    const-string v0, "metadataParts"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object p1

    int-to-long v0, p0

    .line 385
    invoke-interface {p1, v0, v1}, Lj$/util/stream/Stream;->skip(J)Lj$/util/stream/Stream;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 386
    invoke-interface {p0, v0, v1}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rt6Gu5rzfujOTf74akWjN8qsDJc(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 407
    const-string v0, "Premieres "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YafAXFumSPOPJpayFQ6hIZ_E7lk(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 88
    const-string v0, "badgeStyle"

    .line 89
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_0
    const-string v0, "icon"

    .line 95
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    .line 96
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda13;-><init>()V

    .line 98
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;

    const-string v1, "LIVE"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eOSQqyXGzw6Wijy7EQP2Z0Wn2nk(Ljava/lang/String;)Z
    .locals 0

    .line 186
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$hp6F_gNvmVDp99hr0wbr9mU4i60(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 86
    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$imyEMOo7KqBPZnAhwxuaNxvLsKE(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "thumbnailBadgeViewModel"

    .line 162
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    .line 163
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$npHBr_25cTJg3Sp4lxHhWkrw4X0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "clientResource"

    .line 99
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageName"

    .line 100
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oQMtjDI5sVCFuID5neKvdz4S-ec(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 1

    .line 157
    const-string v0, "thumbnailOverlayBadgeViewModel"

    .line 158
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnailBadges"

    .line 159
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oUj4o3sRv1rCG4bJoD-IQtvNGgQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 269
    const-string v0, "Premieres "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rP2PX_pgCdSDyvCDRT1CrFRsuug(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vsW0lL8qPqPWnqbpZNyc_FR-UUs(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 1

    .line 82
    const-string v0, "thumbnailOverlayBadgeViewModel"

    .line 83
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnailBadges"

    .line 84
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xdLbQ0P0Hq5XD64C_AZts7lYIbU()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 187
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "dd/MM/yyyy, HH:mm"

    .line 47
    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->PREMIERES_DATE_FORMATTER:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    .line 68
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    return-void
.end method

.method private channelImageViewModel()Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->determineChannelImageViewModel()Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedChannelImageViewModel:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    return-object v0
.end method

.method private determineChannelImageViewModel()Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
    .locals 3

    .line 353
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadata"

    .line 354
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "lockupMetadataViewModel"

    .line 355
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "image"

    .line 356
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 359
    const-string v1, "decoratedAvatarViewModel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$SingleChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v0

    .line 364
    :cond_0
    const-string v1, "avatarStackViewModel"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$MultiChannelImageViewModel;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v1

    .line 369
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Failed to determine channel image view model"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private determineStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentImage.thumbnailViewModel.overlays"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda9;-><init>()V

    .line 82
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda10;-><init>()V

    .line 86
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda11;-><init>()V

    .line 87
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method private getDateFromPremiere(Lj$/util/Optional;)Ljava/lang/String;
    .locals 1

    .line 269
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getDateText()Lj$/util/Optional;
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Lj$/util/Optional;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->metadataPart(II)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;)V

    .line 401
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Lj$/util/Optional;

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedDateText:Lj$/util/Optional;

    return-object v0
.end method

.method private getTextContentFromMetadataPart(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 391
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getViewCountFromViewCountText(Ljava/lang/String;)J
    .locals 2

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no views"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 333
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private isLive()Z
    .locals 2

    .line 395
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPremiere()Z
    .locals 2

    .line 407
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 409
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private metadataPart(II)Lj$/util/Optional;
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadata.lockupMetadataViewModel.metadata.contentMetadataViewModel.metadataRows"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedMetadataRows:Lcom/grack/nanojson/JsonArray;

    .line 380
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v0

    int-to-long v1, p1

    .line 381
    invoke-interface {v0, v1, v2}, Lj$/util/stream/Stream;->skip(J)Lj$/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 382
    invoke-interface {p1, v0, v1}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda12;-><init>(I)V

    .line 383
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 387
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    .line 225
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$getContentAvailability(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 3

    .line 150
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentImage.thumbnailViewModel.overlays"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 157
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 161
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 164
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    :try_start_0
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->parseDurationString(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get duration"

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 167
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get duration: No parsable durations detected"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadata.lockupMetadataViewModel.title.content"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedName:Ljava/lang/String;

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic getShortDescription()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$getShortDescription(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->determineStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->cachedStreamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 3

    .line 251
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 256
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Lj$/util/Optional;

    move-result-object v0

    .line 258
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateFromPremiere(Lj$/util/Optional;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentImage.thumbnailViewModel.image.sources"

    .line 340
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 286
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateText()Lj$/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getDateFromPremiere(Lj$/util/Optional;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->PREMIERES_DATE_FORMATTER:Lj$/time/format/DateTimeFormatter;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 295
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v2}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;Z)V
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not parse premiere upload date"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get upload date from premiere"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 2

    .line 233
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->channelImageViewModel()Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->forAvatarExtraction()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "avatarViewModel.image.sources"

    .line 232
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->metadataPart(II)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;)V

    .line 185
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda7;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda8;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 4

    .line 192
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->channelImageViewModel()Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rendererContext"

    .line 194
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commandContext"

    .line 195
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "onTap"

    .line 196
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    .line 197
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 198
    const-string v1, "browseEndpoint"

    .line 199
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 200
    const-string v2, "browseId"

    .line 201
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    const-string v3, "UC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    const-string v2, "canonicalBaseUrl"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    const-string v1, "commandMetadata"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "webCommandMetadata"

    .line 213
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "url"

    .line 214
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->resolveUploaderUrlFromRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader url"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->lockupViewModel:Lcom/grack/nanojson/JsonObject;

    const-string v1, "rendererContext.commandContext.onTap.innertubeCommand.watchEndpoint.videoId"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getViewCount()J
    .locals 4

    .line 306
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isPremiere()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 311
    invoke-direct {p0, v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->metadataPart(II)Lj$/util/Optional;

    move-result-object v0

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;)V

    .line 312
    invoke-virtual {v0, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getViewCountFromViewCountText(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 317
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->isLive()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAd()Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "[Private video]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[Deleted video]"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic isShortFormContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$isShortFormContent(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Z

    move-result v0

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 2

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor;->metadataPart(II)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda4;-><init>()V

    .line 240
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 243
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 244
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
