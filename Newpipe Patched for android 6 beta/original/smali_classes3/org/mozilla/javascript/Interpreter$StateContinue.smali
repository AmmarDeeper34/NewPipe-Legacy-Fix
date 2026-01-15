.class final Lorg/mozilla/javascript/Interpreter$StateContinue;
.super Lorg/mozilla/javascript/Interpreter$NewState;
.source "Interpreter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateContinue"
.end annotation


# instance fields
.field private final frame:Lorg/mozilla/javascript/Interpreter$CallFrame;


# direct methods
.method static bridge synthetic -$$Nest$fgetframe(Lorg/mozilla/javascript/Interpreter$StateContinue;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$StateContinue;->frame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    return-object p0
.end method

.method private constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 1228
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Interpreter$NewState;-><init>(Lorg/mozilla/javascript/Interpreter-IA;)V

    .line 1229
    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$StateContinue;->frame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Interpreter$StateContinue;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    return-void
.end method
