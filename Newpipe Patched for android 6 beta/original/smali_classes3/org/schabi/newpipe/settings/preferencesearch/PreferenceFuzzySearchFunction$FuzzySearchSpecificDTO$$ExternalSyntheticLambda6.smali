.class public final synthetic Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->$r8$lambda$WaB7c0XcpssEcWtI4Y3ulXusPfA(Ljava/lang/String;Landroid/util/Pair;)D

    move-result-wide v0

    return-wide v0
.end method
