.class public Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "BaseListInfoFragment$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;",
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

    sput-object v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 61
    sget-object v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "name"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 62
    const-string v1, "serviceId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 63
    const-string v1, "url"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Landroid/os/Bundle;)V
    .locals 3
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
    sget-object v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "name"

    iget-object v2, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "serviceId"

    iget v2, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 54
    const-string v1, "url"

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
