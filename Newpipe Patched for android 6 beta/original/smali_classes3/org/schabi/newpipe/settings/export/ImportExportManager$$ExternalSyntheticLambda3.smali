.class public final synthetic Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final acceptStream(Ljava/io/InputStream;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->$r8$lambda$7ehNpzaesF-HYXeUi52yGat-qfk(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V

    return-void
.end method
