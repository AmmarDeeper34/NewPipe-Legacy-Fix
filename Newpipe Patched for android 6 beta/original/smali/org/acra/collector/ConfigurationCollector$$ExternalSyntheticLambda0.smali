.class public final synthetic Lorg/acra/collector/ConfigurationCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/acra/collector/ConfigurationCollector$Prefix;

    invoke-static {p1}, Lorg/acra/collector/ConfigurationCollector;->$r8$lambda$UyQhmKZO_J1j8Osa3TDSsyrZXd4(Lorg/acra/collector/ConfigurationCollector$Prefix;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method
