.class public Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "SearchFragment$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/fragments/list/search/SearchFragment;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.fragments.list.search.SearchFragment$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 68
    sget-object v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "contentFilter"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getStringArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 69
    const-string v1, "filterItemCheckedId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 70
    const-string v1, "isCorrectedSearch"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 71
    const-string v1, "lastSearchedString"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 72
    const-string v1, "metaInfo"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Lorg/schabi/newpipe/extractor/MetaInfo;

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 73
    const-string v1, "searchString"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 74
    const-string v1, "searchSuggestion"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 75
    const-string v1, "serviceId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 76
    const-string v1, "sortFilter"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 77
    const-string v1, "wasSearchFocused"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 52
    sget-object v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "contentFilter"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putStringArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    const-string v1, "filterItemCheckedId"

    iget v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 54
    const-string v1, "isCorrectedSearch"

    iget-boolean v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 55
    const-string v1, "lastSearchedString"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "metaInfo"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    const-string v1, "searchString"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "searchSuggestion"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "serviceId"

    iget v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 60
    const-string v1, "sortFilter"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "wasSearchFocused"

    iget-boolean p1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method
