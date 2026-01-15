.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;
.super Ljava/lang/Object;
.source "PreferenceFuzzySearchFunction.java"

# interfaces
.implements Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;,
        Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;
    }
.end annotation


# static fields
.field private static final FUZZY_SCORE:Lorg/apache/commons/text/similarity/FuzzyScore;


# direct methods
.method public static synthetic $r8$lambda$-unlWJtr5UEMLFMM3UJN4iOvxG4(Ljava/lang/String;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;
    .locals 1

    .line 30
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;

    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$NIP7ZCJOMHF4zn2wLraZjcBsvSI(ILorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;)Z
    .locals 0

    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->getScore()F

    move-result p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3e99999a    # 0.3f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$yFNFAbhu36LetIl1sPvPH8sM928(Ljava/lang/String;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;
    .locals 1

    .line 35
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;

    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/lang/String;)V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFUZZY_SCORE()Lorg/apache/commons/text/similarity/FuzzyScore;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->FUZZY_SCORE:Lorg/apache/commons/text/similarity/FuzzyScore;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lorg/apache/commons/text/similarity/FuzzyScore;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/commons/text/similarity/FuzzyScore;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->FUZZY_SCORE:Lorg/apache/commons/text/similarity/FuzzyScore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search(Lj$/util/stream/Stream;Ljava/lang/String;)Lj$/util/stream/Stream;
    .locals 2

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x2

    .line 27
    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda1;-><init>(I)V

    .line 31
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda2;-><init>()V

    .line 32
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda4;-><init>()V

    .line 36
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda5;-><init>()V

    .line 37
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x14

    .line 39
    invoke-interface {p1, v0, v1}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
