.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;
.super Ljava/lang/Object;
.source "YoutubeChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelResponseData"
.end annotation


# instance fields
.field public final channelId:Ljava/lang/String;

.field public final jsonResponse:Lcom/grack/nanojson/JsonObject;


# direct methods
.method private constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    .line 150
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->channelId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    return-void
.end method
