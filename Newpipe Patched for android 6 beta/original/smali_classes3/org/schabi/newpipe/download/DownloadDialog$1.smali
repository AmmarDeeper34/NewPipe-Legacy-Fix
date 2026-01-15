.class Lorg/schabi/newpipe/download/DownloadDialog$1;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/download/DownloadDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/download/DownloadDialog;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 228
    check-cast p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 230
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageAudio()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fputmainStorageAudio(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V

    .line 231
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageVideo()Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fputmainStorageVideo(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V

    .line 232
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fputdownloadManager(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/DownloadManager;)V

    .line 233
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->askForSavePath()Z

    move-result p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fputaskForSavePath(Lorg/schabi/newpipe/download/DownloadDialog;Z)V

    .line 235
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fgetokButton(Lorg/schabi/newpipe/download/DownloadDialog;)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fgetcontext(Lorg/schabi/newpipe/download/DownloadDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
