.class public Lorg/schabi/newpipe/player/helper/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final powerManager:Landroid/os/PowerManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockManager@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->TAG:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->powerManager:Landroid/os/PowerManager;

    .line 22
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public acquireWifiAndCpu()V
    .locals 3

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "acquireWifiAndCpu() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->powerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/LockManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/LockManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 37
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_2
    :goto_0
    return-void
.end method

.method public releaseWifiAndCpu()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseWifiAndCpu() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method
