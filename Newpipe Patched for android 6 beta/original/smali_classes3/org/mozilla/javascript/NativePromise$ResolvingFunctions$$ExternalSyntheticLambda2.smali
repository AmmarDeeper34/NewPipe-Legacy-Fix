.class public final synthetic Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/NativePromise;

.field public final synthetic f$1:Lorg/mozilla/javascript/Context;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$0:Lorg/mozilla/javascript/NativePromise;

    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$1:Lorg/mozilla/javascript/Context;

    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$2:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$0:Lorg/mozilla/javascript/NativePromise;

    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$1:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$2:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->$r8$lambda$XFsPpUL80WaPPMxNT77RM6sZBWY(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
