.class public Lorg/schabi/newpipe/settings/HistorySettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "HistorySettingsFragment.java"


# instance fields
.field private cacheWipeKey:Ljava/lang/String;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private playbackStatesClearKey:Ljava/lang/String;

.field private recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field private searchHistoryClearKey:Ljava/lang/String;

.field private viewsHistoryClearKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4APDVbtz1T7Gpz2koAUPVicnMsY(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .line 84
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Delete playback states"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5oCQKThj8o3vRoLKymqdXeP4FTk(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    const p1, 0x7f1204cd

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$6tJ0ILVlf5WTZZKHRaUgzCg_rWo(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$AVvr2gYCCuIkYAKwJbzOdTv6wuk(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .line 107
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Clear orphaned records"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BxEBrszDFJ1D-sIT6Ng-g-EFTaY(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getDeleteSearchHistoryDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$Eh8ba4FZSbi5rJd3LSOvMHipR4w(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$JAnMiW9n0ScsGJe7CQE8tfoYOhM(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 129
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$JJloeiu6CkRbO2INHCzD7PE2rX8(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .line 119
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Delete search history"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kf924hQT8lquaQDFSbb8Or3icgQ(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    const p1, 0x7f1204cc

    const/4 v0, 0x0

    .line 94
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$LBZ4KGNU6ZsN5F8BQ0px66HEE_k(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 154
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lq3kM3zrh7yL_KInkUBQTwKdOis(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    const p1, 0x7f1203d4

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$MhFgJnenVGoUMXMF5CiMtwtEGLs(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 132
    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getWholeStreamHistoryDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 133
    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getRemoveOrphanedRecordsDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$N8FowLPHXZDSP76IfFz0n-c-6_A(Lorg/schabi/newpipe/settings/HistorySettingsFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZW0GPWpVhFaGYrrcKSEjQESpWuw(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$m6vfR2NWK78CtNRuRpp4Kx9T4oQ(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .line 96
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Delete from history"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private static getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteCompleteStreamStateHistory()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 80
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private static getDeleteSearchHistoryDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 114
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteCompleteSearchHistory()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 115
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private static getRemoveOrphanedRecordsDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->removeOrphanedRecords()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 104
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda13;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private static getWholeStreamHistoryDisposable(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 91
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteWholeStreamHistory()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 92
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 2

    .line 45
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const v0, 0x7f1203a8

    .line 46
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    invoke-static {}, Lorg/schabi/newpipe/DownloaderImpl;->getInstance()Lorg/schabi/newpipe/DownloaderImpl;

    move-result-object p2

    const-string v0, "recaptcha_cookies"

    invoke-virtual {p2, v0, v1}, Lorg/schabi/newpipe/DownloaderImpl;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f1203a7

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public static openDeletePlaybackStatesDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 3

    .line 141
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200e6

    .line 142
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda2;-><init>()V

    const v2, 0x7f120070

    .line 143
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p0, p1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda3;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    const p0, 0x7f1200e0

    .line 144
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static openDeleteSearchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 3

    .line 152
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200e8

    .line 153
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda5;-><init>()V

    const v2, 0x7f120070

    .line 154
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p0, p1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda6;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    const p0, 0x7f1200e0

    .line 155
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 3

    .line 127
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200e9

    .line 128
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda0;-><init>()V

    const v2, 0x7f120070

    .line 129
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0, p1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    const p0, 0x7f1200e0

    .line 130
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const p1, 0x7f120274

    .line 36
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->cacheWipeKey:Ljava/lang/String;

    const p1, 0x7f1200a4

    .line 37
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->viewsHistoryClearKey:Ljava/lang/String;

    const p1, 0x7f120099

    .line 38
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->playbackStatesClearKey:Ljava/lang/String;

    const p1, 0x7f1200a0

    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->searchHistoryClearKey:Ljava/lang/String;

    .line 40
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    .line 41
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const p1, 0x7f120095

    .line 43
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 44
    new-instance p2, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/HistorySettingsFragment;Landroidx/preference/Preference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const v0, 0x7f1203a8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->cacheWipeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->getInstance()Lorg/schabi/newpipe/util/InfoCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120273

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->viewsHistoryClearKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->playbackStatesClearKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeletePlaybackStatesDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->searchHistoryClearKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeleteSearchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
