.class public final Lorg/schabi/newpipe/util/ReleaseVersionUtil;
.super Ljava/lang/Object;
.source "ReleaseVersionUtil.kt"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/util/ReleaseVersionUtil;

.field private static final isReleaseApk$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$IWIQOZOq3EPNe3-lh21bkvkpweI()Z
    .locals 1

    .line 0
    invoke-static {}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk_delegate$lambda$0()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->INSTANCE:Lorg/schabi/newpipe/util/ReleaseVersionUtil;

    .line 19
    new-instance v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ReleaseVersionUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final isReleaseApk_delegate$lambda$0()Z
    .locals 11

    .line 22
    const-string v0, "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlin/text/HexExtensionsKt;->hexToByteArray$default(Ljava/lang/String;Lkotlin/text/HexFormat;ILjava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Landroidx/core/content/pm/PackageInfoCompat;->hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 28
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 29
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v6, "Could not find package info"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    invoke-virtual {v0, v1, v3}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return v2
.end method


# virtual methods
.method public final coerceUpdateCheckExpiry(Ljava/lang/String;)J
    .locals 3

    .line 45
    invoke-static {}, Lj$/time/ZonedDateTime;->now()Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 47
    sget-object v1, Lj$/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v1, p1}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Lj$/time/temporal/TemporalAccessor;

    move-result-object p1

    invoke-static {p1}, Lj$/time/ZonedDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    move-result-object p1

    const-wide/16 v1, 0x42

    .line 48
    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Lj$/time/ZonedDateTime;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isLastUpdateCheckExpired(J)Z
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    move-result-object p1

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isReleaseApk()Z
    .locals 1

    .line 19
    sget-object v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
