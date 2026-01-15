.class public Lorg/ocpsoft/prettytime/PrettyTime;
.super Ljava/lang/Object;
.source "PrettyTime.java"


# instance fields
.field private volatile cachedUnits:Ljava/util/List;

.field private volatile locale:Ljava/util/Locale;

.field private overrideResourceBundle:Ljava/lang/String;

.field private volatile reference:Lj$/time/Instant;

.field private final units:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$wdY1peoyw5qIEQ5wjDCVqJuPH2I(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;Lorg/ocpsoft/prettytime/TimeUnit;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 76
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->initTimeUnits()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    .line 273
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .locals 2

    .line 1661
    new-instance v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;
    .locals 17

    .line 1666
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v2

    .line 1673
    new-instance v3, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    invoke-direct {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1675
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1676
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1677
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 1678
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMaxQuantity()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 1680
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v11, v13, v9

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 1683
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-interface {v9}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v9

    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v15

    div-long/2addr v9, v15

    :cond_1
    mul-long v9, v9, v7

    cmp-long v11, v9, v0

    if-gtz v11, :cond_3

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1690
    :cond_3
    :goto_2
    invoke-virtual {v3, v6}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V

    cmp-long v2, v7, v0

    if-lez v2, :cond_4

    .line 1692
    invoke-direct/range {p0 .. p2}, Lorg/ocpsoft/prettytime/PrettyTime;->getSign(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 1693
    invoke-virtual {v3, v13, v14}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    return-object v3

    .line 1696
    :cond_4
    div-long v0, p1, v7

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 1697
    invoke-virtual {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    mul-long v0, v0, v7

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    :cond_5
    return-object v3
.end method

.method private getSign(J)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method private initTimeUnits()V
    .locals 1

    .line 1645
    new-instance v0, Lorg/ocpsoft/prettytime/units/JustNow;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/JustNow;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1646
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millisecond;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1647
    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Second;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1648
    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Minute;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1649
    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Hour;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1650
    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Day;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1651
    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Week;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1652
    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Month;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1653
    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Year;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1654
    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Decade;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1655
    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Century;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1656
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millennium;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    return-void
.end method

.method private now()Ljava/util/Date;
    .locals 1

    .line 1640
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method


# virtual methods
.method public approximateDuration(Lj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;
    .locals 0

    if-eqz p1, :cond_0

    .line 350
    invoke-static {p1}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;
    .locals 5

    if-nez p1, :cond_0

    .line 331
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Lj$/time/Instant;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Lj$/time/Instant;

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    .line 334
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const-wide/16 v1, 0x1

    .line 338
    :cond_2
    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lj$/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 823
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Lj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 847
    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 746
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 748
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 749
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 778
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 780
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 781
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1311
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    .line 1316
    :cond_1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1317
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;-><init>(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 1318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method public getUnits()Ljava/util/List;
    .locals 2

    .line 1444
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1446
    new-instance v1, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1447
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 1450
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object v0
.end method

.method public registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    const/4 v0, 0x0

    .line 1489
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 1491
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    const-string v1, "TimeUnit to register must not be null."

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    const-string v2, "TimeFormat to register must not be null."

    .line 1492
    invoke-static {p2, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 1491
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    instance-of v0, p1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v0, :cond_0

    .line 1494
    check-cast p1, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    .line 1495
    :cond_0
    instance-of p1, p2, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz p1, :cond_1

    .line 1496
    check-cast p2, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p2, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1551
    :cond_0
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1552
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1553
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 1555
    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    if-nez p1, :cond_0

    .line 1603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 1605
    :cond_0
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 1606
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1607
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_1

    .line 1608
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_0

    .line 1610
    :cond_2
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 1611
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_3

    .line 1612
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 1614
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrettyTime [reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Lj$/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
