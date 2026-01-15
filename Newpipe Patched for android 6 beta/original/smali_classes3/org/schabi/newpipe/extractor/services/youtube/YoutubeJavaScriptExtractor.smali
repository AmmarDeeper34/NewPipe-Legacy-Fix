.class abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;
.super Ljava/lang/Object;
.source "YoutubeJavaScriptExtractor.java"


# static fields
.field private static final EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "player\\\\/([a-z0-9]{8})\\\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 141
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 157
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 158
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 161
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get JavaScript base player\'s code"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static extractJavaScriptPlayerCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptUrlWithIframeResource()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 65
    :catch_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptUrlWithEmbedWatchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 72
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "The extracted and built JavaScript URL is invalid"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static extractJavaScriptUrlWithEmbedWatchPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/embed/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 111
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 119
    const-string v1, "script"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "player/base"

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 123
    const-string v2, "src"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "base.js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 131
    :cond_1
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 134
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Embedded watch page didn\'t provide JavaScript base player\'s URL"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 114
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not fetch embedded watch page"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static extractJavaScriptUrlWithIframeResource()Ljava/lang/String;
    .locals 4

    .line 85
    :try_start_0
    const-string v0, "https://www.youtube.com/iframe_api"

    .line 86
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 87
    invoke-virtual {v1, v0, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "IFrame resource didn\'t provide JavaScript base player\'s hash"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 90
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not fetch IFrame resource"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
