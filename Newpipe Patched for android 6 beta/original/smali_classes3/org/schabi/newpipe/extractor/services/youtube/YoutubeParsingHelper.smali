.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;
.super Ljava/lang/Object;
.source "YoutubeParsingHelper.java"


# static fields
.field private static final C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_IOS_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_TVHTML5_PLAYER_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_WEB_PATTERN:Ljava/util/regex/Pattern;

.field private static final GOOGLE_URLS:Ljava/util/Set;

.field private static final INITIAL_DATA_REGEXES:[Ljava/lang/String;

.field private static final INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

.field private static final INVIDIOUS_URLS:Ljava/util/Set;

.field private static final YOUTUBE_URLS:Ljava/util/Set;

.field private static clientVersion:Ljava/lang/String; = null

.field private static clientVersionExtracted:Z = false

.field private static consentAccepted:Z

.field private static hardcodedClientVersionValid:Lj$/util/Optional;

.field private static numberGenerator:Ljava/util/Random;

.field private static youtubeMusicClientVersion:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2lutsMN-cMij-S4as721_IkWZbY(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;
    .locals 5

    .line 977
    const-string v0, "height"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 978
    new-instance v2, Lorg/schabi/newpipe/extractor/Image;

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    .line 980
    invoke-virtual {p0, v4, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 981
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->fromHeight(I)Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v1

    invoke-direct {v2, v3, v0, p0, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v2
.end method

.method public static synthetic $r8$lambda$FCE6LBMxpnucZhHlqyqz-MtFE9g(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 1320
    const-string v0, "element"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "type"

    .line 1321
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageType"

    .line 1322
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    .line 1323
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    .line 1324
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 1325
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 1326
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 1327
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda13;-><init>()V

    .line 1328
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FpGtGLL3g1kc_5Z9jMtPs3hPxMY(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 554
    const-string v0, "key"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HeiQW6i9A_mkti_ZQkEaIFZN45Q(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;
    .locals 1

    .line 550
    const-string v0, "params"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 551
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XNK4qvZxaGEPQQRNW1j3qAhbOyY(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 556
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YONhJnOUXxT4Mp7-VBRtr6OXemg(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 548
    const-string v0, "service"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Z6vsg48W_G17vrF9s0OJwHh7aE4(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 0

    .line 204
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_jMl2YqIsDKEmG2tqxyrEmMOyxU(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1329
    const-string v0, "clientResource"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageName"

    .line 1330
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1331
    const-string v0, "CHECK_CIRCLE_FILLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AUDIO_BADGE"

    .line 1332
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MUSIC_FILLED"

    .line 1333
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$wVGklcp8Q9vYcT1XN-IlJRFMmHs(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 975
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$ytCiVQmXSPsb8ygBfUyyHubhq5Y(Ljava/lang/String;)Z
    .locals 0

    .line 557
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .locals 29

    .line 160
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 162
    const-string v0, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    const-string v1, "client.version=([0-9\\.]+)"

    const-string v2, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 166
    const-string v0, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    const-string v1, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    .line 178
    const-string v0, "&c=WEB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    .line 179
    const-string v0, "&c=WEB_EMBEDDED_PLAYER"

    .line 180
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 181
    const-string v0, "&c=TVHTML5"

    .line 182
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_TVHTML5_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "&c=ANDROID"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "&c=IOS"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    .line 186
    const-string v0, "m.google."

    const-string v1, "www.google."

    const-string v2, "google."

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->GOOGLE_URLS:Ljava/util/Set;

    .line 187
    const-string v27, "invidious.moomoo.me"

    const-string v28, "yt.cyberhost.uk"

    const-string v1, "invidio.us"

    const-string v2, "dev.invidio.us"

    const-string v3, "www.invidio.us"

    const-string v4, "redirect.invidious.io"

    const-string v5, "invidious.snopyta.org"

    const-string v6, "yewtu.be"

    const-string v7, "tube.connect.cafe"

    const-string v8, "tubus.eduvid.org"

    const-string v9, "invidious.kavin.rocks"

    const-string v10, "invidious.site"

    const-string v11, "invidious-us.kavin.rocks"

    const-string v12, "piped.kavin.rocks"

    const-string v13, "vid.mint.lgbt"

    const-string v14, "invidiou.site"

    const-string v15, "invidious.fdn.fr"

    const-string v16, "invidious.048596.xyz"

    const-string v17, "invidious.zee.li"

    const-string v18, "vid.puffyan.us"

    const-string v19, "ytprivate.com"

    const-string v20, "invidious.namazso.eu"

    const-string v21, "invidious.silkky.cloud"

    const-string v22, "ytb.trom.tf"

    const-string v23, "invidious.exonip.de"

    const-string v24, "inv.riverside.rocks"

    const-string v25, "invidious.blamefran.net"

    const-string v26, "y.com.cm"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    .line 195
    const-string v0, "m.youtube.com"

    const-string v1, "music.youtube.com"

    const-string v2, "youtube.com"

    const-string v3, "www.youtube.com"

    invoke-static {v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    const/4 v0, 0x0

    .line 198
    sput-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->consentAccepted:Z

    return-void
.end method

.method private static convertDurationToInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static defaultAlertsCheck(Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    .line 1238
    const-string v0, "alerts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 1239
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 1240
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "alertRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 1241
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1243
    const-string v1, "ERROR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    .line 1244
    const-string p0, "This account has been terminated"

    .line 1245
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "This channel was removed"

    .line 1246
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1247
    :cond_0
    const-string p0, ".*violat(ed|ion|ing).*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "infringement"

    .line 1248
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1273
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1270
    :cond_2
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    sget-object v1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;)V

    throw p0

    .line 1276
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got error: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static extractAudioTrackType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 9

    const/4 v0, 0x0

    .line 1459
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "xtags"

    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 1468
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, p0, v3

    .line 1469
    const-string v7, "="

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1470
    array-length v7, v6

    if-le v7, v5, :cond_1

    aget-object v7, v6, v2

    const-string v8, "acont"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1471
    aget-object p0, v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    return-object v0

    .line 1479
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    :sswitch_0
    const-string v1, "original"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string v1, "dubbed-auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_2
    const-string v1, "secondary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_3
    const-string v1, "dubbed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_4
    const-string v1, "descriptive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 1481
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    .line 1488
    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    .line 1484
    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    .line 1486
    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    :catch_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7b34 -> :sswitch_4
        -0x4ebc9b10 -> :sswitch_3
        -0x30bb8e8c -> :sswitch_2
        -0x1e91cf94 -> :sswitch_1
        0x523289d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1292
    :cond_0
    const-string v0, "webcache.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    const-string v0, "cache:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    :cond_1
    return-object p0
.end method

.method private static extractClientVersionFromHtmlSearchResultsPage()V
    .locals 4

    .line 498
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    const-string v1, "https://www.youtube.com/results?search_query=&ucbcb=1"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getInitialData(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 506
    const-string v2, "responseContext"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "serviceTrackingParams"

    .line 507
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 510
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 511
    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v3}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 512
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 514
    const-string v2, "CSI"

    const-string v3, "cver"

    invoke-static {v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 519
    :try_start_0
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 527
    :cond_1
    :goto_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const-string v0, "ECATCHER"

    const-string v2, "client.version"

    invoke-static {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 532
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 539
    sput-boolean v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    return-void

    .line 533
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractClientVersionFromSwJs()V
    .locals 3

    .line 479
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    const-string v0, "https://www.youtube.com"

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 484
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    const-string v2, "https://www.youtube.com/sw.js"

    invoke-virtual {v1, v2, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    .line 486
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    sput-boolean v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    return-void

    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not extract YouTube WEB InnerTube client version from sw.js"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static extractCookieValue(Ljava/lang/String;Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;
    .locals 4

    .line 1211
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "set-cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1212
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1217
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1218
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    const-string v3, ";"

    .line 1221
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1220
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static extractPlaylistTypeFromPlaylistId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 386
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_MUSIC:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    .line 390
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeGenreMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_GENRE:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    .line 392
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 396
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_STREAM:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    .line 399
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    .line 387
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not extract playlist type from empty playlist id"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractPlaylistTypeFromPlaylistUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 2

    .line 414
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    const-string v0, "list"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractPlaylistTypeFromPlaylistId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 416
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not extract playlist type from malformed url"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 347
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 350
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMyMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 356
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeGenreMixId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 366
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from genre mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Video id could not be determined from empty playlist id"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 918
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 919
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 922
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 924
    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static generateConsentCookie()Ljava/lang/String;
    .locals 3

    .line 1198
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isConsentAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "CAISAiAD"

    goto :goto_0

    .line 1206
    :cond_0
    const-string v0, "CAE="

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateContentPlaybackNonce()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    .line 1346
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/utils/RandomStringFromAlphabetGenerator;->generate(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateTParameter()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    .line 1363
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/utils/RandomStringFromAlphabetGenerator;->generate(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.youtube/19.28.35 (Linux; U; Android 15; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") gzip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1184
    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "X-YouTube-Client-Version"

    .line 1185
    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1184
    const-string v1, "X-YouTube-Client-Name"

    invoke-static {v1, p0, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getClientInfoHeaders()Ljava/util/Map;
    .locals 3

    .line 1159
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://www.youtube.com"

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1160
    const-string v1, "1"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getClientVersion()Ljava/lang/String;
    .locals 2

    .line 566
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractClientVersionFromSwJs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractClientVersionFromHtmlSearchResultsPage()V

    .line 579
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_1

    .line 580
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    .line 584
    :cond_1
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isHardcodedClientVersionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    const-string v0, "2.20250122.04.00"

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    .line 589
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Could not get YouTube WEB client version"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 547
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda8;-><init>()V

    .line 550
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 552
    new-instance p1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 553
    new-instance p1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda10;-><init>()V

    .line 556
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda11;-><init>()V

    .line 557
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 558
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 559
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCookieHeader()Ljava/util/Map;
    .locals 2

    .line 1193
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateConsentCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 284
    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/feeds/videos.xml?user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_0
    const-string v0, "channel/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "https://www.youtube.com/feeds/videos.xml?channel_id="

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1604
    :try_start_0
    const-string v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 1606
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "listItemViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2

    .line 972
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 973
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 974
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda5;-><init>()V

    .line 975
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 976
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 983
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getInitialData(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 422
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 425
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get ytInitialData"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getIosUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.ios.youtube/20.03.02(iPhone16,2; U; CPU iOS 18_2_1 like Mac OS X; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJsonPostResponse(Ljava/lang/String;Ljava/util/List;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .locals 4

    .line 1034
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1037
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    const-string p1, "?prettyPrint=false"

    goto :goto_0

    .line 1040
    :cond_0
    const-string v1, "&"

    invoke-static {v1, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_de$DeTimeFormat$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&prettyPrint=false"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1045
    :goto_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/youtubei/v1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0, p2, p3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 1044
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .locals 4

    .line 1022
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1025
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/youtubei/v1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?prettyPrint=false"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 1024
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1171
    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1172
    const-string v0, "Origin"

    const-string v1, "Referer"

    invoke-static {v0, p0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 909
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->isString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 912
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 882
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;
    .locals 9

    .line 799
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 803
    :cond_0
    const-string v0, "simpleText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 807
    :cond_1
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 808
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 812
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 814
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 815
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_d

    .line 818
    const-string v3, "navigationEndpoint"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 820
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 819
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 822
    invoke-static {v3}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</a>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    :cond_4
    const-string v3, "bold"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 828
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 829
    :goto_1
    const-string v4, "italics"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 830
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 831
    :goto_2
    const-string v7, "strikethrough"

    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 832
    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    if-eqz v3, :cond_8

    .line 835
    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v4, :cond_9

    .line 838
    const-string v1, "<i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v5, :cond_a

    .line 841
    const-string v1, "<s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_b

    .line 847
    const-string v1, "</s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v4, :cond_c

    .line 850
    const-string v1, "</i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v3, :cond_3

    .line 853
    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 856
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 860
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_f

    .line 863
    const-string p1, "\\n"

    const-string v0, "<br>"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 864
    const-string p1, " {2}"

    const-string v0, " &nbsp;"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 873
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 875
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not extract text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    .line 951
    :try_start_0
    const-string v0, "thumbnail"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnails"

    .line 952
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 951
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 954
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get thumbnails from InfoItem"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getTvHtml5UserAgent()Ljava/lang/String;
    .locals 1

    .line 1129
    const-string v0, "Mozilla/5.0 (PlayStation; PlayStation 4/12.00) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15"

    return-object v0
.end method

.method public static getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 10

    .line 693
    const-string v0, "urlEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "https://www.youtube.com"

    const/4 v3, 0x0

    const-string v4, "url"

    if-eqz v1, :cond_5

    .line 694
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 695
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    const-string v1, "https://www.youtube.com/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_0
    const-string v1, "/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 705
    array-length v1, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    .line 706
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    const-string v9, "q"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 707
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 710
    :cond_2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 712
    :cond_3
    const-string v1, "/channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/watch"

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 714
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 718
    :cond_5
    const-string v0, "browseEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "https://www.youtube.com/playlist?list="

    if-eqz v1, :cond_8

    .line 719
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 720
    const-string v1, "canonicalBaseUrl"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    const-string v6, "browseId"

    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 724
    const-string v6, "UC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/channel/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_6
    const-string v6, "VL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 p0, 0x2

    .line 730
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 734
    :cond_7
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 739
    :cond_8
    const-string v0, "watchEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "playlistId"

    if-eqz v1, :cond_b

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "videoId"

    .line 743
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 745
    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 746
    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "startTimeSeconds"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 749
    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 751
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 750
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 756
    :cond_b
    const-string v0, "watchPlaylistEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 758
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 759
    invoke-virtual {p0, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 762
    :cond_c
    const-string v0, "showDialogCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 764
    :try_start_0
    const-string v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 770
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "listItemViewModel.rendererContext.commandContext.onTap.innertubeCommand"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 772
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    .line 778
    :cond_d
    const-string v0, "commandMetadata"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 779
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "webCommandMetadata"

    .line 780
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 781
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 782
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUrlFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    .line 887
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 891
    :cond_0
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    .line 892
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 896
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 897
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v2, "navigationEndpoint"

    .line 898
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;
    .locals 5

    .line 989
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x194

    const-string v2, "\")"

    if-eq v0, v1, :cond_5

    .line 994
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_4

    .line 1000
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www.youtube.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1002
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1003
    const-string v3, "/oops"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "Content unavailable"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1008
    :cond_1
    :goto_0
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1010
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1011
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 1012
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got HTML document, expected JSON response (latest url was: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-object v0

    .line 996
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "JSON response is too short"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 990
    :cond_5
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 991
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVisitorDataFromInnertube(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1503
    invoke-static {p1, p2, p0, p5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1506
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1507
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1509
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 1512
    const-string p2, "guide"

    goto :goto_0

    :cond_0
    const-string p2, "visitor_id"

    :goto_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?prettyPrint=false"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1510
    invoke-virtual {p1, p2, p3, p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 1509
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lorg/schabi/newpipe/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "responseContext"

    .line 1515
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "visitorData"

    .line 1516
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1518
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 1519
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get visitorData"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getYouTubeHeaders()Ljava/util/Map;
    .locals 3

    .line 1148
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientInfoHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1149
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->generateConsentCookie()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getYoutubeMusicClientVersion()Ljava/lang/String;
    .locals 4

    .line 664
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0

    .line 667
    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isHardcodedYoutubeMusicClientVersionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    const-string v0, "1.20250122.01.00"

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 674
    :try_start_0
    const-string v1, "https://music.youtube.com"

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 675
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    const-string v3, "https://music.youtube.com/sw.js"

    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    .line 677
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    const-string v2, "https://music.youtube.com/?ucbcb=1"

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    .line 683
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 687
    :goto_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getYoutubeMusicHeaders()Ljava/util/Map;
    .locals 3

    .line 1137
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://music.youtube.com"

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1138
    const-string v1, "67"

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static hasArtistOrVerifiedIconBadgeAttachment(Lcom/grack/nanojson/JsonArray;)Z
    .locals 2

    .line 1317
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 1318
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 1319
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 1320
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static isAndroidStreamingUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1405
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isConsentAccepted()Z
    .locals 1

    .line 1443
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->consentAccepted:Z

    return v0
.end method

.method public static isGoogleURL(Ljava/lang/String;)Z
    .locals 2

    .line 201
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->GOOGLE_URLS:Ljava/util/Set;

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda12;-><init>(Ljava/net/URL;)V

    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHardcodedClientVersionValid()Z
    .locals 6

    .line 431
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 435
    :cond_0
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "context"

    .line 437
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "client"

    .line 438
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "hl"

    const-string v2, "en-GB"

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "gl"

    const-string v2, "GB"

    .line 440
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientName"

    const-string v2, "WEB"

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientVersion"

    .line 442
    const-string v2, "2.20250122.04.00"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "platform"

    const-string v3, "DESKTOP"

    .line 443
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "utcOffsetMinutes"

    const/4 v3, 0x0

    .line 444
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 445
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "request"

    .line 446
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "internalExperimentFlags"

    .line 447
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 448
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "useSsl"

    const/4 v4, 0x1

    .line 449
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 450
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "user"

    .line 451
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "lockedSafetyMode"

    .line 454
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 455
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 456
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "fetchLiveState"

    .line 457
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 458
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 461
    const-string v1, "1"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 465
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    const-string v5, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    invoke-virtual {v2, v5, v1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    .line 471
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 473
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isHardcodedYoutubeMusicClientVersionValid()Z
    .locals 6

    .line 628
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "context"

    .line 630
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "client"

    .line 631
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientName"

    const-string v2, "WEB_REMIX"

    .line 632
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientVersion"

    const-string v2, "1.20250122.01.00"

    .line 633
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "hl"

    const-string v2, "en-GB"

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "gl"

    const-string v2, "GB"

    .line 635
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "platform"

    const-string v2, "DESKTOP"

    .line 636
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 637
    const-string v1, "utcOffsetMinutes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 638
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "request"

    .line 639
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "internalExperimentFlags"

    .line 640
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 641
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 642
    const-string v1, "useSsl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 643
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "user"

    .line 644
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "lockedSafetyMode"

    .line 647
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 648
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 649
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "input"

    const-string v4, ""

    .line 650
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 651
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 654
    new-instance v1, Ljava/util/HashMap;

    const-string v4, "https://music.youtube.com"

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 655
    const-string v4, "67"

    const-string v5, "2.20250122.04.00"

    invoke-static {v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 657
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v4

    const-string v5, "https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false"

    invoke-virtual {v4, v5, v1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x1f4

    if-le v1, v4, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public static isHooktubeURL(Ljava/net/URL;)Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 222
    const-string v0, "hooktube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInvidiousURL(Ljava/net/URL;)Z
    .locals 2

    .line 226
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isIosStreamingUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1415
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTvHtml5StreamingUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1395
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_TVHTML5_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVerified(Lcom/grack/nanojson/JsonArray;)Z
    .locals 3

    .line 1299
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1303
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1304
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v2, "metadataBadgeRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "style"

    .line 1305
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1306
    const-string v2, "BADGE_STYLE_TYPE_VERIFIED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    .line 1307
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static isWebEmbeddedPlayerStreamingUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1384
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWebStreamingUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1374
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isY2ubeURL(Ljava/net/URL;)Z
    .locals 1

    .line 230
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "y2u.be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isYoutubeGenreMixId(Ljava/lang/String;)Z
    .locals 1

    .line 333
    const-string v0, "RDGMEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isYoutubeMixId(Ljava/lang/String;)Z
    .locals 1

    .line 301
    const-string v0, "RD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isYoutubeMusicMixId(Ljava/lang/String;)Z
    .locals 1

    .line 323
    const-string v0, "RDAMVM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RDCLAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isYoutubeMyMixId(Ljava/lang/String;)Z
    .locals 1

    .line 312
    const-string v0, "RDMM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isYoutubeServiceURL(Ljava/net/URL;)Z
    .locals 1

    .line 215
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 216
    const-string v0, "www.youtube-nocookie.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "youtu.be"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isYoutubeURL(Ljava/net/URL;)Z
    .locals 2

    .line 211
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static parseDurationString(Ljava/lang/String;)I
    .locals 6

    .line 242
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x18

    const/16 v2, 0x3c

    const/4 v3, 0x1

    .line 246
    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v1

    .line 247
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x4

    if-ltz v2, :cond_2

    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 252
    :goto_1
    array-length v4, v0

    if-ge p0, v4, :cond_1

    add-int v4, p0, v2

    .line 253
    aget v4, v1, v4

    aget-object v5, v0, p0

    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->convertDurationToInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    mul-int v3, v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return v3

    .line 249
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error duration string with unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;
    .locals 2

    .line 1054
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "context"

    .line 1055
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "client"

    .line 1056
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "hl"

    .line 1057
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string v0, "gl"

    .line 1058
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "clientName"

    const-string v0, "WEB"

    .line 1059
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "clientVersion"

    .line 1060
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "originalUrl"

    const-string v0, "https://www.youtube.com"

    .line 1061
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "platform"

    const-string v0, "DESKTOP"

    .line 1062
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1063
    const-string p1, "utcOffsetMinutes"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "request"

    .line 1065
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "internalExperimentFlags"

    .line 1066
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1067
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "useSsl"

    const/4 v1, 0x1

    .line 1068
    invoke-virtual {p0, p1, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1069
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "user"

    .line 1070
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "lockedSafetyMode"

    .line 1073
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1074
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1075
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .locals 3

    .line 1531
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "context"

    .line 1532
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "client"

    .line 1533
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientName:Ljava/lang/String;

    .line 1534
    const-string v2, "clientName"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    .line 1535
    const-string v2, "clientVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 1537
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientScreen:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1538
    const-string v2, "clientScreen"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1541
    :cond_0
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->platform:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1542
    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1545
    :cond_1
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1546
    const-string v2, "visitorData"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1549
    :cond_2
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceMake:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1550
    const-string v2, "deviceMake"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1552
    :cond_3
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceModel:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1553
    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1555
    :cond_4
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1556
    const-string v2, "osName"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1558
    :cond_5
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1559
    const-string v2, "osVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 1561
    :cond_6
    iget-object p2, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget p2, p2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->androidSdkVersion:I

    if-lez p2, :cond_7

    .line 1562
    const-string v1, "androidSdkVersion"

    invoke-virtual {v0, v1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 1566
    :cond_7
    const-string p2, "hl"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p2, "gl"

    .line 1567
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "utcOffsetMinutes"

    const/4 p2, 0x0

    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1569
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    if-eqz p3, :cond_8

    .line 1572
    const-string p0, "thirdParty"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "embedUrl"

    .line 1573
    invoke-virtual {p0, p1, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1574
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 1577
    :cond_8
    const-string p0, "request"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "internalExperimentFlags"

    .line 1578
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1579
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "useSsl"

    const/4 p3, 0x1

    .line 1580
    invoke-virtual {p0, p1, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1581
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "user"

    .line 1582
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "lockedSafetyMode"

    .line 1585
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1586
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    .line 1587
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    return-object v0
.end method
