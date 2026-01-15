.class public Lus/shandian/giga/service/DownloadManager$MissionItem;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/service/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissionItem"
.end annotation


# instance fields
.field public mission:Lus/shandian/giga/get/Mission;

.field public special:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, p1, v0}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(ILus/shandian/giga/get/Mission;)V

    return-void
.end method

.method constructor <init>(ILus/shandian/giga/get/Mission;)V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput p1, p0, Lus/shandian/giga/service/DownloadManager$MissionItem;->special:I

    .line 746
    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    return-void
.end method
