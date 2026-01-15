.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;
.super Ljava/lang/Object;
.source "PreferenceSearcher.java"


# instance fields
.field private final allEntries:Ljava/util/List;

.field private final configuration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->allEntries:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->configuration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    return-void
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->allEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method searchFor(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->configuration:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->getSearcher()Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->allEntries:Ljava/util/List;

    .line 29
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;->search(Lj$/util/stream/Stream;Ljava/lang/String;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 30
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
