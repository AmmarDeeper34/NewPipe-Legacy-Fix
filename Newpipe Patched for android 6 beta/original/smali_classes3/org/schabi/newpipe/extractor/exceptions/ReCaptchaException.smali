.class public Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
.super Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
.source "ReCaptchaException.java"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-object v0
.end method
