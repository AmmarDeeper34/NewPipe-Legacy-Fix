.class public final enum Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;
.super Ljava/lang/Enum;
.source "NativeArrayIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ARRAY_ITERATOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

.field public static final enum ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

.field public static final enum KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

.field public static final enum VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;
    .locals 3

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    sget-object v1, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const-string v1, "ENTRIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    .line 12
    new-instance v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const-string v1, "KEYS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    .line 13
    new-instance v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const-string v1, "VALUES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    .line 10
    invoke-static {}, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->$values()[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->$VALUES:[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;
    .locals 1

    .line 10
    const-class v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;
    .locals 1

    .line 10
    sget-object v0, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->$VALUES:[Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    return-object v0
.end method
