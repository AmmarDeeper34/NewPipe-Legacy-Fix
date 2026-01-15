.class public final Lorg/acra/sender/LegacySenderService;
.super Landroid/app/Service;
.source "LegacySenderService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/LegacySenderService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/sender/LegacySenderService$Companion;


# direct methods
.method public static synthetic $r8$lambda$zxK9Z_eqL0-4TAmSLc7Gm3o3B5U(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/sender/LegacySenderService;->onStartCommand$lambda$0(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/sender/LegacySenderService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/sender/LegacySenderService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/sender/LegacySenderService;->Companion:Lorg/acra/sender/LegacySenderService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static final onStartCommand$lambda$0(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V
    .locals 1

    .line 38
    new-instance v0, Lorg/acra/sender/SendingConductor;

    invoke-direct {v0, p0, p1}, Lorg/acra/sender/SendingConductor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lorg/acra/sender/SendingConductor;->sendReports(ZLandroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 0
    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string p2, "acraConfig"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 35
    sget-object p3, Lorg/acra/util/IOUtils;->INSTANCE:Lorg/acra/util/IOUtils;

    const-class v0, Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lorg/acra/util/IOUtils;->deserialize(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/acra/config/CoreConfiguration;

    if-eqz p2, :cond_1

    .line 37
    new-instance p3, Ljava/lang/Thread;

    .line 40
    new-instance v0, Lorg/acra/sender/LegacySenderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/acra/sender/LegacySenderService$$ExternalSyntheticLambda0;-><init>(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V

    .line 37
    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 43
    const-string p3, "SenderService was started but no valid intent was delivered, will now quit"

    .line 7
    invoke-interface {p1, p2, p3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method
