.class public final Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "NotificationsSettingsFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private loader:Lio/reactivex/rxjava3/disposables/Disposable;

.field private notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private streamsNotificationsPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$ppytuoWPqZOxvozcFTqwojU70FU(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->onResume$lambda$0$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$onError(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setNotificationWarningSnackbar$p(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public static final synthetic access$updateSubscriptions(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->updateSubscriptions(Ljava/util/List;)V

    return-void
.end method

.method private final onError(Ljava/lang/Throwable;)V
    .locals 9

    .line 132
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 134
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v4, "Get subscriptions list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private static final onResume$lambda$0$0(Landroid/view/View;)V
    .locals 2

    .line 83
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->openNewPipeSystemNotificationSettings(Landroid/content/Context;)V

    return-void
.end method

.method private final updateEnabledState(Z)V
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->streamsNotificationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private final updateSubscriptions(Ljava/util/List;)V
    .locals 3

    .line 1788
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1790
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 126
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getNotificationMode()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    .line 1790
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    const v0, 0x7f120467

    .line 127
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object v0

    const-string v2, "requirePreference(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f15000b

    .line 31
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const p1, 0x7f120138

    .line 32
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->streamsNotificationsPreference:Landroidx/preference/SwitchPreference;

    .line 35
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->updateEnabledState(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 109
    iget-object v1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 110
    :cond_1
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 68
    invoke-super {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->onResume()V

    .line 73
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    move-result v0

    .line 74
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->updateEnabledState(Z)V

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f120330

    const/4 v3, -0x2

    .line 77
    invoke-static {v0, v1, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 82
    new-instance v1, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$$ExternalSyntheticLambda0;-><init>()V

    const v3, 0x7f1203f0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    const/16 v1, -0x100

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 86
    new-instance v1, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 77
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 99
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptions()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 101
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 102
    new-instance v1, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V

    new-instance v2, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f120469

    .line 50
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f12046d

    .line 51
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f120138

    .line 55
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 56
    sget-object p2, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 58
    sget-object p2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;)V

    return-void

    .line 62
    :cond_2
    sget-object p2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->cancel(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    .line 54
    :cond_4
    :goto_1
    sget-object p2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    return-void
.end method
