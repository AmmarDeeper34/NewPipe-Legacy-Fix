.class Lus/shandian/giga/service/DownloadManagerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/shandian/giga/service/DownloadManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/shandian/giga/service/DownloadManagerService;


# direct methods
.method constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/shandian/giga/service/DownloadManagerService;->-$$Nest$mhandleConnectivityState(Lus/shandian/giga/service/DownloadManagerService;Z)V

    return-void
.end method
