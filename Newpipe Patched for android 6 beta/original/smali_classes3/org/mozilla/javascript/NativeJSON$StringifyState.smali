.class Lorg/mozilla/javascript/NativeJSON$StringifyState;
.super Ljava/lang/Object;
.source "NativeJSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringifyState"
.end annotation


# instance fields
.field cx:Lorg/mozilla/javascript/Context;

.field gap:Ljava/lang/String;

.field indent:Ljava/lang/String;

.field propertyList:[Ljava/lang/Object;

.field replacer:Lorg/mozilla/javascript/Callable;

.field scope:Lorg/mozilla/javascript/Scriptable;

.field stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Callable;[Ljava/lang/Object;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/ArrayDeque;

    .line 167
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    .line 168
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 170
    iput-object p3, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->replacer:Lorg/mozilla/javascript/Callable;

    .line 173
    iput-object p6, p0, Lorg/mozilla/javascript/NativeJSON$StringifyState;->propertyList:[Ljava/lang/Object;

    return-void
.end method
