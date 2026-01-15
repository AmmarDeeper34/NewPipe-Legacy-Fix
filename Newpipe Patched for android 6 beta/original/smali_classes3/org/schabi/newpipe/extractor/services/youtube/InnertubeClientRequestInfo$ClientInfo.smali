.class public final Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# instance fields
.field public clientId:Ljava/lang/String;

.field public clientName:Ljava/lang/String;

.field public clientScreen:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public visitorData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientScreen:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
