.class Lcom/livefront/bridge/BridgeDelegate;
.super Ljava/lang/Object;
.source "BridgeDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.livefront.bridge.BridgeDelegate"


# instance fields
.field private mActivityCount:I

.field private final mDiskHandler:Lcom/livefront/bridge/disk/DiskHandler;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsClearAllowed:Z

.field private mIsConfigChange:Z

.field private mIsFirstCreateCall:Z

.field private final mObjectUuidMap:Ljava/util/Map;

.field private final mPendingWriteTasks:Ljava/util/List;

.field private volatile mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

.field private final mUuidBundleMap:Ljava/util/Map;

.field private final mViewSavedStateHandler:Lcom/livefront/bridge/ViewSavedStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/livefront/bridge/SavedStateHandler;Lcom/livefront/bridge/ViewSavedStateHandler;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/List;

    .line 49
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 55
    iput-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    .line 56
    iput-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    .line 65
    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 66
    iput-object p4, p0, Lcom/livefront/bridge/BridgeDelegate;->mViewSavedStateHandler:Lcom/livefront/bridge/ViewSavedStateHandler;

    .line 67
    new-instance p3, Lcom/livefront/bridge/disk/FileDiskHandler;

    invoke-direct {p3, p1, p2}, Lcom/livefront/bridge/disk/FileDiskHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/DiskHandler;

    .line 69
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->registerForLifecycleEvents(Landroid/content/Context;)V

    .line 72
    sget-object p2, Lcom/livefront/bridge/BridgeDelegate;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic access$000(Lcom/livefront/bridge/BridgeDelegate;)Lcom/livefront/bridge/disk/DiskHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/DiskHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->writeToDisk(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->clearDataFromDisk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/livefront/bridge/BridgeDelegate;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$602(Lcom/livefront/bridge/BridgeDelegate;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    return p1
.end method

.method static synthetic access$702(Lcom/livefront/bridge/BridgeDelegate;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    return p1
.end method

.method static synthetic access$800(Lcom/livefront/bridge/BridgeDelegate;Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->isFreshStart(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$908(Lcom/livefront/bridge/BridgeDelegate;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/livefront/bridge/BridgeDelegate;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    return v0
.end method

.method private clearDataForUuid(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->clearDataFromDisk(Ljava/lang/String;)V

    return-void
.end method

.method private clearDataFromDisk(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate$2;-><init>(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/livefront/bridge/BridgeDelegate;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "uuid_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOrGenerateUuid(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getSavedBundleAndUnwrap(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->readFromDisk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-static {v0}, Lcom/livefront/bridge/wrapper/WrapperUtils;->unwrapOptimizedObjects(Landroid/os/Bundle;)V

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->clearDataForUuid(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSavedUuid(Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    .line 151
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method private isAppInForeground()Z
    .locals 1

    .line 160
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isFreshStart(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    if-eqz p2, :cond_1

    return v1

    .line 175
    :cond_1
    const-string p2, "activity"

    .line 176
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 177
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v2, 0x1

    if-lt p2, v0, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/livefront/bridge/BridgeDelegate$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    return v1

    .line 181
    :cond_3
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1}, Lcom/livefront/bridge/BridgeDelegate$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p1

    if-ne p1, v2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private queueDiskWritingIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 195
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate$3;-><init>(Lcom/livefront/bridge/BridgeDelegate;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 217
    :cond_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-direct {p0, v0}, Lcom/livefront/bridge/BridgeDelegate;->doInBackground(Ljava/lang/Runnable;)V

    .line 221
    invoke-direct {p0}, Lcom/livefront/bridge/BridgeDelegate;->isAppInForeground()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 229
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private readFromDisk(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/DiskHandler;

    invoke-interface {v0, p1}, Lcom/livefront/bridge/disk/DiskHandler;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/livefront/bridge/util/BundleUtil;->fromBytes([B)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 244
    const-string v0, "Bridge"

    const-string v1, "Unable to properly convert disk-persisted data to a Bundle. Some state loss may occur."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method private registerForLifecycleEvents(Landroid/content/Context;)V
    .locals 1

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$4;

    invoke-direct {v0, p0}, Lcom/livefront/bridge/BridgeDelegate$4;-><init>(Lcom/livefront/bridge/BridgeDelegate;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private saveToMemoryAndDiskIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 378
    invoke-static {p2}, Lcom/livefront/bridge/wrapper/WrapperUtils;->wrapOptimizedObjects(Landroid/os/Bundle;)V

    .line 379
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->queueDiskWritingIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private writeToDisk(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 385
    invoke-static {p2}, Lcom/livefront/bridge/util/BundleUtil;->toBytes(Landroid/os/Bundle;)[B

    move-result-object p2

    .line 386
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/DiskHandler;

    invoke-interface {v0, p1, p2}, Lcom/livefront/bridge/disk/DiskHandler;->putBytes(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method clearAll()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$1;

    invoke-direct {v0, p0}, Lcom/livefront/bridge/BridgeDelegate$1;-><init>(Lcom/livefront/bridge/BridgeDelegate;)V

    invoke-direct {p0, v0}, Lcom/livefront/bridge/BridgeDelegate;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->getSavedUuid(Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, p2}, Lcom/livefront/bridge/BridgeDelegate;->getSavedBundleAndUnwrap(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    invoke-interface {v0, p1, p2}, Lcom/livefront/bridge/SavedStateHandler;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 340
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getOrGenerateUuid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    invoke-interface {v1, p1, p2}, Lcom/livefront/bridge/SavedStateHandler;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/livefront/bridge/BridgeDelegate;->saveToMemoryAndDiskIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
