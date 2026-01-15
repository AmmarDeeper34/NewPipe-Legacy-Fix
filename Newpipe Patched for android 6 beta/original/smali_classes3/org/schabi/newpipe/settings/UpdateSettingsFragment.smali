.class public Lorg/schabi/newpipe/settings/UpdateSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "UpdateSettingsFragment.java"


# instance fields
.field private final manualUpdateClick:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private final updatePreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$CKgvd32IWeEFxt_h_Zf8V4Z9_JY(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->lambda$new$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mXgFzvruuJTBB5MJjrEkubVsWXg(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 54
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->setAutoUpdateCheckEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xjOqj-Y54TbnaRVVICjCaV0LUWk(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->lambda$new$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yNOcp4AEoXVEPetaYisWJJAeKPc(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 49
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->setAutoUpdateCheckEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 15
    new-instance v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->updatePreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 27
    new-instance v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->manualUpdateClick:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public static askForConsentToUpdateChecks(Landroid/content/Context;)V
    .locals 3

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12008e

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120050

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204d4

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1202f9

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 17
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const v0, 0x7f1204a9

    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 19
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/schabi/newpipe/NewVersionWorker;->enqueueNewVersionCheckingWork(Landroid/content/Context;Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$1(Landroidx/preference/Preference;)Z
    .locals 2

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120091

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/schabi/newpipe/NewVersionWorker;->enqueueNewVersionCheckingWork(Landroid/content/Context;Z)V

    return v0
.end method

.method private static setAutoUpdateCheckEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 60
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1204a9

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const v0, 0x7f1204aa

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static wasUserAskedForConsent(Landroid/content/Context;)Z
    .locals 2

    .line 73
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1204aa

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const p1, 0x7f1204a9

    .line 37
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->updatePreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 38
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f120253

    .line 39
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->manualUpdateClick:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 40
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
