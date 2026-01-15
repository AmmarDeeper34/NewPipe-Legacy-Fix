.class public final enum Lorg/mozilla/javascript/optimizer/RhinoNamespace;
.super Ljava/lang/Enum;
.source "RhinoNamespace.java"

# interfaces
.implements Ljdk/dynalink/Namespace;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/optimizer/RhinoNamespace;",
        ">;",
        "Ljdk/dynalink/Namespace;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

.field public static final enum MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

.field public static final enum NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 3

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 12
    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    const-string v1, "MATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 9
    invoke-static {}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 1

    .line 9
    const-class v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 1

    .line 9
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    return-object v0
.end method
