.class final Lcom/evernote/android/state/StateSaverImpl;
.super Ljava/lang/Object;
.source "StateSaverImpl.java"


# instance fields
.field private final mInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/evernote/android/state/Injector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/evernote/android/state/Injector;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/evernote/android/state/StateSaverImpl;->mInjectors:Ljava/util/Map;

    return-void
.end method

.method private getInjector(Ljava/lang/Class;)Lcom/evernote/android/state/Injector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/evernote/android/state/Injector;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/evernote/android/state/StateSaverImpl;->mInjectors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector;

    if-nez v0, :cond_3

    .line 34
    iget-object v1, p0, Lcom/evernote/android/state/StateSaverImpl;->mInjectors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$StateSaver"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/state/StateSaverImpl;->getInjector(Ljava/lang/Class;)Lcom/evernote/android/state/Injector;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/evernote/android/state/StateSaverImpl;->mInjectors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private safeGet(Ljava/lang/Object;Lcom/evernote/android/state/Injector;)Lcom/evernote/android/state/Injector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/evernote/android/state/Injector;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/evernote/android/state/Injector;",
            ")TT;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/evernote/android/state/StateSaverImpl;->getInjector(Ljava/lang/Class;)Lcom/evernote/android/state/Injector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :catch_0
    move-exception p2

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to inject state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method restoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 112
    sget-object v0, Lcom/evernote/android/state/Injector$View;->DEFAULT:Lcom/evernote/android/state/Injector$View;

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/state/StateSaverImpl;->safeGet(Ljava/lang/Object;Lcom/evernote/android/state/Injector;)Lcom/evernote/android/state/Injector;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector$View;

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/evernote/android/state/Injector$View;->restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 84
    sget-object v0, Lcom/evernote/android/state/Injector$Object;->DEFAULT:Lcom/evernote/android/state/Injector$Object;

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/state/StateSaverImpl;->safeGet(Ljava/lang/Object;Lcom/evernote/android/state/Injector;)Lcom/evernote/android/state/Injector;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector$Object;

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/evernote/android/state/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method saveInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/evernote/android/state/Injector$View;->DEFAULT:Lcom/evernote/android/state/Injector$View;

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/state/StateSaverImpl;->safeGet(Ljava/lang/Object;Lcom/evernote/android/state/Injector;)Lcom/evernote/android/state/Injector;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector$View;

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/evernote/android/state/Injector$View;->save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/evernote/android/state/Injector$Object;->DEFAULT:Lcom/evernote/android/state/Injector$Object;

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/state/StateSaverImpl;->safeGet(Ljava/lang/Object;Lcom/evernote/android/state/Injector;)Lcom/evernote/android/state/Injector;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/state/Injector$Object;

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/evernote/android/state/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method setEnabledForAllActivitiesAndSupportFragments(Landroid/app/Application;Z)V
    .locals 2

    .line 131
    sget-object v0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->INSTANCE:Lcom/evernote/android/state/AndroidLifecycleCallbacks;

    iget-boolean v1, v0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    if-eq v1, p2, :cond_1

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 137
    :goto_0
    iput-boolean p2, v0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    :cond_1
    return-void
.end method
