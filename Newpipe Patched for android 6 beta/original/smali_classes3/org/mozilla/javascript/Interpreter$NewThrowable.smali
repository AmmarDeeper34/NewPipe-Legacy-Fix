.class final Lorg/mozilla/javascript/Interpreter$NewThrowable;
.super Lorg/mozilla/javascript/Interpreter$NewState;
.source "Interpreter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewThrowable"
.end annotation


# instance fields
.field private final throwable:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetthrowable(Lorg/mozilla/javascript/Interpreter$NewThrowable;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$NewThrowable;->throwable:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1236
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Interpreter$NewState;-><init>(Lorg/mozilla/javascript/Interpreter-IA;)V

    .line 1237
    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$NewThrowable;->throwable:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Interpreter$NewThrowable;-><init>(Ljava/lang/Object;)V

    return-void
.end method
