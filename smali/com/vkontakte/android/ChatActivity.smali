.class public Lcom/vkontakte/android/ChatActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;
.implements Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;,
        Lcom/vkontakte/android/ChatActivity$MessagesAdapter;,
        Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;
    }
.end annotation


# static fields
.field public static final EXTRA_ATTACHMENTS:Ljava/lang/String; = "attachments"

.field public static final EXTRA_FWD_MESSAGES:Ljava/lang/String; = "fwd"

.field public static final EXTRA_FWD_SENDERS:Ljava/lang/String; = "fwd_senders"

.field public static final EXTRA_PEER_ID:Ljava/lang/String; = "peerID"

.field public static final EXTRA_PHOTO:Ljava/lang/String; = "photo"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static activeUserID:I

.field public static lastUserID:I


# instance fields
.field private final AUDIO_RESULT:I

.field private final CAMERA_RESULT:I

.field private final DOCUMENT_RESULT:I

.field private final GALLERY_RESULT:I

.field private final LOCATION_RESULT:I

.field private final SEL_FRIEND_REQ:I

.field private final VIDEO_RESULT:I

.field private final VIEW_MSG_RESULT:I

.field private attachView:Lcom/vkontakte/android/ui/MultiAttachView;

.field private contentView:Lcom/vkontakte/android/ui/XLinearLayout;

.field private emptyTextView:Landroid/widget/TextView;

.field private fwdID:Ljava/lang/String;

.field private fwdName:Ljava/lang/String;

.field private fwdPhoto:Ljava/lang/String;

.field private fwdSender:Ljava/lang/String;

.field private headerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private isForeground:Z

.field private knownUserNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private knownUserPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastTypingRequest:J

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

.field private loadMoreProgress:Landroid/widget/ProgressBar;

.field private messages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field private msgQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private msgReceiver:Landroid/content/BroadcastReceiver;

.field private nMessages:I

.field private peerID:I

.field private progress:Landroid/widget/ProgressBar;

.field private selectMode:Z

.field private tempID:I

.field private tempPhotoURI:Landroid/net/Uri;

.field private timer:Ljava/util/Timer;

.field private typingTimer:Ljava/util/Timer;

.field private typingTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private typingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typingView:Landroid/widget/LinearLayout;

.field private viCount:I

.field private viStart:I

.field private writeBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 108
    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->CAMERA_RESULT:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->GALLERY_RESULT:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->VIEW_MSG_RESULT:I

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->LOCATION_RESULT:I

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->AUDIO_RESULT:I

    .line 84
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->VIDEO_RESULT:I

    .line 85
    const/4 v0, 0x7

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->DOCUMENT_RESULT:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->SEL_FRIEND_REQ:I

    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    .line 103
    iput v2, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    .line 104
    iput-boolean v2, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    .line 118
    iput-boolean v2, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 122
    new-instance v0, Lcom/vkontakte/android/ChatActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$1;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ChatActivity;I)V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->restartTypingTimer(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->loadHistoryPage()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->showResendDialog(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ChatActivity;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startSelectMode()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ChatActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ChatActivity;IZ)V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ChatActivity;->showLastSeen(IZ)V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->loadUsers(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->fwdSender:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ChatActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddPhotoDialog()V

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startLocationPicker()V

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startDocumentSelector()V

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->resendMessage(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ChatActivity;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    return v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    return v0
.end method

.method static synthetic access$41(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/vkontakte/android/ChatActivity;I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    return-void
.end method

.method static synthetic access$43(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$44(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/StateShadowButton2;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    return-object v0
.end method

.method static synthetic access$45(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$46(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/XLinearLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    return-object v0
.end method

.method static synthetic access$47(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1382
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$48(Lcom/vkontakte/android/ChatActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1269
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    return-void
.end method

.method static synthetic access$49(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->markAllAsRead()V

    return-void
.end method

.method static synthetic access$50(Lcom/vkontakte/android/ChatActivity;J)V
    .locals 0

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->showTyping(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->updateTyping()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->restartTypingTimer()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeKeyboard()V
    .locals 3

    .prologue
    .line 887
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 888
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 889
    return-void
.end method

.method private deselectAll()V
    .locals 3

    .prologue
    .line 1577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1581
    return-void

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1579
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/MessageView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/vkontakte/android/MessageView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/MessageView;->deselect()V

    .line 1577
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "attachments"    # [Ljava/lang/String;
    .param p3, "thumbs"    # [Ljava/lang/String;

    .prologue
    .line 1383
    sget-object v2, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1476
    :goto_0
    return-void

    .line 1387
    :cond_0
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11}, Lcom/vkontakte/android/Message;-><init>()V

    .line 1388
    .local v11, "m":Lcom/vkontakte/android/Message;
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/vkontakte/android/Message;->out:Z

    .line 1389
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v11, Lcom/vkontakte/android/Message;->sender:I

    .line 1390
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 1391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    iput v2, v11, Lcom/vkontakte/android/Message;->id:I

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v11, Lcom/vkontakte/android/Message;->time:I

    .line 1393
    if-eqz p2, :cond_1

    .line 1395
    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 1396
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v10, v2, :cond_7

    .line 1430
    .end local v10    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1431
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 1432
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 1433
    :cond_2
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    iget-object v3, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/MultiAttachView;->getLocation()Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1435
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget v3, v11, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->time:I

    sub-int v2, v3, v2

    const/16 v3, 0xe10

    if-le v2, v3, :cond_5

    .line 1436
    :cond_4
    new-instance v13, Lcom/vkontakte/android/Message;

    invoke-direct {v13}, Lcom/vkontakte/android/Message;-><init>()V

    .line 1437
    .local v13, "sm":Lcom/vkontakte/android/Message;
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 1438
    iget v2, v11, Lcom/vkontakte/android/Message;->time:I

    iput v2, v13, Lcom/vkontakte/android/Message;->time:I

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1441
    .end local v13    # "sm":Lcom/vkontakte/android/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1442
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1443
    .local v14, "vm":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v14, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14, v3}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->updateListAndScroll()V

    .line 1446
    new-instance v2, Lcom/vkontakte/android/api/MessagesSend;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/MultiAttachView;->getLocation()Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;[Ljava/lang/String;Lcom/vkontakte/android/GeoAttachment;)V

    .line 1447
    new-instance v3, Lcom/vkontakte/android/ChatActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/vkontakte/android/ChatActivity$28;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1475
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1395
    .end local v14    # "vm":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1397
    .restart local v10    # "i":I
    :cond_7
    const-string v2, "vk"

    aget-object v3, p2, v10

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    aget-object v2, p2, v10

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1399
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1400
    .local v12, "pp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string v3, "photo"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "ap":[Ljava/lang/String;
    const-string v2, "vk"

    aget-object v3, p2, v10

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v8, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz p3, :cond_8

    aget-object v3, p3, v10

    if-nez v3, :cond_b

    :cond_8
    const/4 v3, 0x1

    aget-object v3, v12, v3

    :goto_3
    array-length v4, v12

    const/4 v5, 0x2

    if-le v4, v5, :cond_c

    const/4 v4, 0x2

    aget-object v4, v12, v4

    :goto_4
    const/4 v5, 0x0

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    aput-object v2, v8, v10

    .line 1402
    iget-object v3, v11, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    if-eqz p3, :cond_9

    aget-object v2, p3, v10

    if-nez v2, :cond_d

    :cond_9
    const/4 v2, 0x1

    aget-object v2, v12, v2

    :goto_5
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1403
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1427
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_a
    :goto_6
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, p2, v10

    .line 1396
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1401
    .restart local v9    # "ap":[Ljava/lang/String;
    .restart local v12    # "pp":[Ljava/lang/String;
    :cond_b
    aget-object v3, p3, v10

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    aget-object v4, v12, v4

    goto :goto_4

    .line 1402
    :cond_d
    aget-object v2, p3, v10

    goto :goto_5

    .line 1404
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_e
    aget-object v2, p2, v10

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1405
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1406
    iget-object v2, v11, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    aget-object v3, p2, v10

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1407
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1408
    .restart local v12    # "pp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string v3, "video"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1409
    .restart local v9    # "ap":[Ljava/lang/String;
    iget-object v8, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    aput-object v2, v8, v10

    goto :goto_6

    .line 1410
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_f
    aget-object v2, p2, v10

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1412
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1413
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1414
    .restart local v12    # "pp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string v3, "audio"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1415
    .restart local v9    # "ap":[Ljava/lang/String;
    iget-object v8, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    new-instance v2, Lcom/vkontakte/android/AudioAttachment;

    const/4 v3, 0x2

    aget-object v3, v12, v3

    const/4 v4, 0x1

    aget-object v4, v12, v4

    const/4 v5, 0x3

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/AudioAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    aput-object v2, v8, v10

    .line 1416
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v2, v2, v10

    check-cast v2, Lcom/vkontakte/android/AudioAttachment;

    const/4 v3, 0x4

    aget-object v3, v12, v3

    iput-object v3, v2, Lcom/vkontakte/android/AudioAttachment;->url:Ljava/lang/String;

    goto/16 :goto_6

    .line 1417
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_10
    aget-object v2, p2, v10

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1418
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1419
    iget-object v3, v11, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    aget-object v2, p2, v10

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-object v2, v11, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    aget-object v3, p2, v10

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1421
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1422
    .restart local v12    # "pp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string v3, "doc"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1423
    .restart local v9    # "ap":[Ljava/lang/String;
    iget-object v15, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    new-instance v2, Lcom/vkontakte/android/DocumentAttachment;

    const/4 v3, 0x1

    aget-object v3, v12, v3

    const/4 v4, 0x5

    aget-object v4, v12, v4

    const/4 v5, 0x4

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v12, v6

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    aput-object v2, v15, v10

    goto/16 :goto_6

    .line 1419
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_11
    aget-object v2, p2, v10

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v2, v2, v4

    goto :goto_7

    .line 1424
    :cond_12
    aget-object v2, p2, v10

    const-string v3, "fwd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1425
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    aget-object v5, p2, v10

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    goto/16 :goto_6
.end method

.method private loadHistory()V
    .locals 4

    .prologue
    .line 1080
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    iget v2, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 1081
    new-instance v1, Lcom/vkontakte/android/ChatActivity$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$24;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1176
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1177
    return-void
.end method

.method private loadHistoryPage()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 1076
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->loadHistory()V

    .line 1077
    return-void
.end method

.method private loadUsers(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "uids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/vkontakte/android/api/UsersGet;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/vkontakte/android/api/UsersGet;-><init>(Ljava/util/Vector;[Ljava/lang/String;)V

    .line 1181
    new-instance v0, Lcom/vkontakte/android/ChatActivity$25;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$25;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersGet;->setCallback(Lcom/vkontakte/android/api/UsersGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1204
    return-void

    .line 1180
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method private markAllAsRead()V
    .locals 4

    .prologue
    .line 1503
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1504
    .local v1, "mids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1508
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1509
    new-instance v2, Lcom/vkontakte/android/api/MessagesMarkAsRead;

    invoke-direct {v2, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;-><init>(Ljava/util/Vector;)V

    .line 1510
    new-instance v3, Lcom/vkontakte/android/ChatActivity$32;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/ChatActivity$32;-><init>(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1554
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1556
    :cond_1
    return-void

    .line 1504
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1505
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 1506
    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private postScrollDown(Z)V
    .locals 4
    .param p1, "smooth"    # Z

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$31;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ChatActivity$31;-><init>(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 1499
    const-wide/16 v2, 0x64

    .line 1496
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1500
    return-void
.end method

.method private resendMessage(Lcom/vkontakte/android/Message;)V
    .locals 7
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v6, 0x0

    .line 937
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 938
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 939
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 940
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/String;

    .line 941
    .local v1, "atts":[Ljava/lang/String;
    iget-object v5, p1, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 942
    .local v4, "thumbs":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 956
    iget-object v5, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v4}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 960
    .end local v1    # "atts":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "thumbs":[Ljava/lang/String;
    :goto_1
    return-void

    .line 943
    .restart local v1    # "atts":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "thumbs":[Ljava/lang/String;
    :cond_0
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_2

    .line 944
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "photo"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    iget v5, v5, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    iget v5, v5, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 945
    iget-object v5, p1, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v3

    .line 942
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 946
    :cond_2
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_3

    .line 947
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "video"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    iget v5, v5, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    iget v5, v5, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_2

    .line 948
    :cond_3
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_4

    .line 949
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v2, v5, v3

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    .line 950
    .local v2, "da":Lcom/vkontakte/android/DocumentAttachment;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doc"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/vkontakte/android/DocumentAttachment;->did:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "123"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_2

    .line 951
    .end local v2    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_4
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v5, :cond_1

    .line 952
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v0, v5, v3

    check-cast v0, Lcom/vkontakte/android/AudioAttachment;

    .line 953
    .local v0, "a":Lcom/vkontakte/android/AudioAttachment;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "audio"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vkontakte/android/AudioAttachment;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_2

    .line 958
    .end local v0    # "a":Lcom/vkontakte/android/AudioAttachment;
    .end local v1    # "atts":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "thumbs":[Ljava/lang/String;
    :cond_5
    iget-object v5, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v6}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private restartTypingTimer()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 770
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    .line 771
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$19;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    .line 778
    const-wide/16 v2, 0x1b58

    .line 771
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 779
    return-void
.end method

.method private restartTypingTimer(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 782
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 783
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 784
    .local v0, "typingTimer":Ljava/util/Timer;
    new-instance v1, Lcom/vkontakte/android/ChatActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ChatActivity$20;-><init>(Lcom/vkontakte/android/ChatActivity;I)V

    .line 792
    const-wide/16 v2, 0x1b58

    .line 784
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 793
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)Z
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1227
    const/4 v7, 0x0

    .line 1228
    .local v7, "numUploadable":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    if-lt v6, v3, :cond_1

    .line 1231
    if-lez v7, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 1233
    .local v1, "atts":[Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 1234
    .local v2, "thumbs":[Ljava/lang/String;
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v4, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1236
    const-string v0, "..."

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1237
    const v0, 0x7f090103

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1238
    new-instance v0, Lcom/vkontakte/android/ChatActivity$26;

    invoke-direct {v0, p0, v4, p1}, Lcom/vkontakte/android/ChatActivity$26;-><init>(Lcom/vkontakte/android/ChatActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1251
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    move-object v0, p0

    move-object v3, p1

    .line 1252
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    move v5, v8

    .line 1266
    .end local v1    # "atts":[Ljava/lang/String;
    .end local v2    # "thumbs":[Ljava/lang/String;
    .end local v4    # "pdlg":Landroid/app/ProgressDialog;
    :cond_0
    :goto_1
    return v5

    .line 1229
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "A"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 1228
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1254
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move-object v1, v0

    .line 1255
    check-cast v1, [Ljava/lang/String;

    .line 1256
    .restart local v1    # "atts":[Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    if-lez v3, :cond_5

    .line 1257
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 1258
    const/4 v6, 0x0

    :goto_2
    array-length v3, v1

    if-lt v6, v3, :cond_6

    .line 1262
    :cond_5
    invoke-direct {p0, p1, v1, v0}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->reset()V

    move v5, v8

    .line 1264
    goto :goto_1

    .line 1259
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1258
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1776
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    .line 1763
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;-><init>(I)V

    .line 1764
    new-instance v1, Lcom/vkontakte/android/ChatActivity$33;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$33;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;->setCallback(Lcom/vkontakte/android/api/MessagesSetActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private showAddAttachmentDialog()V
    .locals 3

    .prologue
    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 818
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a001f

    :goto_0
    new-instance v2, Lcom/vkontakte/android/ChatActivity$21;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ChatActivity$21;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 843
    return-void

    .line 818
    :cond_0
    const v0, 0x7f0a001e

    goto :goto_0
.end method

.method private showAddPhotoDialog()V
    .locals 5

    .prologue
    .line 846
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.camera"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 848
    .local v0, "hasCam":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 851
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 852
    new-instance v3, Lcom/vkontakte/android/ChatActivity$22;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ChatActivity$22;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 861
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 865
    .end local v1    # "items":[Ljava/lang/String;
    :goto_1
    return-void

    .line 846
    .end local v0    # "hasCam":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 863
    .restart local v0    # "hasCam":Z
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->startGallery()V

    goto :goto_1
.end method

.method private showLastSeen(IZ)V
    .locals 9
    .param p1, "time"    # I
    .param p2, "f"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 797
    if-nez p1, :cond_0

    .line 810
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 801
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 802
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 804
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 807
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 808
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 809
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_1

    const v2, 0x7f0901a0

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f09019f

    goto :goto_1
.end method

.method private showResendDialog(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 922
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 923
    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 924
    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 925
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/ChatActivity$23;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/ChatActivity$23;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 931
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 932
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 934
    return-void
.end method

.method private showTyping(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x12c

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 709
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 710
    .local v3, "visible":Z
    :goto_0
    if-ne v3, p1, :cond_1

    .line 739
    :goto_1
    return-void

    .end local v3    # "visible":Z
    :cond_0
    move v3, v5

    .line 709
    goto :goto_0

    .line 711
    .restart local v3    # "visible":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 712
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 715
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 716
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 717
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 718
    new-instance v5, Lcom/vkontakte/android/ChatActivity$17;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ChatActivity$17;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 723
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 724
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 725
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 726
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 727
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 728
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 729
    .local v2, "tv":Landroid/widget/TextView;
    const v4, -0x796957

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 732
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 733
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 734
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 735
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ChatActivity$18;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private startAudioSelector()V
    .locals 3

    .prologue
    .line 868
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v1, "oid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 872
    return-void
.end method

.method private startDocumentSelector()V
    .locals 3

    .prologue
    .line 881
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 884
    return-void
.end method

.method private startLocationPicker()V
    .locals 2

    .prologue
    .line 917
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 918
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 919
    return-void
.end method

.method private startSelectMode()V
    .locals 4

    .prologue
    const v3, 0x7f06019e

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 689
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 690
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 691
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 692
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 693
    return-void
.end method

.method private startVideoSelector()V
    .locals 3

    .prologue
    .line 875
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 878
    return-void
.end method

.method private stopSelectMode()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x0

    .line 696
    iput-boolean v4, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 697
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 699
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 700
    const v2, 0x7f06019e

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 701
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    new-instance v3, Lcom/vkontakte/android/ChatActivity$16;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ChatActivity$16;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v2, v3, v5, v6}, Lcom/vkontakte/android/ui/XLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 705
    return-void

    .line 697
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .local v1, "msg":Lcom/vkontakte/android/Message;
    iput-boolean v4, v1, Lcom/vkontakte/android/Message;->selected:Z

    goto :goto_0
.end method

.method private updateTyping()V
    .locals 13

    .prologue
    const v9, 0x7f090173

    const v12, 0x7f09013c

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 742
    iget v4, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v7, 0x77359400

    if-ge v4, v7, :cond_1

    .line 743
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 744
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ChatActivity;->showTyping(Z)V

    .line 748
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 749
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 750
    .restart local v2    # "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    move v4, v6

    .line 747
    goto :goto_1

    .line 751
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 752
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090174

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 755
    :cond_4
    const-string v1, ""

    .line 756
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 757
    .local v0, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 763
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090174

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 757
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 758
    .local v3, "uid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    add-int/lit8 v4, v0, 0x2

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v4, v8, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 760
    :cond_7
    add-int/lit8 v4, v0, 0x1

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v4, v8, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V
    .locals 12
    .param p1, "atts"    # [Ljava/lang/String;
    .param p2, "thumbs"    # [Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "pdlg"    # Landroid/app/ProgressDialog;
    .param p5, "i"    # I

    .prologue
    .line 1270
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNext()Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, "file":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1272
    .local v11, "numUploadable":I
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v2

    if-lt v9, v2, :cond_0

    .line 1275
    const-string v2, "A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1276
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\|"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    aput-object v2, p1, p5

    .line 1277
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 1278
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1279
    invoke-direct {p0, p3, p1, p2}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1280
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->reset()V

    .line 1380
    .end local v3    # "file":Ljava/lang/String;
    :goto_1
    return-void

    .line 1273
    .restart local v3    # "file":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 1272
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1282
    :cond_2
    add-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    goto :goto_1

    .line 1286
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v10, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1287
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v2, "type"

    const/4 v4, 0x5

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1289
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/ChatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1290
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090104

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v8, p5, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1291
    move/from16 v7, p5

    .line 1292
    .local v7, "_i":I
    new-instance v1, Lcom/vkontakte/android/ChatActivity$27;

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/ChatActivity$27;-><init>(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1379
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/XLinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 963
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    .line 964
    const/16 v12, 0xb

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 965
    const-string v12, "mid"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 966
    .local v7, "mid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 988
    .end local v7    # "mid":I
    :cond_1
    :goto_0
    const/16 v12, 0xc

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 989
    const-string v12, "fwd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, "m":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 1071
    .end local v6    # "m":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 966
    .restart local v7    # "mid":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Message;

    .line 967
    .local v8, "msg":Lcom/vkontakte/android/Message;
    iget v13, v8, Lcom/vkontakte/android/Message;->id:I

    if-ne v13, v7, :cond_0

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 972
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v12, :cond_5

    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    if-lez v12, :cond_5

    .line 973
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    new-array v2, v12, [Ljava/lang/String;

    .line 974
    .local v2, "atts":[Ljava/lang/String;
    iget-object v12, v8, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v9, v12, [Ljava/lang/String;

    .line 975
    .local v9, "thumbs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    if-lt v4, v12, :cond_4

    .line 979
    iget-object v12, v8, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v9}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "photo"

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v12, v12, v4

    check-cast v12, Lcom/vkontakte/android/PhotoAttachment;

    iget v12, v12, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v12, v12, v4

    check-cast v12, Lcom/vkontakte/android/PhotoAttachment;

    iget v12, v12, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 977
    iget-object v12, v8, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v4

    .line 975
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 981
    .end local v2    # "atts":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "thumbs":[Ljava/lang/String;
    :cond_5
    iget-object v12, v8, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    .end local v7    # "mid":I
    .end local v8    # "msg":Lcom/vkontakte/android/Message;
    .restart local v6    # "m":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "fwd"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090067

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901bc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1005
    .end local v6    # "m":Ljava/lang/String;
    :cond_7
    const/16 v12, 0x8

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 1006
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 1007
    const-string v12, "profile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    .line 1008
    .local v10, "u":Lcom/vkontakte/android/UserProfile;
    iget v12, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "peerID"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_10

    .line 1009
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    .line 1010
    .restart local v6    # "m":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "fwd"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090067

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901bc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1032
    .end local v6    # "m":Ljava/lang/String;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    .line 1036
    .end local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 1037
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 1039
    :cond_9
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 1040
    :cond_a
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const-string v12, "point"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v13, v12}, Lcom/vkontakte/android/ui/MultiAttachView;->addLocation(Lcom/vkontakte/android/GeoAttachment;)V

    .line 1042
    :cond_b
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_c

    .line 1043
    const-string v12, "audio"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 1044
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "audio"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    const-string v15, "|"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    const-string v15, "|"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1048
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_c
    const/4 v12, 0x6

    move/from16 v0, p1

    if-ne v0, v12, :cond_d

    .line 1049
    const-string v12, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/api/VideoFile;

    .line 1050
    .local v11, "vf":Lcom/vkontakte/android/api/VideoFile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "video"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v11, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1054
    .end local v11    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_d
    const/4 v12, 0x7

    move/from16 v0, p1

    if-ne v0, v12, :cond_e

    .line 1055
    const-string v12, "document"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/Document;

    .line 1056
    .local v3, "doc":Lcom/vkontakte/android/api/Document;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "doc"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v3, Lcom/vkontakte/android/api/Document;->oid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/vkontakte/android/api/Document;->did:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    const-string v15, "|"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/vkontakte/android/api/Document;->size:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1061
    .end local v3    # "doc":Lcom/vkontakte/android/api/Document;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-gtz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1063
    :cond_f
    const v12, 0x7f060051

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f02010c

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1022
    .restart local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_10
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1023
    .local v5, "intent1":Landroid/content/Intent;
    const-string v12, "peerID"

    iget v13, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const-string v12, "title"

    iget-object v13, v10, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    const-string v12, "photo"

    iget-object v13, v10, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const-string v12, "fwd"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    const-string v12, "fwd_senders"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ChatActivity;->fwdSender:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "name"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->fwdSender:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->fwdName:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photo"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->fwdSender:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ChatActivity;->fwdPhoto:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1068
    .end local v5    # "intent1":Landroid/content/Intent;
    .end local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_11
    const v12, 0x7f060051

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f02010e

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onAllAttachmentsRemoved()V
    .locals 2

    .prologue
    .line 1751
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1752
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1754
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 38
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "peerID"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ChatActivity;->peerID:I

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "title"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v34

    const-string v35, "title"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v34

    const-string v35, "photo"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 204
    .local v24, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const-string v34, "username"

    const/16 v35, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    move-object/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const-string v34, "userphoto"

    const/16 v35, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v32, Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/XLinearLayout;->setOrientation(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 211
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    .line 212
    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .line 213
    .local v21, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v21

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 214
    new-instance v32, Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/StateShadowButton2;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v32, v0

    const v33, 0x7f090064

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/StateShadowButton2;->setText(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v32, Landroid/widget/ProgressBar;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0201f9

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v23, "pparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v32, 0x11

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/ChatActivity$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$2;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/StateShadowButton2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v32, Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 234
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/high16 v35, 0x40a00000    # 5.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    const/high16 v36, 0x40a00000    # 5.0f

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v36

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v28, "tiv1":Landroid/widget/ImageView;
    const v32, 0x7f02018f

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    sget-object v32, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 240
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v33, 0x41400000    # 12.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/16 v34, -0x2

    invoke-direct/range {v32 .. v34}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v29, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 243
    .local v29, "tiv2":Landroid/widget/ImageView;
    const v32, 0x7f02018f

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    sget-object v32, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 246
    .local v18, "matrix":Landroid/graphics/Matrix;
    const/high16 v32, -0x3ec00000    # -12.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 247
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 248
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v33, 0x41a00000    # 20.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/16 v34, -0x2

    invoke-direct/range {v32 .. v34}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const v32, -0x19130e

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v30, "ttv":Landroid/widget/TextView;
    const v32, -0x796957

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    const/high16 v32, 0x41600000    # 14.0f

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    const v32, 0x33d6bf95    # 1.0E-7f

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    const v35, -0xf0b09

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f090173

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v36

    const-string v37, "title"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    aput-object v36, v34, v35

    invoke-virtual/range {v32 .. v34}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/16 v33, 0x0

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 258
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, -0x1

    const/16 v34, -0x2

    invoke-direct/range {v32 .. v34}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    new-instance v32, Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const v33, -0x19130e

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const v33, -0x19130e

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Landroid/graphics/drawable/ColorDrawable;

    const/16 v34, 0x0

    invoke-direct/range {v33 .. v34}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setStackFromBottom(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setTranscriptMode(I)V

    .line 273
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v15, "llparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v32 .. v35}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v32 .. v35}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$MessagesAdapter;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/ChatActivity$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$3;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/ChatActivity$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$4;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 346
    const v32, 0x7f03004f

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x2

    invoke-direct/range {v33 .. v35}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/MultiAttachView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f060054

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/ChatActivity$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$5;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f060053

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/EditText;

    new-instance v33, Lcom/vkontakte/android/ChatActivity$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$6;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f060053

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/EditText;

    new-instance v33, Lcom/vkontakte/android/ChatActivity$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$7;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 393
    sget-object v32, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/ChatCache;->get(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v19

    .line 395
    .local v19, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v32

    if-lez v32, :cond_1

    .line 396
    const/16 v25, 0x0

    .local v25, "prevtime":I
    const/4 v13, 0x0

    .line 397
    .local v13, "idx":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_a

    .line 412
    .end local v13    # "idx":I
    .end local v25    # "prevtime":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->loadHistory()V

    .line 422
    .end local v19    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_2
    :goto_1
    const v32, 0x7f03004b

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ChatActivity;->customTitleResID:I

    .line 424
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 425
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v32, "com.vkontakte.android.NEW_MESSAGE"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v32, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v32, "com.vkontakte.android.MESSAGE_DELETED"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v32, "com.vkontakte.android.USER_PRESENCE"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v32, "com.vkontakte.android.TYPING"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v32, v0

    const-string v33, "com.vkontakte.android.permission.ACCESS_DATA"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/vkontakte/android/ChatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 433
    new-instance v32, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct/range {v32 .. v32}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 437
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 438
    .local v11, "frame":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 440
    new-instance v32, Landroid/widget/ProgressBar;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0201f9

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 443
    .local v22, "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v32, 0x11

    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v32

    if-lez v32, :cond_e

    const/16 v32, 0x8

    :goto_2
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 448
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const v33, -0x948167

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const v33, 0x322bcc77    # 1.0E-8f

    const/16 v34, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    const v36, -0xc0907

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const v33, 0x7f09006b

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const/high16 v33, 0x41900000    # 18.0f

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v9, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 457
    .local v9, "etparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v32, 0x11

    move/from16 v0, v32

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vkontakte/android/ChatActivity;->setContentView(Landroid/view/View;)V

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    if-lez v32, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 464
    const v32, 0x7f06019d

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 465
    .local v14, "iv":Landroid/widget/ImageView;
    new-instance v32, Ljava/lang/Thread;

    new-instance v33, Lcom/vkontakte/android/ChatActivity$8;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/vkontakte/android/ChatActivity$8;-><init>(Lcom/vkontakte/android/ChatActivity;Landroid/widget/ImageView;)V

    invoke-direct/range {v32 .. v33}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->start()V

    .line 473
    const v32, 0x7f06019c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/ChatActivity$9;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$9;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .end local v14    # "iv":Landroid/widget/ImageView;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3

    .line 485
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 486
    .local v7, "btnMembers":Landroid/widget/ImageView;
    const v32, 0x7f0200d2

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 488
    .local v6, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x10

    move/from16 v0, v32

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 489
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 490
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v32, Lcom/vkontakte/android/ChatActivity$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$10;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    const v32, 0x7f06019c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 505
    .end local v6    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "btnMembers":Landroid/widget/ImageView;
    :cond_3
    const v32, 0x7f060051

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    const v33, 0x7f02010e

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    const v32, 0x7f060051

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/ChatActivity$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$11;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v32, v0

    const v33, -0xe5e5e6

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/XLinearLayout;->setBackgroundColor(I)V

    .line 518
    const/16 v20, 0x0

    .line 519
    .local v20, "online":Z
    sget-object v32, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v32, :cond_4

    new-instance v32, Ljava/util/Vector;

    invoke-direct/range {v32 .. v32}, Ljava/util/Vector;-><init>()V

    sput-object v32, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 521
    :cond_4
    :try_start_0
    sget-object v32, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v33

    if-nez v33, :cond_10

    .line 528
    :goto_4
    if-eqz v20, :cond_6

    .line 529
    const v32, 0x7f060197

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ExTextView;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v34

    const-string v35, "title"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, " <img src=\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const v34, 0x7f0200d6

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\'/>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 532
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    if-lez v32, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v32, v0

    const v33, 0x77359400

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_7

    if-nez v20, :cond_7

    .line 533
    new-instance v32, Lcom/vkontakte/android/api/MessagesGetLastActivity;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lcom/vkontakte/android/api/MessagesGetLastActivity;-><init>(I)V

    .line 534
    new-instance v33, Lcom/vkontakte/android/ChatActivity$12;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$12;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v32

    .line 546
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 549
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "fwd"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "fwd"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 554
    .local v17, "m":Ljava/lang/String;
    const/4 v12, 0x0

    .line 558
    .local v12, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "fwd"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090067

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0901bc

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 560
    add-int/lit8 v12, v12, 0x1

    .line 564
    .end local v12    # "i":I
    .end local v17    # "m":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "attachments"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "attachments"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 566
    .local v5, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 567
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_11

    .line 574
    .end local v5    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    new-instance v8, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09001c

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v8, v0, v1, v2}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 575
    .local v8, "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v32, 0x428c0000    # 70.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/16 v33, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 576
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v32

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 577
    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 578
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    invoke-static {v8}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 580
    const v32, 0x7f06019e

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 581
    new-instance v32, Lcom/vkontakte/android/ChatActivity$13;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$13;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    const v32, 0x7f06019f

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/ChatActivity$14;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$14;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    const v32, 0x7f0601a0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/ChatActivity$15;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ChatActivity$15;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    return-void

    .line 397
    .end local v8    # "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    .end local v9    # "etparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "frame":Landroid/widget/FrameLayout;
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "online":Z
    .end local v22    # "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v13    # "idx":I
    .restart local v19    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    .restart local v25    # "prevtime":I
    :cond_a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/Message;

    .line 399
    .local v17, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v33, v0

    sub-int v33, v33, v25

    const/16 v34, 0xe10

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    .line 400
    new-instance v27, Lcom/vkontakte/android/Message;

    invoke-direct/range {v27 .. v27}, Lcom/vkontakte/android/Message;-><init>()V

    .line 401
    .local v27, "sm":Lcom/vkontakte/android/Message;
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 402
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Lcom/vkontakte/android/Message;->time:I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 405
    add-int/lit8 v13, v13, 0x1

    .line 407
    .end local v27    # "sm":Lcom/vkontakte/android/Message;
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v25, v0

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 409
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 414
    .end local v13    # "idx":I
    .end local v17    # "m":Lcom/vkontakte/android/Message;
    .end local v19    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    .end local v25    # "prevtime":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move-object/from16 v33, v0

    sget-object v32, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Collection;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v33, v0

    sget-object v32, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    sget-object v32, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-nez v32, :cond_d

    const/16 v32, 0x8

    :goto_6
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 416
    sget-object v32, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    move-object/from16 v33, v0

    sget-object v32, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    move-object/from16 v33, v0

    sget-object v32, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 415
    :cond_d
    const/16 v32, 0x0

    goto :goto_6

    .line 445
    .restart local v10    # "filter":Landroid/content/IntentFilter;
    .restart local v11    # "frame":Landroid/widget/FrameLayout;
    .restart local v22    # "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 482
    .restart local v9    # "etparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    const v32, 0x7f06019c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 521
    .restart local v20    # "online":Z
    :cond_10
    :try_start_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/vkontakte/android/UserProfile;

    .line 522
    .local v31, "up":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 523
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/vkontakte/android/UserProfile;->online:Z

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    goto/16 :goto_4

    .line 567
    .end local v31    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 568
    .local v26, "s":Ljava/lang/String;
    const-string v33, "A"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 569
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 527
    .end local v5    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "s":Ljava/lang/String;
    :catch_0
    move-exception v32

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1207
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 1208
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1209
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    .line 1210
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    .line 1211
    :cond_0
    return-void
.end method

.method public onKeyboardStateChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 1758
    return-void

    .line 1757
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1214
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 1216
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    .line 1217
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1220
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 1222
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->markAllAsRead()V

    .line 1223
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    .line 1224
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1560
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    if-ne v0, p3, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1562
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    .line 1563
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1564
    iput p3, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    .line 1565
    iput p2, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1570
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 1572
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->deselectAll()V

    .line 1574
    :cond_0
    return-void
.end method

.method public onShowAddAttach()V
    .locals 0

    .prologue
    .line 1745
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddAttachmentDialog()V

    .line 1746
    return-void
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 893
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "tmp"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ChatActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 903
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v2

    .line 905
    .local v2, "x":Ljava/lang/Exception;
    const v3, 0x7f090052

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 911
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 910
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 912
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 914
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 1479
    new-instance v0, Lcom/vkontakte/android/ChatActivity$29;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$29;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1484
    return-void
.end method

.method public updateListAndScroll()V
    .locals 1

    .prologue
    .line 1487
    new-instance v0, Lcom/vkontakte/android/ChatActivity$30;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$30;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1493
    return-void
.end method
