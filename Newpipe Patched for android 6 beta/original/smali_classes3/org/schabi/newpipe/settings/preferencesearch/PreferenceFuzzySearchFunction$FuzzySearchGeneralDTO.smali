.class Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;
.super Ljava/lang/Object;
.source "PreferenceFuzzySearchFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FuzzySearchGeneralDTO"
.end annotation


# instance fields
.field private final item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

.field private final score:F


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 50
    invoke-static {}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->-$$Nest$sfgetFUZZY_SCORE()Lorg/apache/commons/text/similarity/FuzzyScore;

    move-result-object v0

    const-string v1, ";"

    .line 51
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getAllRelevantSearchFields()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/text/similarity/FuzzyScore;->fuzzyScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->score:F

    return-void
.end method


# virtual methods
.method public getItem()Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 60
    iget v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->score:F

    return v0
.end method
