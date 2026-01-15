.class Lus/shandian/giga/postprocessing/TtmlConverter;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "TtmlConverter.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 18
    const-string v1, "ttml"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 25
    const-string v3, "true"

    invoke-virtual {p0, v2, v3}, Lus/shandian/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    .line 27
    const-string v5, "ttml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    const-string v2, "srt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2000

    .line 39
    new-array v0, v0, [B

    .line 41
    :goto_0
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    goto :goto_0

    :cond_1
    return v4

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t convert this subtitle, unimplemented format: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;

    invoke-direct {v0, p1, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Z)V

    .line 31
    :try_start_0
    aget-object p1, p2, v1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 33
    const-string p2, "TtmlConverter"

    const-string v0, "subtitle parse failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    return v2
.end method
