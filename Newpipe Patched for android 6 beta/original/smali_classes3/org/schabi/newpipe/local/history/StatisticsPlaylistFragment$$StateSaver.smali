.class public Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "StatisticsPlaylistFragment$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver<",
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

    sput-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.local.history.StatisticsPlaylistFragment$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->restore(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 59
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "itemsListState"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    iput-object p2, p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->save(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 52
    sget-object v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "itemsListState"

    iget-object p1, p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
