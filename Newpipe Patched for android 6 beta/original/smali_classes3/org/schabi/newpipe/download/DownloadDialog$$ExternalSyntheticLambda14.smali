.class public final synthetic Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/download/DownloadDialog;

.field public final synthetic f$1:Lus/shandian/giga/service/MissionState;

.field public final synthetic f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$1:Lus/shandian/giga/service/MissionState;

    iput-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iput-object p4, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    iput-object p6, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$1:Lus/shandian/giga/service/MissionState;

    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;->f$6:Ljava/lang/String;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$lambda$EPFmxjHKNeVElDTzMoZnUDydKiA(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
