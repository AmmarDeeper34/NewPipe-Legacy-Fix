.class public abstract Lorg/acra/plugins/HasConfigPlugin;
.super Ljava/lang/Object;
.source "HasConfigPlugin.kt"

# interfaces
.implements Lorg/acra/plugins/Plugin;


# instance fields
.field private final configClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/Configuration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "configClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/plugins/HasConfigPlugin;->configClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lorg/acra/plugins/HasConfigPlugin;->configClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/acra/config/ConfigUtils;->findPluginConfiguration(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/acra/config/Configuration;->enabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
