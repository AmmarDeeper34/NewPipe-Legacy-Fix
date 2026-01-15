.class final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;
.super Landroid/media/AudioDeviceCallback;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioDeviceCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method
