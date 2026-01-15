.class final Landroidx/work/impl/background/systemjob/JobScheduler34;
.super Ljava/lang/Object;
.source "JobSchedulerExt.kt"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/background/systemjob/JobScheduler34;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/work/impl/background/systemjob/JobScheduler34;

    invoke-direct {v0}, Landroidx/work/impl/background/systemjob/JobScheduler34;-><init>()V

    sput-object v0, Landroidx/work/impl/background/systemjob/JobScheduler34;->INSTANCE:Landroidx/work/impl/background/systemjob/JobScheduler34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forNamespace(Landroid/app/job/JobScheduler;)Landroid/app/job/JobScheduler;
    .locals 1

    const-string v0, "jobScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "androidx.work.systemjobscheduler"

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p1

    const-string v0, "jobScheduler.forNamespace(WORKMANAGER_NAMESPACE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
