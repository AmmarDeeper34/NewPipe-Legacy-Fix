.class public abstract Lorg/schabi/newpipe/util/text/InternalUrlsHandler;
.super Ljava/lang/Object;
.source "InternalUrlsHandler.java"


# static fields
.field private static final AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "(.*)&t=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static handleUrlDescriptionTimestamp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 39
    sget-object v0, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->AMPERSAND_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 45
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 54
    :goto_0
    :try_start_0
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v4

    .line 56
    sget-object v6, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_2

    return v1

    .line 63
    :cond_2
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-ne v4, v1, :cond_3

    if-eq p1, v5, :cond_3

    .line 64
    invoke-static {p0, v2, v3, p1}, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z

    move-result p0

    return p0

    .line 66
    :cond_3
    invoke-static {p0, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->openRouterActivity(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    :catch_0
    return v1
.end method

.method public static playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z
    .locals 1

    .line 84
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v0

    .line 88
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    new-instance v0, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 95
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p2

    invoke-direct {v0, p2, p1, p3}, Lorg/schabi/newpipe/player/TimestampChangeData;-><init>(ILjava/lang/String;I)V

    .line 93
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerTimestampIntent(Landroid/content/Context;Lorg/schabi/newpipe/player/TimestampChangeData;)Landroid/content/Intent;

    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
