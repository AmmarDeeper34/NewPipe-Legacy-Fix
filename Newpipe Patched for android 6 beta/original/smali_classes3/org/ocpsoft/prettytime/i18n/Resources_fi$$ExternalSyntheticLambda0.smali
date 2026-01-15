.class public final synthetic Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/ocpsoft/prettytime/i18n/Resources_fi;


# direct methods
.method public synthetic constructor <init>(Lorg/ocpsoft/prettytime/i18n/Resources_fi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda0;->f$0:Lorg/ocpsoft/prettytime/i18n/Resources_fi;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda0;->f$0:Lorg/ocpsoft/prettytime/i18n/Resources_fi;

    check-cast p1, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-static {v0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->$r8$lambda$Jau-JbEaLAVXDipJ8lUjKgYC3Qo(Lorg/ocpsoft/prettytime/i18n/Resources_fi;Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
