.class public final Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;,
        Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;
    }
.end annotation


# instance fields
.field public clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

.field public deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;


# direct methods
.method private constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    .line 95
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    return-void
.end method

.method public static ofAndroidClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
    .locals 10

    .line 130
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ANDROID"

    const-string v3, "19.28.35"

    const-string v4, "3"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/16 v8, 0x23

    const/4 v9, 0x0

    const-string v3, "MOBILE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Android"

    const-string v7, "15"

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofIosClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
    .locals 10

    .line 139
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "IOS"

    const-string v3, "20.03.02"

    const-string v4, "5"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "MOBILE"

    const-string v4, "Apple"

    const-string v5, "iPhone16,2"

    const-string v6, "iOS"

    const-string v7, "18.2.1.22C161"

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
    .locals 10

    .line 100
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB"

    const-string v3, "2.20250122.04.00"

    const-string v4, "1"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "DESKTOP"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebEmbeddedPlayerClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
    .locals 10

    .line 110
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB_EMBEDDED_PLAYER"

    const-string v3, "1.20250121.00.00"

    const-string v4, "56"

    const-string v5, "EMBED"

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "DESKTOP"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebMusicAnalyticsChartsClient()Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;
    .locals 10

    .line 120
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB_MUSIC_ANALYTICS"

    const-string v3, "2.0"

    const-string v4, "31"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lorg/schabi/newpipe/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method
