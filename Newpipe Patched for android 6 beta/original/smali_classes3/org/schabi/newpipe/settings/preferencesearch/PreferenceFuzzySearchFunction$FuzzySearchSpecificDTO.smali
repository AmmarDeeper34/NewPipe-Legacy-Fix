.class Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;
.super Ljava/lang/Object;
.source "PreferenceFuzzySearchFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FuzzySearchSpecificDTO"
.end annotation


# static fields
.field private static final WEIGHT_MAP:Ljava/util/Map;


# instance fields
.field private final item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

.field private final score:D


# direct methods
.method public static synthetic $r8$lambda$ATMMGZW0BumitwawMfDemfJq3DU(Landroid/util/Pair;)Z
    .locals 0

    .line 83
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$BlAayyg7UMZJCzg-MDtPwYxS3S8(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/util/Map$Entry;)Landroid/util/Pair;
    .locals 2

    .line 82
    new-instance v0, Landroid/util/Pair;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$WaB7c0XcpssEcWtI4Y3ulXusPfA(Ljava/lang/String;Landroid/util/Pair;)D
    .locals 2

    .line 85
    invoke-static {}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->-$$Nest$sfgetFUZZY_SCORE()Lorg/apache/commons/text/similarity/FuzzyScore;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lorg/apache/commons/text/similarity/FuzzyScore;->fuzzyScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    float-to-double p0, p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda1;-><init>()V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 67
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda2;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda3;-><init>()V

    move-object v5, v3

    .line 65
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->WEIGHT_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 81
    sget-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->WEIGHT_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)V

    .line 82
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda5;-><init>()V

    .line 83
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lj$/util/stream/Collectors;->averagingDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->score:D

    return-void
.end method


# virtual methods
.method public getItem()Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->score:D

    return-wide v0
.end method
