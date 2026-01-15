.class public final synthetic Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/ocpsoft/prettytime/PrettyTime;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->f$0:Lorg/ocpsoft/prettytime/PrettyTime;

    iput-object p2, p0, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->f$0:Lorg/ocpsoft/prettytime/PrettyTime;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-static {v0, v1, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->$r8$lambda$wdY1peoyw5qIEQ5wjDCVqJuPH2I(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;Lorg/ocpsoft/prettytime/TimeUnit;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
