.class public final Lorg/schabi/newpipe/DownloaderImpl;
.super Lorg/schabi/newpipe/extractor/downloader/Downloader;
.source "DownloaderImpl.java"


# static fields
.field private static instance:Lorg/schabi/newpipe/DownloaderImpl;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final mCookies:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$2a0p9oMkkgzxSmpcGeYXtuomImY(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 150
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 151
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Lokhttp3/Request$Builder;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VsCEXXIexbPa7gJNKOheeaqrLlI(Ljava/lang/String;)Lj$/util/stream/Stream;
    .locals 1

    .line 74
    const-string v0, "; *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$itw8KeL-_jtcLpiu-p6jIs5GGlU(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;-><init>()V

    const-wide/16 v0, 0x1e

    .line 43
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/DownloaderImpl;->client:Lokhttp3/OkHttpClient;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/DownloaderImpl;
    .locals 1

    .line 64
    sget-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    return-object v0
.end method

.method public static init(Lokhttp3/OkHttpClient$Builder;)Lorg/schabi/newpipe/DownloaderImpl;
    .locals 1

    .line 58
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/DownloaderImpl;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    sput-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 7

    .line 129
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->url()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->headers()Ljava/util/Map;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend()[B

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 136
    invoke-static {p1}, Lokhttp3/RequestBody;->create([B)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 139
    :goto_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 140
    invoke-virtual {v4, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    .line 142
    invoke-virtual {p1, v0, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/DownloaderImpl;->getCookies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    const-string v4, "Cookie"

    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 149
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-static {v2, v0}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 158
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_4

    .line 163
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    .line 165
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 163
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 169
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    new-instance v1, Lorg/schabi/newpipe/extractor/downloader/Response;

    .line 171
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    .line 172
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/downloader/Response;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v1

    .line 159
    :cond_4
    :try_start_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const-string v2, "reCaptcha Challenge requested"

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    if-eqz p1, :cond_5

    .line 155
    :try_start_5
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v1
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    const-string p1, "youtube_restricted_mode_key"

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/DownloaderImpl;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    const-string v0, "recaptcha_cookies"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/DownloaderImpl;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 73
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 74
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    const-string v0, "; "

    .line 76
    invoke-static {v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeCookie(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1204da

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    .line 95
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Z)V

    return-void
.end method

.method public updateYoutubeRestrictedModeCookies(Z)V
    .locals 1

    .line 100
    const-string v0, "youtube_restricted_mode_key"

    if-eqz p1, :cond_0

    .line 101
    const-string p1, "PREF=f2=8000000"

    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/DownloaderImpl;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/DownloaderImpl;->removeCookie(Ljava/lang/String;)V

    .line 106
    :goto_0
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->getInstance()Lorg/schabi/newpipe/util/InfoCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    return-void
.end method
