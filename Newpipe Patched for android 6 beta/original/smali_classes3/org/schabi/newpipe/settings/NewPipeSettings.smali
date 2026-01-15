.class public abstract Lorg/schabi/newpipe/settings/NewPipeSettings;
.super Ljava/lang/Object;
.source "NewPipeSettings.java"


# direct methods
.method private static disableMediaTunnelingIfNecessary(Landroid/content/Context;)V
    .locals 7

    .line 146
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200f8

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200fc

    .line 149
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12026f

    .line 151
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 153
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x3e2

    const/4 v6, 0x1

    if-eq v5, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, -0x1

    .line 157
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    .line 160
    :cond_1
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/App;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 162
    :cond_3
    :goto_1
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->setMediaTunneling(Landroid/content/Context;)V

    return-void
.end method

.method public static getDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNewPipeChildFolderPathForDir(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "NewPipe"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initSettings(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-static {p0}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->runMigrationsIfNeeded(Landroid/content/Context;)V

    const v0, 0x7f150009

    const/4 v1, 0x1

    .line 53
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f15000e

    .line 54
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150006

    .line 55
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150001

    .line 56
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150008

    .line 57
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150004

    .line 58
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f15000c

    .line 59
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f15000d

    .line 60
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150005

    .line 61
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f150003

    .line 62
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 64
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->disableMediaTunnelingIfNecessary(Landroid/content/Context;)V

    return-void
.end method

.method static saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f12010b

    .line 76
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private static saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 82
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 85
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 91
    invoke-static {p2}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getNewPipeChildFolderPathForDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method static saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f120111

    .line 71
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setMediaTunneling(Landroid/content/Context;)V
    .locals 5

    .line 173
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-static {}, Lorg/schabi/newpipe/util/DeviceUtils;->shouldSupportMediaTunneling()Z

    move-result v1

    const/16 v2, 0x3e2

    const v3, 0x7f12026f

    if-nez v1, :cond_0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1200f8

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1200fc

    .line 177
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 181
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 183
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showLocalSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    const v0, 0x7f120439

    .line 135
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->showSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;I)Z

    move-result p0

    return p0
.end method

.method public static showRemoteSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    const v0, 0x7f120448

    .line 141
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->showSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;I)Z

    move-result p0

    return p0
.end method

.method private static showSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;I)Z
    .locals 2

    const v0, 0x7f120449

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 129
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static useStorageAccessFramework(Landroid/content/Context;)Z
    .locals 3

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 108
    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const v0, 0x7f120461

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 117
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
