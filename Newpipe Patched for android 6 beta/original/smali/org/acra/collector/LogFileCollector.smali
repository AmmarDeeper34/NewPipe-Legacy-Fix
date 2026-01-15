.class public Lorg/acra/collector/LogFileCollector;
.super Lorg/acra/collector/BaseReportFieldCollector;
.source "LogFileCollector.kt"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/BaseReportFieldCollector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method


# virtual methods
.method public collect(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)V
    .locals 2

    const-string v0, "reportField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportBuilder"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    new-instance p4, Lorg/acra/util/StreamReader;

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object v0

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/acra/file/Directory;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/File;)V

    .line 43
    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFileLines()I

    move-result p2

    invoke-virtual {p4, p2}, Lorg/acra/util/StreamReader;->setLimit(I)Lorg/acra/util/StreamReader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/acra/util/StreamReader;->read()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 46
    sget-object p3, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " was enabled but applicationLogFile was not set. No application log will be recorded."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-interface {p1, p2, p3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/plugins/Plugin$-CC;->$default$enabled(Lorg/acra/plugins/Plugin;Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    return p1
.end method

.method public getOrder()Lorg/acra/collector/Collector$Order;
    .locals 1

    .line 36
    sget-object v0, Lorg/acra/collector/Collector$Order;->LATE:Lorg/acra/collector/Collector$Order;

    return-object v0
.end method
