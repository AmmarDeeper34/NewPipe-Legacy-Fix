.class public abstract Lorg/schabi/newpipe/util/Localization;
.super Ljava/lang/Object;
.source "Localization.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;


# direct methods
.method public static synthetic $r8$lambda$e4sOd54ZlCP_rEfjD5RX-AbvY3s(Ljava/lang/String;)Z
    .locals 0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/schabi/newpipe/util/Localization;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;
    .locals 3

    .line 342
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f12049f

    .line 347
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/Localization;->audioTrackType(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 352
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const p1, 0x7f120042

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static audioTrackType(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;
    .locals 1

    .line 360
    sget-object v0, Lorg/schabi/newpipe/util/Localization$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f120047

    .line 364
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_1
    const p1, 0x7f120044

    .line 363
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f120045

    .line 362
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f120046

    .line 361
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenateStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/Localization$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/Localization$$ExternalSyntheticLambda1;-><init>()V

    .line 82
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 83
    invoke-static {p0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object p0

    invoke-interface {p1, p0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static varargs concatenateStrings([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, " \u2022 "

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deletedDownloadCount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    int-to-long v3, p1

    .line 242
    invoke-static {p0, v3, v4}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110001

    const/4 v2, 0x0

    move-object v0, p0

    .line 241
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadCount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    int-to-long v3, p1

    .line 236
    invoke-static {p0, v3, v4}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110002

    const/4 v2, 0x0

    move-object v0, p0

    .line 235
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Lj$/time/OffsetDateTime;)Ljava/lang/String;
    .locals 2

    .line 134
    sget-object v0, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 135
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 136
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj$/time/OffsetDateTime;->atZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLocale()Ljava/util/Locale;
    .locals 2

    .line 121
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDurationString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    .line 271
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDurationString(JZZ)Ljava/lang/String;
    .locals 0

    .line 285
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p0

    .line 286
    const-string p1, ""

    if-eqz p3, :cond_0

    const-string p3, "\u23f1 "

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    const-string p1, "+"

    .line 288
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocaleFromPrefs(Landroid/content/Context;I)Ljava/util/Locale;
    .locals 2

    .line 414
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200d2

    .line 415
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 418
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 421
    :cond_0
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 4

    .line 107
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200ad

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200d2

    .line 109
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    new-instance p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    const v0, 0x7f1200ae

    .line 117
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/Localization;->getLocaleFromPrefs(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredLocalization(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 0

    .line 103
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->fromLocale(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p0

    return-object p0
.end method

.method private static getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 435
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, -0x80000000

    const-wide/32 v4, 0x7fffffff

    move-wide v0, p3

    .line 442
    invoke-static/range {v0 .. v5}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p5, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initPrettyTime(Lorg/ocpsoft/prettytime/PrettyTime;)V
    .locals 1

    .line 373
    sput-object p0, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 375
    const-class v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;

    return-void
.end method

.method public static likeCount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    .line 258
    const-string p0, "-"

    return-object p0

    :cond_0
    int-to-long v0, p1

    .line 260
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static listeningCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f120304

    .line 214
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110007

    move-object v0, p0

    move-wide v3, p1

    .line 213
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    if-ltz p1, :cond_3

    int-to-long v0, p1

    const-wide/32 v2, 0x15180

    .line 308
    div-long v4, v0, v2

    long-to-int p1, v4

    .line 309
    rem-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    long-to-int v5, v4

    .line 310
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long v6, v0, v2

    long-to-int v4, v6

    .line 311
    rem-long/2addr v0, v2

    long-to-int v1, v0

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/high16 v0, 0x7f110000

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v5, :cond_1

    .line 318
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const p1, 0x7f110006

    invoke-virtual {p0, p1, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v4, :cond_2

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const p1, 0x7f110008

    invoke-virtual {p0, p1, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 322
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const p1, 0x7f11000c

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "duration can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static localizeNumber(D)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeNumber(J)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    .line 126
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeStreamCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    long-to-int v0, p1

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v4, 0x7f12030e

    .line 161
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(J)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f11000e

    move-object v2, p0

    move-wide v5, p1

    .line 160
    invoke-static/range {v2 .. v7}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    move-object v2, p0

    const p0, 0x7f12020f

    .line 156
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v2, p0

    const p0, 0x7f120298

    .line 158
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    long-to-int v0, p1

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 p0, -0x1

    if-eq v0, p0, :cond_0

    .line 175
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    const p1, 0x7f120210

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f120299

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeUploadDate(Landroid/content/Context;Lj$/time/OffsetDateTime;)Ljava/lang/String;
    .locals 2

    .line 142
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->formatDate(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1204af

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeViewCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f12030f

    .line 147
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f11000f

    move-object v0, p0

    move-wide v3, p1

    .line 146
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeWatchingCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f120305

    .line 182
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110010

    move-object v0, p0

    move-wide v3, p1

    .line 181
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static migrateAppLanguageSettingIfNecessary(Landroid/content/Context;)V
    .locals 5

    .line 453
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120030

    .line 454
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 455
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const v0, 0x7f1200d2

    .line 463
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 467
    :try_start_0
    invoke-static {v2}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    .line 466
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 469
    :catch_0
    sget-object p0, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    const-string v0, "Failed to migrate previous custom app language setting to public per-app language APIs"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static relativeTime(Lj$/time/OffsetDateTime;)Ljava/lang/String;
    .locals 1

    .line 383
    sget-object v0, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    invoke-virtual {v0, p0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static relativeTimeOrTextual(Landroid/content/Context;Lorg/schabi/newpipe/extractor/localization/DateWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    .line 403
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 404
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120442

    .line 405
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->relativeTime(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->relativeTime(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replyCount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    int-to-long v3, p1

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f11000b

    const/4 v2, 0x0

    move-object v0, p0

    .line 246
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePrettyTime()Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 2

    .line 379
    new-instance v0, Lorg/ocpsoft/prettytime/PrettyTime;

    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private static round(DI)D
    .locals 1

    .line 426
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static shortCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 187
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {}, Lorg/schabi/newpipe/util/Localization$$ExternalSyntheticApiModelOutline0;->m()Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;

    move-result-object p0

    .line 188
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double v0, p1

    const-wide/32 v2, 0x3b9aca00

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmp-long v8, p1, v2

    if-ltz v8, :cond_2

    const-wide p1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 196
    :goto_0
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/Localization;->round(DI)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v5

    const p1, 0x7f12040e

    .line 195
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v2, 0xf4240

    cmp-long v8, p1, v2

    if-ltz v8, :cond_4

    const-wide p1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, p1

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 201
    :goto_1
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/Localization;->round(DI)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v5

    const p1, 0x7f12040f

    .line 200
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/16 v2, 0x3e8

    cmp-long v8, p1, v2

    if-ltz v8, :cond_6

    const-wide p1, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, p1

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 206
    :goto_2
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/Localization;->round(DI)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v5

    const p1, 0x7f120410

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_6
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f12030b

    .line 231
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f11000d

    move-object v0, p0

    move-wide v3, p1

    .line 230
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortViewCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f12030f

    .line 225
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f11000f

    move-object v0, p0

    move-wide v3, p1

    .line 224
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortWatchingCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const v2, 0x7f120305

    .line 220
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f110010

    move-object v0, p0

    move-wide v3, p1

    .line 219
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
