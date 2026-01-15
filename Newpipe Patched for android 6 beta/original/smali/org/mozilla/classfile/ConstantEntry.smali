.class final Lorg/mozilla/classfile/ConstantEntry;
.super Ljava/lang/Object;
.source "ConstantEntry.java"


# instance fields
.field private hashcode:I

.field private intval:I

.field private longval:J

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private type:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/mozilla/classfile/ConstantEntry;->type:I

    .line 19
    iput p2, p0, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    .line 20
    iput-object p3, p0, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    .line 22
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p4

    mul-int p3, p3, p4

    add-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/classfile/ConstantEntry;->hashcode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 32
    instance-of v0, p1, Lorg/mozilla/classfile/ConstantEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    check-cast p1, Lorg/mozilla/classfile/ConstantEntry;

    .line 36
    iget v0, p0, Lorg/mozilla/classfile/ConstantEntry;->type:I

    iget v2, p1, Lorg/mozilla/classfile/ConstantEntry;->type:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    .line 49
    iget v0, p0, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    iget v2, p1, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported constant type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ConstantEntry;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/ConstantEntry;->str2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v1

    .line 45
    :cond_6
    iget-wide v4, p0, Lorg/mozilla/classfile/ConstantEntry;->longval:J

    iget-wide v6, p1, Lorg/mozilla/classfile/ConstantEntry;->longval:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v1

    .line 42
    :cond_8
    iget v0, p0, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    iget p1, p1, Lorg/mozilla/classfile/ConstantEntry;->intval:I

    if-ne v0, p1, :cond_9

    return v3

    :cond_9
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/mozilla/classfile/ConstantEntry;->hashcode:I

    return v0
.end method
