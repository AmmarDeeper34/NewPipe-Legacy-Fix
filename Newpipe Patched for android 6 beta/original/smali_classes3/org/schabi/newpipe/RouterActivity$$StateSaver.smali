.class public Lorg/schabi/newpipe/RouterActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "RouterActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/RouterActivity;",
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

    sput-object v0, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.RouterActivity$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/schabi/newpipe/RouterActivity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->restore(Lorg/schabi/newpipe/RouterActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/RouterActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentLinkType"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    iput-object v1, p1, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 60
    const-string v1, "currentServiceId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 61
    const-string v1, "selectedRadioPosition"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/RouterActivity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->save(Lorg/schabi/newpipe/RouterActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/RouterActivity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/schabi/newpipe/RouterActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentLinkType"

    iget-object v2, p1, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    const-string v1, "currentServiceId"

    iget v2, p1, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 53
    const-string v1, "selectedRadioPosition"

    iget p1, p1, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method
