.class public final Lorg/schabi/newpipe/error/ErrorInfo$Companion;
.super Ljava/lang/Object;
.source "ErrorInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/error/ErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getServiceName(Lorg/schabi/newpipe/error/ErrorInfo$Companion;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getServiceName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .line 166
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 166
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-object p1

    .line 167
    :cond_4
    :goto_2
    const-string p1, "<unknown_service>"

    return-object p1
.end method


# virtual methods
.method public final getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;
    .locals 5

    .line 182
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const v1, 0x7f120372

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 183
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 185
    instance-of v4, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v4, :cond_3

    .line 186
    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p1, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 p2, 0x193

    if-ne p1, p2, :cond_2

    .line 187
    sget-object p1, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 188
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1204d9

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 190
    :cond_1
    :goto_0
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f12036e

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 193
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    iget p2, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f12036f

    invoke-direct {p1, p3, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 196
    :cond_3
    instance-of v4, v3, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    if-eqz v3, :cond_4

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object p1

    return-object p1

    .line 198
    :cond_4
    iget p1, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez p1, :cond_5

    .line 199
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    new-array p2, v2, [Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    :cond_5
    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    .line 201
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120371

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 203
    :cond_6
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120373

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 206
    :cond_7
    instance-of v0, p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;

    if-eqz v0, :cond_8

    .line 207
    check-cast p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object p1

    return-object p1

    .line 208
    :cond_8
    instance-of v0, p1, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    if-eqz v0, :cond_9

    .line 209
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    new-array p2, v2, [Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 212
    :cond_9
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    if-eqz v0, :cond_d

    .line 213
    check-cast p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    const/4 p2, 0x1

    goto :goto_1

    :cond_a
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_c

    .line 216
    new-instance p2, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 218
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    invoke-direct {v0, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    .line 219
    filled-new-array {p3, p1}, [Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f12001d

    .line 216
    invoke-direct {p2, p3, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p2

    .line 222
    :cond_c
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f12001c

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 223
    :cond_d
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    if-eqz v0, :cond_e

    .line 224
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1203c4

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 225
    :cond_e
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    if-eqz v0, :cond_f

    .line 226
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1201e3

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 227
    :cond_f
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    if-eqz v0, :cond_10

    .line 228
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f12033f

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 229
    :cond_10
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    if-eqz v0, :cond_11

    .line 230
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120399

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 231
    :cond_11
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;

    if-eqz v0, :cond_12

    .line 232
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120456

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 233
    :cond_12
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedContentInCountryException;

    if-eqz v0, :cond_13

    .line 234
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1204a6

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 235
    :cond_13
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    if-eqz v0, :cond_14

    .line 236
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1204d8

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 237
    :cond_14
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/SignInConfirmNotBotException;

    if-eqz v0, :cond_15

    .line 238
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    invoke-direct {p0, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f120451

    invoke-direct {p1, p3, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 239
    :cond_15
    instance-of p3, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    if-eqz p3, :cond_16

    .line 240
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1200b0

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 243
    :cond_16
    instance-of p3, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz p3, :cond_17

    .line 244
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1200b1

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 246
    :cond_17
    instance-of p3, p1, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    if-eqz p3, :cond_18

    .line 247
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1203a9

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    :cond_18
    if-eqz p1, :cond_19

    .line 249
    invoke-static {p1}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->isNetworkRelated(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 250
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1202e5

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 253
    :cond_19
    instance-of p1, p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    if-eqz p1, :cond_1a

    .line 254
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120340

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 257
    :cond_1a
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_1b

    .line 258
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120035

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 259
    :cond_1b
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_1c

    .line 260
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120163

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 261
    :cond_1c
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_1d

    .line 262
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120473

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 263
    :cond_1d
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_1e

    .line 264
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120474

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 265
    :cond_1e
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_1f

    .line 266
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1200bc

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 267
    :cond_1f
    sget-object p1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    if-ne p2, p1, :cond_20

    .line 268
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f1200bd

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1

    .line 270
    :cond_20
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const p2, 0x7f120160

    new-array p3, v2, [Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    return-object p1
.end method

.method public final isReportable(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 281
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 283
    :cond_1
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz v1, :cond_2

    return v2

    .line 287
    :cond_2
    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final isRetryable(Ljava/lang/Throwable;)Z
    .locals 2

    .line 296
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 298
    :cond_0
    instance-of p1, p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final throwableListToStringList(Ljava/util/List;)[Ljava/lang/String;
    .locals 2

    const-string v0, "throwableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/Throwable;

    .line 172
    invoke-static {v1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final throwableToStringList(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
