.class public Lorg/schabi/newpipe/util/AudioTrackAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;
    }
.end annotation


# instance fields
.field private final tracksWrapper:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter;->tracksWrapper:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter;->tracksWrapper:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/AudioTrackAdapter;->getItem(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/util/List;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter;->tracksWrapper:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->getTracksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 49
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0104

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a042a

    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v2, 0x7f0a0398

    .line 59
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0399

    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a039a

    .line 61
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/AudioTrackAdapter;->getItem(I)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    const/16 v5, 0x8

    .line 66
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
