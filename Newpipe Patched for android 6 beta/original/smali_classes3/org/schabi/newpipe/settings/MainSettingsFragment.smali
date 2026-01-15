.class public Lorg/schabi/newpipe/settings/MainSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "MainSettingsFragment.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$4Now7drC7_Ub3BfNW72GpCo_nQU(Lorg/schabi/newpipe/settings/MainSettingsFragment;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/MainSettingsFragment;->lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z
    .locals 1

    .line 57
    iget-object p1, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    return v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    iput-object v0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    const v0, 0x7f0f0011

    .line 50
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p2, 0x0

    .line 52
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/settings/SettingsActivity;->setMenuSearchItem(Landroid/view/MenuItem;)V

    .line 56
    new-instance p2, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/MainSettingsFragment;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 26
    sget-object p1, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->INSTANCE:Lorg/schabi/newpipe/util/ReleaseVersionUtil;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const p2, 0x7f1204ac

    .line 28
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 30
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const p2, 0x7f1204a9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    :cond_0
    sget-boolean p1, Lorg/schabi/newpipe/settings/MainSettingsFragment;->DEBUG:Z

    if-nez p1, :cond_1

    .line 35
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const p2, 0x7f1200c8

    .line 36
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsActivity;->setMenuSearchItem(Landroid/view/MenuItem;)V

    .line 67
    iput-object v1, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 69
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
