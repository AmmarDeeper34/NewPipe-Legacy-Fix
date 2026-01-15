.class Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;
.super Ljava/lang/Object;
.source "BaseImportExportService.java"

# interfaces
.implements Lorg/schabi/newpipe/local/subscription/services/ImportExportEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCompleted(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSizeReceived(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 73
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$1;->this$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
