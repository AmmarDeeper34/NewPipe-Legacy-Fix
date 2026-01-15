.class public Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "VideoAudioSettingsFragment.java"


# instance fields
.field private listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$4DbmZp76tmBmkQU8vwtnquMwph0(Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->lambda$onCreatePreferences$1(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8OFhyXBrh6cedNrriKo6ojv8Tko(Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->lambda$onCreatePreferences$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/PermissionHelper;->checkSystemAlertWindowPermission(Landroid/content/Context;)Z

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$1(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const v0, 0x7f12028c

    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x7f120290

    .line 40
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 43
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const p2, 0x7f120359

    const/4 v0, -0x2

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;)V

    const v0, 0x7f1203f0

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_0
    const p1, 0x7f1204b8

    .line 50
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateSeekOptions()V

    return-void

    :cond_1
    const p1, 0x7f12042d

    .line 52
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateResolutionOptions()V

    :cond_2
    return-void
.end method

.method private updateResolutionOptions()V
    .locals 13

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f12042d

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v2, 0x7f030024

    const v4, 0x7f030010

    .line 71
    invoke-static {v0, v2, v4, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/List;

    move-result-object v2

    const v5, 0x7f030025

    const v6, 0x7f030011

    .line 76
    invoke-static {v0, v5, v6, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/List;

    move-result-object v5

    const v7, 0x7f030019

    const v8, 0x7f03000f

    .line 81
    invoke-static {v0, v7, v8, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/List;

    move-result-object v7

    const v9, 0x7f030018

    .line 87
    invoke-static {v0, v9, v4, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/List;

    move-result-object v4

    const v9, 0x7f1200d7

    .line 93
    invoke-virtual {p0, v9}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Landroidx/preference/ListPreference;

    const v10, 0x7f1200d4

    .line 95
    invoke-virtual {p0, v10}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/ListPreference;

    const v11, 0x7f12022a

    .line 97
    invoke-virtual {p0, v11}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Landroidx/preference/ListPreference;

    .line 101
    new-array v12, v3, [Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 102
    new-array v12, v3, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 103
    new-array v12, v3, [Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 104
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 105
    new-array v2, v3, [Ljava/lang/String;

    .line 106
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {v11, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 107
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-nez v1, :cond_2

    .line 112
    invoke-virtual {v9}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v0}, Lorg/schabi/newpipe/util/ListHelper;->isHighResolutionSelected(Ljava/lang/String;ILandroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v9, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 117
    :cond_0
    invoke-virtual {v10}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v0}, Lorg/schabi/newpipe/util/ListHelper;->isHighResolutionSelected(Ljava/lang/String;ILandroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v10, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 122
    :cond_1
    invoke-virtual {v11}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v0}, Lorg/schabi/newpipe/util/ListHelper;->isHighResolutionSelected(Ljava/lang/String;ILandroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v11, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    :cond_2
    return-void
.end method

.method private updateSeekOptions()V
    .locals 13

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 140
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f1204b8

    .line 143
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 145
    array-length v5, v1

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x5

    if-ge v7, v5, :cond_1

    aget-object v10, v1, v7

    .line 147
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    if-eqz v4, :cond_0

    .line 148
    rem-int/lit8 v12, v11, 0xa

    if-ne v12, v9, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v9, 0x7f11000c

    .line 155
    :try_start_0
    invoke-virtual {v0, v9, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v6

    .line 154
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f1203de

    .line 164
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 165
    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 166
    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v4, :cond_2

    .line 168
    div-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v2, v1, 0xa

    if-ne v2, v9, :cond_2

    add-int/2addr v1, v9

    mul-int/lit16 v2, v1, 0x3e8

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const v1, 0x7f1202e8

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 29
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateSeekOptions()V

    .line 30
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->updateResolutionOptions()V

    .line 31
    new-instance p1, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;)V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 192
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 182
    invoke-super {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->onResume()V

    .line 183
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 184
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
