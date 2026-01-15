.class public final synthetic Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;


# instance fields
.field public final synthetic f$0:[Lus/shandian/giga/io/ChunkFileInputStream;


# direct methods
.method public synthetic constructor <init>([Lus/shandian/giga/io/ChunkFileInputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;->f$0:[Lus/shandian/giga/io/ChunkFileInputStream;

    return-void
.end method


# virtual methods
.method public final check()J
    .locals 2

    .line 0
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;->f$0:[Lus/shandian/giga/io/ChunkFileInputStream;

    invoke-static {v0}, Lus/shandian/giga/postprocessing/Postprocessing;->$r8$lambda$onH5GcSy7xxGAfAoV5Lc04wMcqc([Lus/shandian/giga/io/ChunkFileInputStream;)J

    move-result-wide v0

    return-wide v0
.end method
