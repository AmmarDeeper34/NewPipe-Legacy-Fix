.class public Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "YoutubeMusicPremiumContentException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    const-string v0, "This video is a YouTube Music Premium video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method
