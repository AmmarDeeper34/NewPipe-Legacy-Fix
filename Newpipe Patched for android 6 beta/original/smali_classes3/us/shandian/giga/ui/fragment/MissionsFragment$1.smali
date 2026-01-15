.class Lus/shandian/giga/ui/fragment/MissionsFragment$1;
.super Ljava/lang/Object;
.source "MissionsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/ui/fragment/MissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;


# direct methods
.method public static synthetic $r8$lambda$ZP5kFeMPGiacakQ3Krybuxi3v2U(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$mrecoverMission(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/get/DownloadMission;)V

    return-void
.end method

.method constructor <init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 77
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    check-cast p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-static {p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fputmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;)V

    .line 78
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->clearDownloadNotifications()V

    .line 80
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmContext(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {v1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object v1

    invoke-virtual {v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {v2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmEmpty(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lus/shandian/giga/ui/adapter/MissionAdapter;-><init>(Landroid/content/Context;Lus/shandian/giga/service/DownloadManager;Landroid/view/View;Landroid/view/View;)V

    invoke-static {p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fputmAdapter(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/ui/adapter/MissionAdapter;)V

    .line 82
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmAdapter(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/ui/adapter/MissionAdapter;

    move-result-object p1

    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment$1$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setRecover(Lus/shandian/giga/ui/adapter/MissionAdapter$RecoverHelper;)V

    .line 84
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$msetAdapterButtons(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    .line 86
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmAdapter(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/ui/adapter/MissionAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->addMissionEventListener(Landroid/os/Handler$Callback;)V

    .line 87
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$fgetmBinder(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    .line 89
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->-$$Nest$mupdateList(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
