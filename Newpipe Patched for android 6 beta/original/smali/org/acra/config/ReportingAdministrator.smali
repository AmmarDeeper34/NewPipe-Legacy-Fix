.class public interface abstract Lorg/acra/config/ReportingAdministrator;
.super Ljava/lang/Object;
.source "ReportingAdministrator.kt"

# interfaces
.implements Lorg/acra/plugins/Plugin;


# virtual methods
.method public bridge abstract synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
.end method

.method public abstract notifyReportDropped(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
.end method

.method public abstract shouldFinishActivity(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/LastActivityManager;)Z
.end method

.method public abstract shouldKillApplication(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)Z
.end method

.method public abstract shouldSendReport(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportData;)Z
.end method

.method public abstract shouldStartCollecting(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;)Z
.end method
