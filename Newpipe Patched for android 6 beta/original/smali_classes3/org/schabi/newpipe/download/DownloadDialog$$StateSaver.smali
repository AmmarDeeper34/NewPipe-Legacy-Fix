.class public Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "DownloadDialog$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/download/DownloadDialog;",
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

    sput-object v0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    const-string v2, "org.schabi.newpipe.download.DownloadDialog$$StateSaver"

    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->restore(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentInfo"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iput-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 65
    const-string v1, "selectedAudioIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 66
    const-string v1, "selectedAudioTrackIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 67
    const-string v1, "selectedSubtitleIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 68
    const-string v1, "selectedVideoIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 69
    const-string v1, "wrappedAudioTracks"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    iput-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 70
    const-string v1, "wrappedSubtitleStreams"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    iput-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 71
    const-string v1, "wrappedVideoStreams"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    iput-object p2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->save(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "currentInfo"

    iget-object v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    const-string v1, "selectedAudioIndex"

    iget v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 53
    const-string v1, "selectedAudioTrackIndex"

    iget v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 54
    const-string v1, "selectedSubtitleIndex"

    iget v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 55
    const-string v1, "selectedVideoIndex"

    iget v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    const-string v1, "wrappedAudioTracks"

    iget-object v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    const-string v1, "wrappedSubtitleStreams"

    iget-object v2, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    const-string v1, "wrappedVideoStreams"

    iget-object p1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
