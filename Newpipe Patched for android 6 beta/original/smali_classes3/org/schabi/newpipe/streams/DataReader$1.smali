.class Lorg/schabi/newpipe/streams/DataReader$1;
.super Ljava/io/InputStream;
.source "DataReader.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/streams/DataReader;->getView(I)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/streams/DataReader;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/streams/DataReader;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fputviewSize(Lorg/schabi/newpipe/streams/DataReader;I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_1

    .line 175
    iget-object v2, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v2}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fputviewSize(Lorg/schabi/newpipe/streams/DataReader;I)V

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 182
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/streams/DataReader$1;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    move-result p1

    .line 193
    iget-object p2, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {p2}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fputviewSize(Lorg/schabi/newpipe/streams/DataReader;I)V

    return p1
.end method

.method public skip(J)J
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    move-result-wide p1

    long-to-int p2, p1

    .line 204
    iget-object p1, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Lorg/schabi/newpipe/streams/DataReader;

    invoke-static {p1}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fgetviewSize(Lorg/schabi/newpipe/streams/DataReader;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lorg/schabi/newpipe/streams/DataReader;->-$$Nest$fputviewSize(Lorg/schabi/newpipe/streams/DataReader;I)V

    int-to-long p1, p2

    return-wide p1
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
