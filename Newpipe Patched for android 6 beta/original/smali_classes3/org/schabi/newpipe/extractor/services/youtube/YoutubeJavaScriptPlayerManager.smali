.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;
.super Ljava/lang/Object;
.source "YoutubeJavaScriptPlayerManager.java"


# static fields
.field private static final CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

.field private static cachedJavaScriptPlayerCode:Ljava/lang/String;

.field private static cachedSignatureDeobfuscationFunction:Ljava/lang/String;

.field private static cachedSignatureTimestamp:Ljava/lang/Integer;

.field private static cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

.field private static cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

.field private static sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field private static sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field private static throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    return-void
.end method

.method public static deobfuscateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    .line 143
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 145
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 147
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get signature parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 157
    throw p0

    :catch_1
    move-exception p0

    .line 152
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 153
    throw p0

    .line 163
    :cond_0
    :goto_0
    :try_start_1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    const-string v0, "deobfuscate"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 163
    invoke-static {p0, p1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 169
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 140
    :cond_1
    throw v0
.end method

.method private static extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 349
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptPlayerCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 84
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    .line 95
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 98
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeSignatureUtils;->getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get signature timestamp"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 109
    throw p0

    :catch_1
    move-exception p0

    .line 105
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not convert signature timestamp to a number"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 112
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object p0

    :catch_2
    move-exception p0

    .line 102
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 103
    throw p0

    .line 92
    :cond_1
    throw v0
.end method

.method public static getUrlWithThrottlingParameterDeobfuscated(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 213
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getThrottlingParameterFromStreamingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 222
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 237
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez p0, :cond_4

    .line 241
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 243
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 244
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 247
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 248
    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get throttling parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 259
    throw p0

    :catch_1
    move-exception p0

    .line 254
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 255
    throw p0

    .line 264
    :cond_2
    :goto_0
    :try_start_1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 273
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Extracted n-parameter is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception p0

    .line 280
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 238
    :cond_4
    throw p0
.end method
