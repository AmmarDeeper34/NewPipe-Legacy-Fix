.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;
.super Ljava/lang/Object;
.source "PreferenceSearchItem.java"


# instance fields
.field private final breadcrumbs:Ljava/lang/String;

.field private final entries:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final searchIndexItemResId:I

.field private final summary:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 54
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 55
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    .line 56
    invoke-static {p5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    .line 57
    iput p6, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->searchIndexItemResId:I

    return-void
.end method


# virtual methods
.method public getAllRelevantSearchFields()Ljava/util/List;
    .locals 4

    .line 94
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getEntries()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getBreadcrumbs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBreadcrumbs()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchIndexItemResId()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->searchIndexItemResId:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
