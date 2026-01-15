.class public Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;
.super Lcom/evernote/android/state/Injector$View;
.source "CollapsibleView$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/views/CollapsibleView;",
        ">",
        "Lcom/evernote/android/state/Injector$View<",
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

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 44
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.views.CollapsibleView$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$View;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .line 41
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->restore(Lorg/schabi/newpipe/views/CollapsibleView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public restore(Lorg/schabi/newpipe/views/CollapsibleView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 60
    check-cast p2, Landroid/os/Bundle;

    .line 61
    sget-object p1, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v0, "currentState"

    invoke-virtual {p1, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .line 41
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->save(Lorg/schabi/newpipe/views/CollapsibleView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public save(Lorg/schabi/newpipe/views/CollapsibleView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 52
    sget-object p1, Lorg/schabi/newpipe/views/CollapsibleView$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    invoke-virtual {p1, p2}, Lcom/evernote/android/state/InjectionHelper;->putParent(Landroid/os/Parcelable;)Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 53
    throw p1
.end method
