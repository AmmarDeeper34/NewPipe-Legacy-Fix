.class public final synthetic Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->$r8$lambda$-unlWJtr5UEMLFMM3UJN4iOvxG4(Ljava/lang/String;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
