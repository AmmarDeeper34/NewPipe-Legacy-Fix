.class public Lorg/schabi/newpipe/error/AcraReportSender;
.super Ljava/lang/Object;
.source "AcraReportSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic requiresForeground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/acra/sender/ReportSender$-CC;->$default$requiresForeground(Lorg/acra/sender/ReportSender;)Z

    move-result v0

    return v0
.end method

.method public send(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V
    .locals 6

    .line 36
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    .line 37
    invoke-virtual {p2, v1}, Lorg/acra/data/CrashReportData;->getString(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    const/4 v4, 0x0

    const v5, 0x7f120035

    const-string v3, "ACRA report"

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 36
    invoke-static {p1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public synthetic send(Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/acra/sender/ReportSender$-CC;->$default$send(Lorg/acra/sender/ReportSender;Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V

    return-void
.end method
