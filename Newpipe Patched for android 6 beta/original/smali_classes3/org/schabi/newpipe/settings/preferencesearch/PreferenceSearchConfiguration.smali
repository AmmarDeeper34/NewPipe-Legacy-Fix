.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;
.super Ljava/lang/Object;
.source "PreferenceSearchConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;
    }
.end annotation


# instance fields
.field private final parserContainerElements:Ljava/util/List;

.field private final parserIgnoreElements:Ljava/util/List;

.field private searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;

    .line 14
    const-class v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->parserIgnoreElements:Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/preference/PreferenceScreen;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->parserContainerElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getParserContainerElements()Ljava/util/List;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->parserContainerElements:Ljava/util/List;

    return-object v0
.end method

.method public getParserIgnoreElements()Ljava/util/List;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->parserIgnoreElements:Ljava/util/List;

    return-object v0
.end method

.method public getSearcher()Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;->searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration$PreferenceSearchFunction;

    return-object v0
.end method
