.class public Lorg/schabi/newpipe/error/AcraReportSenderFactory;
.super Ljava/lang/Object;
.source "AcraReportSenderFactory.java"

# interfaces
.implements Lorg/acra/sender/ReportSenderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/acra/sender/ReportSender;
    .locals 0

    .line 42
    new-instance p1, Lorg/schabi/newpipe/error/AcraReportSender;

    invoke-direct {p1}, Lorg/schabi/newpipe/error/AcraReportSender;-><init>()V

    return-object p1
.end method

.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/plugins/Plugin$-CC;->$default$enabled(Lorg/acra/plugins/Plugin;Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    return p1
.end method
