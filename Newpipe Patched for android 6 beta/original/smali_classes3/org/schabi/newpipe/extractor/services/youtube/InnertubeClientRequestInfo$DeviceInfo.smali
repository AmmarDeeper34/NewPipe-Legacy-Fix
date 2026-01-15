.class public final Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# instance fields
.field public androidSdkVersion:I

.field public deviceMake:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public osName:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public platform:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->platform:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceMake:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceModel:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osName:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osVersion:Ljava/lang/String;

    .line 88
    iput p6, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->androidSdkVersion:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
