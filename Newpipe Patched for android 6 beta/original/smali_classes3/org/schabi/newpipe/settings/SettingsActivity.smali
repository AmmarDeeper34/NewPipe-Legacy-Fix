.class public Lorg/schabi/newpipe/settings/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private menuSearchItem:Landroid/view/MenuItem;

.field private searchContainer:Landroid/view/View;

.field private searchEditText:Landroid/widget/EditText;

.field private searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

.field searchText:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field wasSearchActive:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RWgvTRH7_c9Hd4NqcTdstvv7c4Y(Lorg/schabi/newpipe/settings/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->onSearchChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$esSvqogxbXTGgV7znQem0W7-l7Y(Lorg/schabi/newpipe/settings/SettingsActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->lambda$initSearch$0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7r1MRzFlJ1Zi4wIFtSu-G4oeXI(Lorg/schabi/newpipe/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->lambda$initSearch$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/settings/SettingsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private ensureSearchRepresentsApplicationState()V
    .locals 2

    .line 264
    sget-object v0, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->INSTANCE:Lorg/schabi/newpipe/util/ReleaseVersionUtil;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getInstance()Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    move-result-object v0

    const v1, 0x7f15000d

    .line 266
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->setSearchable(Z)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 271
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/settings/SettingsActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 272
    invoke-static {}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getInstance()Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    move-result-object v0

    const v1, 0x7f150005

    .line 273
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object v0

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->setSearchable(Z)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    :cond_1
    return-void
.end method

.method private hideSearchFragment()V
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initSearch(Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;Z)V
    .locals 3

    .line 205
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->settingsToolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a03f6

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    const v0, 0x7f0a03f7

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 211
    invoke-static {p1}, Lcom/jakewharton/rxbinding4/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding4/InitialValueObservable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 213
    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SettingsActivity;)V

    .line 214
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 217
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    const v0, 0x7f0a03f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/SettingsActivity;)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->ensureSearchRepresentsApplicationState()V

    .line 223
    new-instance p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;-><init>()V

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;)V

    .line 229
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchConfiguration;)V

    .line 232
    invoke-static {}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getInstance()Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getAllEntries()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 233
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda3;-><init>()V

    .line 235
    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 237
    new-instance v2, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceParser;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 239
    new-instance v1, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->NAME:Ljava/lang/String;

    .line 243
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    if-eqz p1, :cond_0

    .line 247
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->hideSearchFragment()V

    .line 250
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    if-nez p1, :cond_1

    .line 251
    new-instance p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 253
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->setSearcher(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearcher;)V

    return-void
.end method

.method private instantiateFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method private isSearchActive()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$initSearch$0(Ljava/lang/CharSequence;)V
    .locals 0

    .line 214
    new-instance p1, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/settings/SettingsActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initSearch$1(Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->resetSearchText()V

    return-void
.end method

.method private onSearchChanged()V
    .locals 2

    .line 339
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->updateSearchResults(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetSearchText()V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSettingsFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/high16 v1, 0x7f020000

    const v2, 0x7f020001

    .line 182
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0361

    .line 184
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->getSettingsThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-direct {p0, v1, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->initSearch(Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;Z)V

    .line 100
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/SettingsLayoutBinding;->settingsToolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    if-eqz p1, :cond_1

    .line 104
    iget-boolean p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 106
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/MainSettingsFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/MainSettingsFragment;-><init>()V

    const v1, 0x7f0a0361

    .line 112
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 116
    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-static {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setMenuSearchItem(Landroid/view/MenuItem;)V

    .line 192
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 193
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 152
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 164
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 0

    .line 170
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->instantiateFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->showSettingsFragment(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchResultClicked(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)V
    .locals 3

    .line 351
    sget-boolean v0, Lorg/schabi/newpipe/settings/SettingsActivity;->DEBUG:Z

    const-string v1, "SettingsActivity"

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchResultClicked called result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 361
    invoke-static {}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getInstance()Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getSearchIndexItemResId()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getFragmentClass(I)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate fragment class for resId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getSearchIndexItemResId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0361

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->instantiateFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 377
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/settings/SettingsActivity;->showSettingsFragment(Landroidx/fragment/app/Fragment;)V

    .line 381
    :cond_2
    instance-of v0, v1, Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_3

    .line 382
    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    .line 383
    invoke-static {p1, v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->highlight(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V

    :cond_3
    return-void
.end method

.method public setMenuSearchItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    .line 284
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setSearchActive(Z)V
    .locals 3

    .line 289
    sget-boolean v0, Lorg/schabi/newpipe/settings/SettingsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSearchActive called active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 298
    :cond_1
    iput-boolean p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    xor-int/lit8 v1, p1, 0x1

    .line 302
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz p1, :cond_4

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    sget-object v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->NAME:Ljava/lang/String;

    const v2, 0x7f0a0361

    .line 308
    invoke-virtual {p1, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 309
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 312
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/KeyboardUtil;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    goto :goto_1

    .line 313
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    if-eqz p1, :cond_5

    .line 314
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->hideSearchFragment()V

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->NAME:Ljava/lang/String;

    const/4 v1, 0x1

    .line 316
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 320
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 323
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->resetSearchText()V

    return-void
.end method
