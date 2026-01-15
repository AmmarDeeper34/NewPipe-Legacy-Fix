.class public Lorg/schabi/newpipe/settings/DownloadSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "DownloadSettingsFragment.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private downloadPathAudioPreference:Ljava/lang/String;

.field private downloadPathVideoPreference:Ljava/lang/String;

.field private prefPathAudio:Landroidx/preference/Preference;

.field private prefPathVideo:Landroidx/preference/Preference;

.field private prefStorageAsk:Landroidx/preference/Preference;

.field private final requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private final requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private storageUseSafPreference:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-Uf-iOzEzjG9DpaO0ZQvI5uhTKw(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BagkSPEFvTEFSXPDccq6UdFUceY(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadVideoPathResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-ZB2WU34RuCenzpTiqbgV6Vmx0(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadAudioPathResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;)V

    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 45
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;)V

    .line 46
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private hasInvalidPath(Ljava/lang/String;)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePathPickers(Z)V

    return p2
.end method

.method private launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 195
    invoke-static {v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 193
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private requestDownloadAudioPathResult(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V
    .locals 5

    .line 210
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const v0, 0x7f1201e1

    if-nez p1, :cond_2

    const p1, 0x7f120213

    .line 219
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    invoke-static {v2, p1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 234
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 237
    new-instance v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    invoke-direct {v3, v2, p1, v1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring tree success from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 242
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write permissions on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 245
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error acquiring tree from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f1202fe

    .line 246
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    .line 250
    :cond_4
    invoke-static {p1}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_5

    const p1, 0x7f120113

    const p2, 0x7f120112

    .line 252
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    .line 256
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 259
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    return-void
.end method

.method private requestDownloadVideoPathResult(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadPathResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;)V

    return-void
.end method

.method private showMessageDialog(II)V
    .locals 2

    .line 155
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120332

    .line 158
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 107
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 112
    :cond_0
    const-string p2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    :goto_0
    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePathPickers(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updatePreferencesSummary()V
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    const v1, 0x7f12010f

    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    const v1, 0x7f12010c

    iget-object v2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 87
    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const p1, 0x7f120111

    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    const p1, 0x7f12010b

    .line 54
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    const p1, 0x7f120461

    .line 55
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    const p1, 0x7f120119

    .line 56
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    .line 59
    iget-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    .line 62
    iget-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f12011e

    .line 66
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 67
    iget-object p2, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    const v0, 0x7f12011b

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 71
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePathPickers(Z)V

    .line 73
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->hasInvalidPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->hasInvalidPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    .line 78
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    new-instance p2, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/DownloadSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 164
    sget-boolean v0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick() called with: preference = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 172
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V

    .line 174
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    .line 177
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    return v2

    .line 181
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iget-object p1, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V

    :goto_1
    return v2

    .line 186
    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
