.class public final Lorg/mozilla/classfile/ClassFileWriter$MHandle;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MHandle"
.end annotation


# instance fields
.field final desc:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final owner:Ljava/lang/String;

.field final tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4442
    iput-byte p1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    .line 4443
    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    .line 4444
    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    .line 4445
    iput-object p4, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4453
    :cond_0
    instance-of v1, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4456
    :cond_1
    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 4457
    iget-byte v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    iget-byte v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    .line 4458
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    .line 4459
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    .line 4460
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 4465
    iget-byte v0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 4470
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    iget-byte v3, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
