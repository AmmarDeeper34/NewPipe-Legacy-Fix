.class public interface abstract Lorg/acra/collector/Collector;
.super Ljava/lang/Object;
.source "Collector.kt"

# interfaces
.implements Lorg/acra/plugins/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/collector/Collector$Order;
    }
.end annotation


# virtual methods
.method public abstract collect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)V
.end method

.method public bridge abstract synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
.end method

.method public abstract getOrder()Lorg/acra/collector/Collector$Order;
.end method
