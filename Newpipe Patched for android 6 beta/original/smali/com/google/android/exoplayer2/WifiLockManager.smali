.class final Lcom/google/android/exoplayer2/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WifiLockManager"


# instance fields
.field private enabled:Z

.field private stayAwake:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private updateWifiLock()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->enabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void

    .line 97
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 64
    const-string p1, "WifiLockManager"

    const-string v0, "WifiManager is null, therefore not creating the WifiLock."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 67
    const-string v2, "ExoPlayer:WifiLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 71
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->enabled:Z

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WifiLockManager;->updateWifiLock()V

    return-void
.end method

.method public setStayAwake(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WifiLockManager;->updateWifiLock()V

    return-void
.end method
