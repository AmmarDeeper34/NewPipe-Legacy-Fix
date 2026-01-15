.class public Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "AccountTerminatedException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;
    }
.end annotation


# instance fields
.field private reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 13
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method
