.class public Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "SoundCloudGoPlusContentException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    const-string v0, "This track is a SoundCloud Go+ track"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method
