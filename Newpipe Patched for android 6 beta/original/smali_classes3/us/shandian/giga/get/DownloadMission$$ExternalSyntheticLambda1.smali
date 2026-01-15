.class public final synthetic Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/get/DownloadMission;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    return-void
.end method
