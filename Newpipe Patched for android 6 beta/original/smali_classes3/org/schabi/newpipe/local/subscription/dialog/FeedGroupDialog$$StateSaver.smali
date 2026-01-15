.class public Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "FeedGroupDialog$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 65
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentScreen"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 66
    const-string v1, "iconsListState"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 67
    const-string v1, "selectedIcon"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 68
    const-string v1, "selectedSubscriptions"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 69
    const-string v1, "subscriptionsCurrentSearchQuery"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 70
    const-string v1, "subscriptionsListState"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 71
    const-string v1, "subscriptionsShowOnlyUngrouped"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 72
    const-string v1, "wasSearchSubscriptionsVisible"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    .line 73
    const-string v1, "wasSubscriptionSelectionChanged"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentScreen"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    const-string v1, "iconsListState"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    const-string v1, "selectedIcon"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 54
    const-string v1, "selectedSubscriptions"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    const-string v1, "subscriptionsCurrentSearchQuery"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "subscriptionsListState"

    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v1, "subscriptionsShowOnlyUngrouped"

    iget-boolean v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 58
    const-string v1, "wasSearchSubscriptionsVisible"

    iget-boolean v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 59
    const-string v1, "wasSubscriptionSelectionChanged"

    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method
