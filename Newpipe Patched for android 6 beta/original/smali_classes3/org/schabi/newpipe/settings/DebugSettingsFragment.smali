.class public Lorg/schabi/newpipe/settings/DebugSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "DebugSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$7Gm3BqeNo4u-ntoeaAzcMreQir0(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->lambda$onCreatePreferences$0(Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lb48XWF1j5-AW0V17teXtuasFK0(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q3FEUBdztE-6yxrmMHShH3IPrY4(Landroidx/preference/Preference;)Z
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->runNow(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$XVZ2INJZ8t0rONebQEKS9-2tO8k(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->setIndicatorsEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$jvPqsgAjCYTT6gGPiieWP4ms7lA(Landroidx/preference/Preference;)Z
    .locals 1

    .line 68
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Dummy"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$orjSIDahtE9hiky58tDzSrf2FtQ(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->lambda$onCreatePreferences$5(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private getBVDLeakCanary()Lj$/util/Optional;
    .locals 2

    .line 91
    :try_start_0
    const-string v0, "org.schabi.newpipe.settings.DebugSettingsBVDLeakCanary"

    .line 92
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 91
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCreatePreferences$0(Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;Landroidx/preference/Preference;)Z
    .locals 0

    .line 49
    invoke-interface {p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;->getNewLeakDisplayActivityIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z
    .locals 1

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Dummy"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreatePreferences$5(Landroidx/preference/Preference;)Z
    .locals 4

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Dummy"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {v0, v1, v3, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const p1, 0x7f120025

    .line 25
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    const p2, 0x7f12043b

    .line 27
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p2

    const v0, 0x7f120433

    .line 29
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    const v1, 0x7f120090

    .line 31
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f1200bf

    .line 33
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v2

    const v3, 0x7f12042c

    .line 35
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v3

    const v4, 0x7f1200c3

    .line 37
    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 40
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->getBVDLeakCanary()Lj$/util/Optional;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 43
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v6

    invoke-virtual {p2, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 45
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 48
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {p1, p0, v5}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    const v5, 0x7f120221

    .line 53
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    .line 54
    invoke-virtual {p2, v5}, Landroidx/preference/Preference;->setSummary(I)V

    .line 57
    :goto_0
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;)V

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    new-instance p1, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;)V

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
