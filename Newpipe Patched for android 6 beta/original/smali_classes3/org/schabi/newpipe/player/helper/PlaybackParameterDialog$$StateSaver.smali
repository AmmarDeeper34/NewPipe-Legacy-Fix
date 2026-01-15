.class public Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "PlaybackParameterDialog$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;",
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

    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.player.helper.PlaybackParameterDialog$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->restore(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "initialPitchPercent"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 63
    const-string v1, "initialSkipSilence"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 64
    const-string v1, "initialTempo"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 65
    const-string v1, "pitchPercent"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 66
    const-string v1, "skipSilence"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 67
    const-string v1, "tempo"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->save(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "initialPitchPercent"

    iget-wide v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 52
    const-string v1, "initialSkipSilence"

    iget-boolean v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 53
    const-string v1, "initialTempo"

    iget-wide v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 54
    const-string v1, "pitchPercent"

    iget-wide v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 55
    const-string v1, "skipSilence"

    iget-boolean v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 56
    const-string v1, "tempo"

    iget-wide v2, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    return-void
.end method
