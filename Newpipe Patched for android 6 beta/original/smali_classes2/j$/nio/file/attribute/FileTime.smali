.class public final Lj$/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Lj$/time/Instant;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    return-void
.end method

.method public static k(Ljava/lang/StringBuilder;II)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 378
    div-int v0, p2, p1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    rem-int/2addr p2, p1

    .line 380
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static o(JJJ)J
    .locals 1

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    neg-long p4, p4

    cmp-long v0, p0, p4

    if-gez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    mul-long p0, p0, p2

    return-wide p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Lj$/nio/file/attribute/FileTime;->n(Lj$/nio/file/attribute/FileTime;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 291
    instance-of v0, p1, Lj$/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Lj$/nio/file/attribute/FileTime;->n(Lj$/nio/file/attribute/FileTime;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 305
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n(Lj$/nio/file/attribute/FileTime;)I
    .locals 7

    .line 339
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    iget-wide v2, p1, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    .line 619
    iget-wide v1, v1, Lj$/time/Instant;->a:J

    .line 344
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v3

    .line 619
    iget-wide v3, v3, Lj$/time/Instant;->a:J

    .line 345
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v3

    if-eqz v3, :cond_1

    return v3

    .line 349
    :cond_1
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v3

    .line 632
    iget v3, v3, Lj$/time/Instant;->b:I

    int-to-long v3, v3

    .line 349
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v5

    .line 632
    iget v5, v5, Lj$/time/Instant;->b:I

    int-to-long v5, v5

    .line 349
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    const-wide v3, 0x701cd2fa9578ffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-wide v3, -0x701cefeb9bec00L

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 310
    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    goto :goto_0

    .line 312
    :cond_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v2

    .line 619
    iget-wide v2, v2, Lj$/time/Instant;->a:J

    .line 312
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    :goto_0
    if-eqz v0, :cond_5

    .line 310
    iget-wide v3, p1, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    goto :goto_1

    .line 312
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v3

    .line 619
    iget-wide v3, v3, Lj$/time/Instant;->a:J

    .line 312
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    :goto_1
    cmp-long v0, v1, v3

    if-nez v0, :cond_6

    .line 362
    invoke-virtual {p0, v1, v2}, Lj$/nio/file/attribute/FileTime;->u(J)J

    move-result-wide v0

    invoke-virtual {p1, v3, v4}, Lj$/nio/file/attribute/FileTime;->u(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 364
    :cond_6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final toInstant()Lj$/time/Instant;
    .locals 10

    .line 231
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    if-nez v0, :cond_2

    .line 234
    sget-object v0, Lj$/nio/file/attribute/r;->a:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unit not handled"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 261
    :pswitch_0
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v0

    .line 262
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    move v2, v3

    goto :goto_1

    .line 256
    :pswitch_1
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/32 v2, 0xf4240

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v0

    .line 257
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0x3e8

    goto :goto_1

    .line 251
    :pswitch_2
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v0

    .line 252
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-static {v4, v5, v2, v3}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    const v2, 0xf4240

    mul-int v2, v2, v3

    goto :goto_1

    .line 248
    :pswitch_3
    iget-wide v2, p0, Lj$/nio/file/attribute/FileTime;->a:J

    :goto_0
    move-wide v0, v2

    const/4 v2, 0x0

    goto :goto_1

    .line 244
    :pswitch_4
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/16 v6, 0x3c

    const-wide v8, 0x222222222222222L

    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    move-result-wide v2

    goto :goto_0

    .line 240
    :pswitch_5
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/16 v6, 0xe10

    const-wide v8, 0x91a2b3c4d5e6fL

    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    move-result-wide v2

    goto :goto_0

    .line 236
    :pswitch_6
    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->a:J

    const-wide/32 v6, 0x15180

    const-wide v8, 0x611722833944L

    invoke-static/range {v4 .. v9}, Lj$/nio/file/attribute/FileTime;->o(JJJ)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    const-wide v3, -0x701cefeb9bec00L

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 267
    sget-object v0, Lj$/time/Instant;->d:Lj$/time/Instant;

    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    goto :goto_2

    :cond_0
    const-wide v3, 0x701cd2fa9578ffL

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    .line 269
    sget-object v0, Lj$/time/Instant;->e:Lj$/time/Instant;

    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    goto :goto_2

    :cond_1
    int-to-long v2, v2

    .line 271
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->b0(JJ)Lj$/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 273
    :cond_2
    :goto_2
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toMillis()J
    .locals 12

    .line 170
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 171
    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 173
    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 619
    iget-wide v1, v0, Lj$/time/Instant;->a:J

    .line 632
    iget v0, v0, Lj$/time/Instant;->b:I

    const-wide/16 v3, 0x3e8

    mul-long v5, v1, v3

    .line 177
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    or-long/2addr v7, v3

    const/16 v9, 0x1f

    ushr-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 179
    div-long v3, v5, v3

    cmp-long v7, v3, v1

    if-eqz v7, :cond_2

    cmp-long v0, v1, v9

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_2
    const v1, 0xf4240

    .line 183
    div-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v5, v0

    return-wide v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 412
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 415
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 416
    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const/4 v2, 0x0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    .line 619
    iget-wide v0, v0, Lj$/time/Instant;->a:J

    .line 419
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v2

    .line 632
    iget v2, v2, Lj$/time/Instant;->b:I

    :goto_0
    const-wide v3, -0xe79747c00L

    const/16 v5, 0x2710

    const-wide v6, 0xe79747c00L

    const-wide v8, 0x497968bd80L

    cmp-long v10, v0, v3

    if-ltz v10, :cond_1

    const-wide v3, 0x3afff44180L

    sub-long/2addr v0, v3

    .line 426
    invoke-static {v0, v1, v8, v9}, Lj$/com/android/tools/r8/a;->E(JJ)J

    move-result-wide v3

    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    .line 427
    invoke-static {v0, v1, v8, v9}, Lj$/com/android/tools/r8/a;->R(JJ)J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 428
    sget-object v6, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0, v1, v2, v6}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 750
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 762
    iget v1, v1, Lj$/time/LocalDate;->a:I

    :goto_1
    long-to-int v2, v3

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v2, v1

    goto :goto_2

    :cond_1
    add-long/2addr v0, v6

    .line 433
    div-long v3, v0, v8

    .line 434
    rem-long/2addr v0, v8

    sub-long/2addr v0, v6

    .line 435
    sget-object v6, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0, v1, v2, v6}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 750
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 762
    iget v1, v1, Lj$/time/LocalDate;->a:I

    goto :goto_1

    :goto_2
    if-gtz v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 868
    :cond_2
    iget-object v1, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 738
    iget v1, v1, Lj$/time/i;->d:I

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gez v2, :cond_3

    .line 443
    const-string v4, "-"

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v5, :cond_4

    const/16 v4, 0x3e8

    .line 446
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v3, v4, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    goto :goto_4

    .line 448
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/16 v2, 0x2d

    .line 450
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    iget-object v4, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 776
    iget-short v4, v4, Lj$/time/LocalDate;->b:S

    const/16 v5, 0xa

    .line 451
    invoke-static {v3, v5, v4}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 452
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    iget-object v2, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 802
    iget-short v2, v2, Lj$/time/LocalDate;->c:S

    .line 453
    invoke-static {v3, v5, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x54

    .line 454
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    iget-object v2, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 711
    iget-byte v2, v2, Lj$/time/i;->a:B

    .line 455
    invoke-static {v3, v5, v2}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x3a

    .line 456
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    iget-object v4, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 720
    iget-byte v4, v4, Lj$/time/i;->b:B

    .line 457
    invoke-static {v3, v5, v4}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    .line 458
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/i;

    .line 729
    iget-byte v0, v0, Lj$/time/i;->c:B

    .line 459
    invoke-static {v3, v5, v0}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    if-eqz v1, :cond_6

    const/16 v0, 0x2e

    .line 461
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0x5f5e100

    .line 464
    :goto_5
    rem-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_5

    .line 465
    div-int/lit8 v1, v1, 0xa

    .line 466
    div-int/lit8 v0, v0, 0xa

    goto :goto_5

    .line 468
    :cond_5
    invoke-static {v3, v0, v1}, Lj$/nio/file/attribute/FileTime;->k(Ljava/lang/StringBuilder;II)V

    :cond_6
    const/16 v0, 0x5a

    .line 470
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    .line 473
    :cond_7
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u(J)J
    .locals 4

    .line 317
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 318
    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->a:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    return-wide p1

    .line 320
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    .line 619
    iget-wide v1, v1, Lj$/time/Instant;->a:J

    .line 320
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 321
    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    sub-long/2addr v1, p1

    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    return-wide p1
.end method
