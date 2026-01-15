.class Lorg/schabi/newpipe/streams/WebMWriter$Block;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Block"
.end annotation


# instance fields
.field absoluteTimecode:J

.field data:Ljava/io/InputStream;

.field dataSize:I

.field flags:B

.field trackNumber:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isKeyframe()Z
    .locals 2

    .line 746
    iget-byte v0, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 752
    iget v0, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 753
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMWriter$Block;->isKeyframe()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-wide v2, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 752
    const-string v0, "trackNumber=%s  isKeyFrame=%S  absoluteTimecode=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
