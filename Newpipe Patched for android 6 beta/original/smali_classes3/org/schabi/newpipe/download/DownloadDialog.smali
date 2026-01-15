.class public Lorg/schabi/newpipe/download/DownloadDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private askForSavePath:Z

.field private audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field private audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

.field private context:Landroid/content/Context;

.field currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private downloadManager:Lus/shandian/giga/service/DownloadManager;

.field private filenameTmp:Ljava/lang/String;

.field private mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field private mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field private mimeTmp:Ljava/lang/String;

.field private okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

.field private prefs:Landroid/content/SharedPreferences;

.field private final requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private final requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private final requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field selectedAudioIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field selectedAudioTrackIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field selectedSubtitleIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field selectedVideoIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field private videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;"
        }
    .end annotation
.end field

.field wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5jmW7T85huIL5w7M2laOAnFXqOw(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$checkSelectedDownload$8(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$64Qkx9AVPIZlaE2f5d--PV8dztM(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6H2gvwh6N0QzGWrdQnbR0GwxGfQ(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPFmxjHKNeVElDTzMoZnUDydKiA(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$checkSelectedDownload$9(Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4-VsBzBccR_PFbdYnOzDDiwgC8(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(Lorg/schabi/newpipe/download/DownloadDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRgTF0u2ph0SG_PWNZKIySEVOgk(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYXwPgb5e7i2FpTMstzL2HCNfZE(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQIcqXu6nAi-L8EkGd41tp2zluU(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$initToolbar$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dW0Tuiyo0HdT5BFJTc6HuJImlVU(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$initToolbar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4Rg8uCfYdS6aD_CqM6YGUpamGg(Landroid/text/Editable;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ja3Atgn973EaF5bor3RJzeYIKds(Lorg/schabi/newpipe/download/DownloadDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l14FRt4-3Mufv0KkD6AKvq8pJ0g(Lorg/schabi/newpipe/download/DownloadDialog;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->lambda$fetchStreamsSize$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYCFPNXiYnHoKP_o9nqp6dPi0tg(Lorg/schabi/newpipe/download/DownloadDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lorg/schabi/newpipe/download/DownloadDialog;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogBinding(Lorg/schabi/newpipe/download/DownloadDialog;)Lorg/schabi/newpipe/databinding/DownloadDialogBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetokButton(Lorg/schabi/newpipe/download/DownloadDialog;)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefs(Lorg/schabi/newpipe/download/DownloadDialog;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaskForSavePath(Lorg/schabi/newpipe/download/DownloadDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownloadManager(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/DownloadManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainStorageAudio(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainStorageVideo(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 110
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 114
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 115
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 116
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 117
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 125
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 135
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 136
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 138
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 139
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 141
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 142
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 6

    .line 163
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 110
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 114
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 115
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 116
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 117
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 125
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 135
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 136
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 138
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 139
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 141
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 142
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 164
    iput-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 167
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-static {p1, v1}, Lorg/schabi/newpipe/util/ListHelper;->getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 170
    new-instance v3, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-direct {v3, v1, p1}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 172
    invoke-static {p1, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 177
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/schabi/newpipe/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 182
    invoke-virtual {v4}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 175
    :goto_0
    invoke-static {p1, v1, v3, v0, v5}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 185
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 186
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 187
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v2}, Lorg/schabi/newpipe/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 189
    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    return-void
.end method

.method private checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 890
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    if-nez v4, :cond_1

    .line 893
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 894
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v6, v7, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 898
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v2, v3, v4, v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v1, v3}, Lus/shandian/giga/service/DownloadManager;->checkForExistingMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Lus/shandian/giga/service/MissionState;

    move-result-object v2

    .line 912
    sget-object v1, Lorg/schabi/newpipe/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v1, v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const v11, 0x7f12033b

    if-eq v8, v10, :cond_b

    if-eq v8, v9, :cond_a

    const/4 v12, 0x3

    if-eq v8, v12, :cond_9

    const/4 v12, 0x4

    if-eq v8, v12, :cond_2

    return-void

    :cond_2
    const v8, 0x7f12014a

    if-nez p1, :cond_4

    .line 931
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->create()Z

    move-result v0

    if-nez v0, :cond_3

    .line 932
    invoke-direct {p0, v8}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 935
    :cond_3
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    return-void

    :cond_4
    if-nez v4, :cond_8

    .line 942
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f120152

    .line 943
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 947
    :cond_5
    invoke-virtual {p1, v6, v7}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 948
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 953
    :cond_6
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    return-void

    .line 949
    :cond_7
    :goto_2
    invoke-direct {p0, v8}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_8
    const v8, 0x7f12033e

    goto :goto_3

    :cond_9
    const v11, 0x7f1201e2

    const v8, 0x7f120105

    goto :goto_3

    :cond_a
    const v8, 0x7f120104

    goto :goto_3

    :cond_b
    const v8, 0x7f12033d

    .line 963
    :goto_3
    new-instance v12, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v13, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f120106

    .line 964
    invoke-virtual {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v12

    .line 965
    invoke-virtual {v12, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    const v12, 0x7f120070

    .line 966
    invoke-virtual {v8, v12, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    if-nez p1, :cond_d

    .line 974
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_c

    goto :goto_4

    .line 977
    :cond_c
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    invoke-virtual {v8, v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 985
    :goto_4
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 989
    :cond_d
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1029
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 901
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    const-string v4, "Getting storage"

    invoke-direct {v2, v0, v3, v4}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 23

    move-object/from16 v1, p0

    .line 1033
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120358

    .line 1034
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 1040
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1041
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->truncate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 1052
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1060
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v6, 0x7f0a0073

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v3, v6, :cond_8

    const v6, 0x7f0a03a7

    if-eq v3, v6, :cond_6

    const v6, 0x7f0a0415

    if-eq v3, v6, :cond_2

    return-void

    .line 1073
    :cond_2
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v3, v6}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    .line 1075
    iget-object v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 1076
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getAllSecondary()Landroidx/collection/SparseArrayCompat;

    move-result-object v6

    iget-object v10, v1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 1077
    invoke-virtual {v10}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    const/16 v10, 0x76

    if-eqz v6, :cond_5

    .line 1080
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getStream()Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v11

    .line 1082
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v12

    sget-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v12, v13, :cond_3

    .line 1083
    const-string v12, "mp4D-mp4"

    goto :goto_1

    .line 1085
    :cond_3
    const-string v12, "webm"

    .line 1088
    :goto_1
    iget-object v13, v1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-object v14, v3

    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v13, v14}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    move-result-wide v13

    .line 1093
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v15

    cmp-long v17, v15, v4

    if-lez v17, :cond_4

    cmp-long v15, v13, v4

    if-lez v15, :cond_4

    .line 1094
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v4

    add-long/2addr v4, v13

    :cond_4
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v18, v12

    :goto_2
    const/16 v15, 0x76

    goto/16 :goto_6

    :cond_5
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    goto :goto_2

    .line 1101
    :cond_6
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    .line 1103
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v10, 0x73

    if-ne v0, v6, :cond_7

    .line 1105
    new-array v0, v7, [Ljava/lang/String;

    .line 1106
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v6

    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    const-string v6, "false"

    aput-object v6, v0, v2

    const-string v6, "ttml"

    move-object/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v6

    :goto_3
    const/16 v15, 0x73

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    goto :goto_3

    .line 1063
    :cond_8
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v3, v6}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    .line 1065
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v6

    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v11, 0x61

    if-ne v6, v10, :cond_9

    .line 1066
    const-string v6, "mp4D-m4a"

    :goto_4
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    :goto_5
    const/16 v15, 0x61

    goto :goto_6

    .line 1067
    :cond_9
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v6

    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v6, v10, :cond_a

    .line 1068
    const-string v6, "webm-ogg-d"

    goto :goto_4

    :cond_a
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    goto :goto_5

    :goto_6
    if-nez v8, :cond_b

    .line 1116
    new-array v0, v2, [Ljava/lang/String;

    .line 1117
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 1119
    new-instance v2, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v2, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    invoke-static {v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_7
    move-object v13, v0

    goto :goto_8

    .line 1121
    :cond_b
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v0, v4, :cond_c

    .line 1126
    new-array v0, v7, [Ljava/lang/String;

    .line 1127
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1129
    new-instance v2, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v2, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    new-instance v3, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v3, v8}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    invoke-static {v2, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_7

    .line 1135
    :goto_8
    iget-object v12, v1, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v14, p1

    move-object/from16 v17, v0

    move-object/from16 v22, v3

    invoke-static/range {v12 .. v22}, Lus/shandian/giga/service/DownloadManagerService;->startMission(Landroid/content/Context;[Ljava/lang/String;Lorg/schabi/newpipe/streams/io/StoredFileHelper;CILorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;[Ljava/lang/String;JLjava/util/ArrayList;)V

    .line 1138
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    const v2, 0x7f120108

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1141
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 1122
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stream delivery format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to truncate the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogFragment"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f12033c

    .line 1045
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private fetchStreamsSize()V
    .locals 4

    .line 383
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 384
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 385
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 393
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 394
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 402
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 403
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private getNameEditText()Ljava/lang/String;
    .locals 3

    .line 743
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lorg/schabi/newpipe/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitleIndexBy(Ljava/util/List;)I
    .locals 9

    .line 716
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 719
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 720
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 722
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 723
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 724
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/Locale;

    .line 725
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 726
    :goto_1
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 727
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    return v2

    :cond_2
    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .locals 2

    .line 709
    iget v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v1}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->getTracksList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    return-object v0

    .line 710
    :cond_1
    :goto_0
    invoke-static {}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->empty()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-result-object v0

    return-object v0
.end method

.method private initToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 337
    sget-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initToolbar() called with: toolbar = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f120106

    .line 341
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f0800e1

    .line 342
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    const/high16 v0, 0x7f0f0000

    .line 343
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 344
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f120070

    .line 345
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    const v0, 0x7f0a02a1

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$checkSelectedDownload$8(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 978
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 979
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p2, p1}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 980
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    return-void
.end method

.method private synthetic lambda$checkSelectedDownload$9(Lus/shandian/giga/service/MissionState;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 990
    invoke-interface {p7}, Landroid/content/DialogInterface;->dismiss()V

    .line 993
    sget-object p7, Lorg/schabi/newpipe/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p7, p1

    const/4 p7, 0x1

    const p8, 0x7f12014a

    if-eq p1, p7, :cond_2

    const/4 p7, 0x2

    if-eq p1, p7, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 1019
    :cond_0
    invoke-virtual {p4, p5, p6}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1021
    invoke-direct {p0, p8}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 1023
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    return-void

    .line 996
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, p2}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    :cond_3
    if-nez p3, :cond_4

    .line 999
    invoke-virtual {p4, p5, p6}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    goto :goto_0

    .line 1003
    :cond_4
    :try_start_0
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p4}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object p5

    .line 1004
    invoke-virtual {p4}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p5, p3, p4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take (or steal) the file in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1006
    const-string p2, "DialogFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 1012
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1013
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    goto :goto_1

    .line 1015
    :cond_5
    invoke-direct {p0, p8}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$2(Ljava/lang/Boolean;)V
    .locals 1

    .line 386
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0a0415

    if-ne p1, v0, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$3(Ljava/lang/Throwable;)V
    .locals 5

    .line 390
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Downloading video stream size"

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$4(Ljava/lang/Boolean;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0a0073

    if-ne p1, v0, :cond_0

    .line 397
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$5(Ljava/lang/Throwable;)V
    .locals 5

    .line 399
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Downloading audio stream size"

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$6(Ljava/lang/Boolean;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0a03a7

    if-ne p1, v0, :cond_0

    .line 406
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$7(Ljava/lang/Throwable;)V
    .locals 5

    .line 408
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Downloading subtitle stream size"

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$initToolbar$0(Landroid/view/View;)V
    .locals 0

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initToolbar$1(Landroid/view/MenuItem;)Z
    .locals 1

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a02a1

    if-ne p1, v0, :cond_0

    .line 352
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->prepareSelectedDownload()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 3

    .line 758
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DialogFragment"

    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private onItemSelectedSetFileName()V
    .locals 8

    .line 615
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>()V

    .line 617
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    .line 618
    const-string v2, ""

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 620
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const v7, 0x7f120072

    if-nez v3, :cond_0

    .line 621
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    .line 622
    invoke-virtual {p0, v7, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0a0073

    if-eq v2, v3, :cond_2

    const v3, 0x7f0a03a7

    if-eq v2, v3, :cond_1

    const v3, 0x7f0a0415

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 636
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 637
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {p0, v7, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 628
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 631
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onVideoStreamSelected()V
    .locals 6

    .line 451
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v0

    .line 453
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 454
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v5}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    .line 453
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    const/4 v2, 0x0

    .line 455
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareSelectedDownload()V
    .locals 9

    .line 771
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getNameEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a0073

    if-eq v0, v1, :cond_4

    const v2, 0x7f0a03a7

    if-eq v0, v2, :cond_1

    const v2, 0x7f0a0415

    if-ne v0, v2, :cond_0

    const v0, 0x7f12021d

    .line 788
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 790
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    .line 791
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v4

    if-eqz v3, :cond_6

    .line 793
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto/16 :goto_0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No stream selected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x7f12021c

    .line 798
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 800
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    .line 801
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v4

    if-eqz v3, :cond_2

    .line 803
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 806
    :cond_2
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v3, v6, :cond_3

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_6

    .line 809
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const v0, 0x7f12021b

    .line 775
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 776
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 777
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    .line 778
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-result-object v4

    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v4

    .line 779
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v3, v6, :cond_5

    .line 780
    const-string v3, "audio/ogg"

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "opus"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 783
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 816
    :cond_6
    :goto_0
    iget-boolean v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    const/4 v6, 0x1

    if-nez v3, :cond_9

    if-eqz v2, :cond_7

    .line 817
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->isDirect()Z

    move-result v3

    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v7}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v7

    if-eq v3, v7, :cond_7

    .line 818
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->isInvalidSafStorage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 824
    :cond_7
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    const v2, 0x7f120301

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 827
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 828
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V

    return-void

    .line 830
    :cond_8
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->launchDirectoryPicker(Landroidx/activity/result/ActivityResultLauncher;)V

    return-void

    .line 836
    :cond_9
    iget-boolean v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    if-eqz v3, :cond_c

    .line 838
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_2

    .line 842
    :cond_a
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 843
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 845
    :cond_b
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 847
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 850
    :goto_2
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 851
    invoke-static {v2, v3, v4, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DialogFragment"

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 850
    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 858
    :cond_c
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getFreeStorageSpace()J

    move-result-wide v7

    cmp-long v1, v7, v4

    if-gtz v1, :cond_e

    .line 860
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    const v1, 0x7f12014f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 867
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_d
    return-void

    .line 873
    :cond_e
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3, v4}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f12021f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 878
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private requestDownloadPickAudioFolderResult(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const v0, 0x7f12010b

    .line 480
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    .line 479
    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 520
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f1201e1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 529
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 530
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-static {p1}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 537
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 538
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 538
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    :try_start_0
    new-instance p2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 545
    :catch_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 525
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private requestDownloadPickVideoFolderResult(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const v0, 0x7f120111

    .line 485
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    .line 484
    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadSaveAsResult(Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 489
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f1201e1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 499
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 500
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/octet-stream"

    invoke-direct {p0, v2, v0, p1, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 506
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 505
    invoke-static {v0, v3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_3

    .line 508
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 513
    :cond_3
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-direct {p0, v2, p1, v1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 494
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private setRadioButtonsState(Z)V
    .locals 1

    .line 703
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 704
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 705
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setupAudioSpinner()V
    .locals 5

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 428
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 429
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 430
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 431
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 433
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v4}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v4

    if-le v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 432
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupAudioTrackSpinner()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private setupSubtitleSpinner()V
    .locals 2

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 465
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 466
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 467
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 468
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupVideoSpinner()V
    .locals 2

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 443
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 444
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 445
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 446
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->onVideoStreamSelected()V

    return-void
.end method

.method private showFailedDialog(I)V
    .locals 2

    .line 750
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201e1

    .line 751
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 752
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120332

    .line 753
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateSecondaryStreams()V
    .locals 8

    .line 251
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-result-object v0

    .line 252
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 253
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    .line 254
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-virtual {v3}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->resetInfo()V

    const/4 v3, 0x0

    .line 256
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 257
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 261
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 260
    invoke-static {v4, v5, v6}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getAudioStreamFor(Landroid/content/Context;Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 264
    new-instance v5, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    invoke-direct {v5, v0, v4}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    invoke-virtual {v1, v3, v5}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    goto :goto_1

    .line 265
    :cond_1
    sget-boolean v4, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 266
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    .line 267
    const-string v5, "DialogFragment"

    if-eqz v4, :cond_2

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No audio stream candidates for video format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    :cond_2
    const-string v4, "No audio stream candidates for unknown video format"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_4
    new-instance v2, Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V

    iput-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 277
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V

    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 555
    sget-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged() called with: group = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], checkedId = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const p1, 0x7f0a0073

    if-eq p2, p1, :cond_3

    const p1, 0x7f0a03a7

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a0415

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 566
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    goto :goto_0

    .line 569
    :cond_2
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    const/4 p1, 0x0

    goto :goto_1

    .line 563
    :cond_3
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    :goto_0
    const/4 p1, 0x1

    .line 574
    :goto_1
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 199
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    sget-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() called with: savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x30a

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 215
    invoke-static {v0}, Lorg/schabi/newpipe/util/ThemeHelper;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 216
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 218
    new-instance p1, Lorg/schabi/newpipe/util/AudioTrackAdapter;

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter;-><init>(Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;)V

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

    .line 219
    new-instance p1, Lorg/schabi/newpipe/util/StreamItemAdapter;

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 220
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->updateSecondaryStreams()V

    .line 222
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    const-class v2, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 284
    sget-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView() called with: inflater = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], container = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DialogFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const p3, 0x7f0d003a

    .line 289
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 361
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 362
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 368
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 582
    sget-boolean v0, Lorg/schabi/newpipe/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemSelected() called with: parent = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], view = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "], position = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], id = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "DialogFragment"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0074

    if-eq p1, p2, :cond_7

    const p2, 0x7f0a0076

    if-eq p1, p2, :cond_4

    const p2, 0x7f0a0319

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 590
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const p2, 0x7f0a03a7

    if-eq p1, p2, :cond_3

    const p2, 0x7f0a0415

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 592
    :cond_2
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 593
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->onVideoStreamSelected()V

    goto :goto_0

    .line 596
    :cond_3
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 599
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->onItemSelectedSetFileName()V

    return-void

    .line 602
    :cond_4
    iget p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-eq p1, p3, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 603
    :goto_1
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-eqz p1, :cond_6

    .line 605
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->updateSecondaryStreams()V

    .line 606
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->fetchStreamsSize()V

    :cond_6
    :goto_2
    return-void

    .line 610
    :cond_7
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 295
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 296
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 297
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 302
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {p2, v0}, Lorg/schabi/newpipe/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 304
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p2

    .line 303
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 306
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getAll()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->getSubtitleIndexBy(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 308
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 310
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 311
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 313
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->initToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 314
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupDownloadOptions()V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    const p2, 0x7f1200ce

    .line 318
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 319
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    new-instance p2, Lorg/schabi/newpipe/download/DownloadDialog$2;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/download/DownloadDialog$2;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 333
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->fetchStreamsSize()V

    return-void
.end method

.method protected setupDownloadOptions()V
    .locals 9

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 657
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioTrackSpinner()V

    .line 659
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 660
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v3}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 661
    :goto_1
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    invoke-virtual {v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 663
    :goto_2
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v7, 0x8

    :goto_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_5

    const/4 v6, 0x0

    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    const v6, 0x7f12021f

    .line 671
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f12021d

    .line 672
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 671
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_6

    .line 675
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 676
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 677
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    const v6, 0x7f12021b

    .line 679
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 680
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 681
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    return-void

    :cond_7
    if-eqz v4, :cond_8

    const v6, 0x7f12021c

    .line 683
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 684
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 687
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 688
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    return-void

    :cond_9
    if-eqz v3, :cond_a

    .line 690
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 691
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    return-void

    :cond_a
    if-eqz v4, :cond_b

    .line 693
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 694
    invoke-direct {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    return-void

    .line 696
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12030a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
