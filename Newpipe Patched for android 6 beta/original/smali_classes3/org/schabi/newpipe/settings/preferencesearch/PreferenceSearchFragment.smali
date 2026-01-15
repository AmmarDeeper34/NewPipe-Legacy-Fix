.class public Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceSearchFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PreferenceSearchFragment"


# instance fields
.field private adapter:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

.field private binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

.field private searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private setEmptyViewShown(Z)V
    .locals 4

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->emptyStateView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 39
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    .line 41
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

    .line 44
    new-instance p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;)V

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->setOnItemClickListener(Ljava/util/function/Consumer;)V

    .line 45
    iget-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->searchResults:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    iget-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchFragmentBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onItemClicked(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;->onSearchResultClicked(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)V

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must implement SearchPreferenceResultListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSearcher(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;

    return-void
.end method

.method public updateSearchResults(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->searcher:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;->searchFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->setEmptyViewShown(Z)V

    :cond_1
    :goto_0
    return-void
.end method
