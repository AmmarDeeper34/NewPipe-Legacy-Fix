.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "StreamInfoItem.java"


# instance fields
.field private contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 1

    .line 57
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 42
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 43
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 49
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    .line 50
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->AVAILABLE:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 58
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    return-wide v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    return-wide v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return v0
.end method

.method public setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setShortFormContent(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 167
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    iget-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    iget-wide v4, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    iget-wide v6, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    iget-object v8, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 174
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v9

    .line 175
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v10

    .line 176
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 177
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v12

    .line 178
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v13

    .line 179
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->isUploaderVerified()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamInfoItem{streamType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uploaderName=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', textualUploadDate=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', viewCount="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", uploaderUrl=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', infoType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', name=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', thumbnails=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', uploaderVerified=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
