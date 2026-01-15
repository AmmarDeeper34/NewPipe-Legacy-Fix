.class Lus/shandian/giga/get/DownloadMission$HttpError;
.super Ljava/lang/Exception;
.source "DownloadMission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/get/DownloadMission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpError"
.end annotation


# instance fields
.field final statusCode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 836
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 837
    iput p1, p0, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
