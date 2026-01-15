.class public Lorg/schabi/newpipe/settings/ContentSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "ContentSettingsFragment.java"


# instance fields
.field private youtubeRestrictedModeEnabledKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EoiabYVyqrAn-0rMVYR8gfUthEA(Lorg/schabi/newpipe/settings/ContentSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->lambda$setupAppLanguagePreferences$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EwWlF8RlbZvRf590F6PJiDD1OOw(Lorg/schabi/newpipe/settings/ContentSettingsFragment;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->lambda$setupAppLanguagePreferences$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qk91E2KNNdig0K-m3LD7GRRSauA(Lorg/schabi/newpipe/settings/ContentSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->lambda$setupImageQualityPref$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$i8STQFFpuHTFRob4oSgWdZkdQ4I(Lorg/schabi/newpipe/settings/ContentSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->lambda$setupAppLanguagePreferences$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$setupAppLanguagePreferences$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 1

    .line 50
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f12047c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setupAppLanguagePreferences$1(Landroidx/preference/Preference;)Z
    .locals 3

    .line 54
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_LOCALE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setupAppLanguagePreferences$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 64
    check-cast p2, Ljava/lang/String;

    const p1, 0x7f1200d2

    .line 65
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 67
    :cond_0
    invoke-static {p2}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setupImageQualityPref$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->fromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    move-result-object p2

    .line 75
    invoke-static {p2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->setPreferredImageQuality(Lorg/schabi/newpipe/util/image/PreferredImageQuality;)V

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->clearCache(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12048a

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "Unable to clear Picasso cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setupAppLanguagePreferences()V
    .locals 3

    const v0, 0x7f120030

    .line 42
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const v0, 0x7f12002f

    .line 48
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 53
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 63
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupImageQualityPref()V
    .locals 2

    const v0, 0x7f1201f6

    .line 73
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f1204da

    .line 33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 37
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->setupAppLanguagePreferences()V

    .line 38
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->setupImageQualityPref()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocalization(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 110
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/NewPipe;->setupLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    .line 111
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->resetFormat()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lorg/schabi/newpipe/DownloaderImpl;->getInstance()Lorg/schabi/newpipe/DownloaderImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceTreeClick: null context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
