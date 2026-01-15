.class public Lus/shandian/giga/get/FinishedMission;
.super Lus/shandian/giga/get/Mission;
.source "FinishedMission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    return-void
.end method

.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    .line 11
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    iput-object v0, p0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 12
    iget-wide v0, p1, Lus/shandian/giga/get/Mission;->length:J

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    .line 13
    iget-wide v0, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 14
    iget-char v0, p1, Lus/shandian/giga/get/Mission;->kind:C

    iput-char v0, p0, Lus/shandian/giga/get/Mission;->kind:C

    .line 15
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iput-object p1, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    return-void
.end method
