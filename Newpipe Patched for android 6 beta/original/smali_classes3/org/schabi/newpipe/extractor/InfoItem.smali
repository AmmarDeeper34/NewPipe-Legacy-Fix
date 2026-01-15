.class public abstract Lorg/schabi/newpipe/extractor/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    }
.end annotation


# instance fields
.field private final infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field private final name:Ljava/lang/String;

.field private final serviceId:I

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 40
    iput p2, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    .line 41
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    return v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[url=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", name=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
