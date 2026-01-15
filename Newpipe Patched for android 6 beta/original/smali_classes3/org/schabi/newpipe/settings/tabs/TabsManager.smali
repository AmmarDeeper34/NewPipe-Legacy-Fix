.class public final Lorg/schabi/newpipe/settings/tabs/TabsManager;
.super Ljava/lang/Object;
.source "TabsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private savedTabsChangeListener:Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;

.field private final savedTabsKey:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$POyJhuXl2mNWaVaEwrhAgjWnKps(Lorg/schabi/newpipe/settings/tabs/TabsManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->lambda$getPreferenceChangeListener$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->context:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const v0, 0x7f1203cf

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsKey:Ljava/lang/String;

    return-void
.end method

.method public static getManager(Landroid/content/Context;)Lorg/schabi/newpipe/settings/tabs/TabsManager;
    .locals 1

    .line 27
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/TabsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPreferenceChangeListener()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1

    .line 75
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/TabsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/tabs/TabsManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/tabs/TabsManager;)V

    return-object v0
.end method

.method private synthetic lambda$getPreferenceChangeListener$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsChangeListener:Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;->onTabsChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultTabs()Ljava/util/List;
    .locals 1

    .line 50
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getDefaultTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getTabsFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 35
    :catch_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->context:Landroid/content/Context;

    const v1, 0x7f1203ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getDefaultTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetTabs()V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTabs(Ljava/util/List;)V
    .locals 2

    .line 41
    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getJsonToSave(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSavedTabsListener(Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsChangeListener:Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;

    .line 62
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getPreferenceChangeListener()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unsetSavedTabsListener()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 71
    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager;->savedTabsChangeListener:Lorg/schabi/newpipe/settings/tabs/TabsManager$SavedTabsChangeListener;

    return-void
.end method
