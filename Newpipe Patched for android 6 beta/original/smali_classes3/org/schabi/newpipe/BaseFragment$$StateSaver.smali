.class public Lorg/schabi/newpipe/BaseFragment$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "BaseFragment$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/BaseFragment;",
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

    sput-object v0, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.BaseFragment$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/schabi/newpipe/BaseFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "useAsFrontPage"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/BaseFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "useAsFrontPage"

    iget-boolean p1, p1, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method
