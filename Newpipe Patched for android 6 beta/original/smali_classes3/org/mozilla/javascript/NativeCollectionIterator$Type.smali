.class final enum Lorg/mozilla/javascript/NativeCollectionIterator$Type;
.super Ljava/lang/Enum;
.source "NativeCollectionIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeCollectionIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/NativeCollectionIterator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/NativeCollectionIterator$Type;

.field public static final enum BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

.field public static final enum KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

.field public static final enum VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/NativeCollectionIterator$Type;
    .locals 3

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const-string v1, "KEYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeCollectionIterator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    .line 17
    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const-string v1, "VALUES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeCollectionIterator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    .line 18
    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeCollectionIterator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    .line 15
    invoke-static {}, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->$values()[Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->$VALUES:[Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/NativeCollectionIterator$Type;
    .locals 1

    .line 15
    const-class v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/NativeCollectionIterator$Type;
    .locals 1

    .line 15
    sget-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->$VALUES:[Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/NativeCollectionIterator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-object v0
.end method
