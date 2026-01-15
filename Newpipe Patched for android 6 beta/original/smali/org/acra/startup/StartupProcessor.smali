.class public interface abstract Lorg/acra/startup/StartupProcessor;
.super Ljava/lang/Object;
.source "StartupProcessor.kt"

# interfaces
.implements Lorg/acra/plugins/Plugin;


# virtual methods
.method public bridge abstract synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
.end method

.method public abstract processReports(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/acra/config/CoreConfiguration;",
            "Ljava/util/List<",
            "Lorg/acra/startup/Report;",
            ">;)V"
        }
    .end annotation
.end method
