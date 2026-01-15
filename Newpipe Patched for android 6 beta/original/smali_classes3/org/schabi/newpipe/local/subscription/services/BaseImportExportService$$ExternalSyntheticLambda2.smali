.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/BaseImportExportService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method
